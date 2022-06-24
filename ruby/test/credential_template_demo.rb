# frozen_string_literal: true

require 'trinsic_services'
require 'services/account_service'
require 'services/credential_service'
require 'services/template_service'
require 'json'
require 'securerandom'

# rubocop:disable Metrics/MethodLength Metrics/AbcSize Metrics/CyclomaticComplexity
def credential_template_demo_run
  trinsic = Trinsic::TrinsicService.new(Trinsic.trinsic_server)
  account = trinsic.account_service.login_anonymous

  trinsic.auth_token = account

  # create example template
  template_request = Trinsic::Template::CreateCredentialTemplateRequest.new(
    name: "My Example Credential: #{SecureRandom.uuid}", allow_additional_fields: false
  )
  template_request.fields['firstName'] = Trinsic::Template::TemplateField.new(description: 'Given name')
  template_request.fields['lastName'] = Trinsic::Template::TemplateField.new
  template_request.fields['age'] =
    Trinsic::Template::TemplateField.new(type: Trinsic::Template::FieldType::NUMBER, optional: true)
  template = trinsic.template_service.create(template_request)

  raise 'template should not be nil' if template.nil?
  raise 'template data should not be nil' if template.data.nil?
  raise 'template data id should not be nil' if template.data.id.nil?
  raise 'template data schema uri should not be nil' if template.data.schema_uri.nil?

  # issue credential from this template
  values = JSON.generate({ firstName: 'Jane', lastName: 'Doe', age: 42 })
  credential_json = trinsic.credential_service.issue_from_template(Trinsic::Credentials::IssueFromTemplateRequest.new(
                                                             template_id: template.data.id, values_json: values
                                                           ))
  raise 'credential json document should not be nil' if credential_json.document_json.nil?

  json_document = JSON.parse(credential_json.document_json)

  raise 'json document has `id` key' unless json_document.key?('id')
  raise 'json document has `credentialSubject` key' unless json_document.key?('credentialSubject')
end
# rubocop:enable Metrics/MethodLength

credential_template_demo_run
