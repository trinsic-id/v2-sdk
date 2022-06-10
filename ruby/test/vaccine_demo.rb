# frozen_string_literal: true

require 'trinsic_services'
require 'services/service_base'
require 'services/account_service'
require 'services/provider_service'
require 'services/credential_service'
require 'services/template_service'
require 'services/wallet_service'
require 'json'

# rubocop:disable Metrics/MethodLength
def do_template(template_service)
  # createTemplate() {
  request = Trinsic::Template_V1::CreateCredentialTemplateRequest.new(name: 'VaccinationCertificate',
                                                                      allow_additional_fields: false)
  request.fields['firstName'] = Trinsic::Template_V1::TemplateField.new(description: 'First name of vaccine recipient')
  request.fields['lastName'] = Trinsic::Template_V1::TemplateField.new(description: 'Last name of vaccine recipient')
  request.fields['batchNumber'] =
    Trinsic::Template_V1::TemplateField.new(description: 'Batch number of vaccine',
                                            type: Trinsic::Template_V1::FieldType::STRING)
  request.fields['countryOfVaccination'] =
    Trinsic::Template_V1::TemplateField.new(description: 'Country in which the subject was vaccinated')

  template = template_service.create(request)
  template_id = template.data.id
  # }

  raise 'template should not be nil' if template.nil?
  raise 'template data should not be nil' if template.data.nil?
  raise 'template data id should not be nil' if template.data.id.nil?
  raise 'template data schema uri should not be nil' if template.data.schema_uri.nil?

  template.data
end

def vaccine_demo_run
  config = Trinsic.trinsic_server

  account_service = Trinsic::AccountService.new(config)
  provider_service = Trinsic::ProviderService.new(config)

  # createEcosystem() {
  ecosystem = provider_service.create_ecosystem
  ecosystem_id = ecosystem.ecosystem.id
  # }

  # Set service default ecosystem
  provider_service.default_ecosystem = ecosystem_id
  account_service.default_ecosystem = ecosystem_id
  config.default_ecosystem = ecosystem_id

  wallet_service = Trinsic::WalletService.new(config)
  credential_service = Trinsic::CredentialService.new(config)
  template_service = Trinsic::TemplateService.new(config)

  # setupActors() {
  # Create an account for each participant in the scenario
  allison = account_service.sign_in
  clinic = account_service.sign_in
  airline = account_service.sign_in
  # }

  account_service.auth_token = clinic
  info = account_service.info
  puts("account info #{info}")

  # Create a template
  template_service.auth_token = clinic
  template = do_template(template_service)

  # Create template values

  # issueCredential() {
  # Prepares values for credential
  values = JSON.generate({ firstName: 'Allison', lastName: 'Allisonne', batchNumber: '123454321',
                           countryOfVaccination: 'US' })

  # Issue credential
  issue_response = credential_service.issue_from_template(Trinsic::Credentials_V1::IssueFromTemplateRequest.new(
                                                            template_id: template.id, values_json: values
                                                          ))
  credential = issue_response.document_json
  # }

  puts("Credential: #{credential}")

  # rubocop:disable Lint/RescueException
  begin
    # sendCredential() {
    send_response = credential_service.send(Trinsic::Credentials_V1::SendRequest.new(document_json: credential,
                                                                                     email: 'example@trinsic.id'))
    # }
    puts(send_response)
  rescue Exception
    # this is expected since the email doesn't exist
  end
  # rubocop:enable Lint/RescueException

  # storeCredential() {
  # Allison stores the credential in her cloud wallet
  wallet_service.auth_token = allison
  insert_response = wallet_service.insert_item(Trinsic::Wallet_V1::InsertItemRequest.new(item_json: credential))
  item_id = insert_response.item_id
  # }
  puts("item id = #{item_id}")

  # shareCredential() {
  # Allison shares the credential with the airline
  credential_service.auth_token = allison
  proof_response = credential_service.create_proof(Trinsic::Credentials_V1::CreateProofRequest.new(item_id: item_id))
  credential_proof = proof_response.proof_document_json
  # }

  puts("Proof: #{credential_proof}")

  # verifyCredential() {
  # The airline verifies the credential
  credential_service.auth_token = airline

  verify_result = credential_service.verify_proof(
    Trinsic::Credentials_V1::VerifyProofRequest.new(proof_document_json: credential_proof)
  )

  valid = verify_result.is_valid
  # }

  puts("Verification result: #{valid}")
  raise 'Proof should be valid' unless valid

  # revokeCredential() {
  # update_status_response = await credential_service.update_status(credential_status_id=status_id, revoked=True)
  # print(f"UpdateStatusResponse: {update_status_response}")
  # credential_status = await credential_service.check_status(credential_status_id=status_id)
  # print(f"Credential_status: {credential_status}")
  # assert credential_status.revoked is True
  # }
end
# rubocop:enable Metrics/MethodLength

vaccine_demo_run
