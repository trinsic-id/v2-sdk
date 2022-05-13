require 'trinsic_services'
require 'services/account_service'
require 'services/credential_service'
require 'services/credential_template_service'
require 'json'
require 'securerandom'

def credential_template_demo_run
  account_service = Trinsic::AccountService.new(Trinsic::trinsic_server)
  account = account_service.sign_in
  credential_service = Trinsic::CredentialService.new(Trinsic::trinsic_server(account))
  template_service = Trinsic::CredentialTemplateService.new(Trinsic::trinsic_server(account))

  # create example template
  template_request = Trinsic::Template_V1::CreateCredentialTemplateRequest.new(:name => "My Example Credential: #{SecureRandom.uuid}", :allow_additional_fields => false)
  template_request.fields['firstName'] = Trinsic::Template_V1::TemplateField.new(:description => "Given name")
  template_request.fields['lastName'] = Trinsic::Template_V1::TemplateField.new
  template_request.fields['age'] = Trinsic::Template_V1::TemplateField.new(:type => Trinsic::Template_V1::FieldType::NUMBER, :optional => true)
  template = template_service.create(template_request)

  raise "template should not be nil" if template.nil?
  raise "template data should not be nil" if template.data.nil?
  raise "template data id should not be nil" if template.data.id.nil?
  raise "template data schema uri should not be nil" if template.data.schema_uri.nil?

  # issue credential from this template
  values = JSON.generate({ 'firstName': 'Jane', 'lastName': 'Doe', 'age': 42 })
  credential_json = credential_service.issue_from_template(Trinsic::Credentials_V1::IssueFromTemplateRequest.new(:template_id=>template.data.id, :values_json=>values))
  raise "credential json document should not be nil" if credential_json.document_json.nil?

  json_document = JSON.parse(credential_json.document_json)

  raise "json document has `id` key" unless json_document.key?('id')
  raise "json document has `credentialSubject` key" unless json_document.key?('credentialSubject')
end

credential_template_demo_run