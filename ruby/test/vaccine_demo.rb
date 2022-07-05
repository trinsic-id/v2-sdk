# frozen_string_literal: true

require 'trinsic_services'
require 'services/service_base'
require 'json'
require 'securerandom'

# rubocop:disable Metrics/MethodLength
def do_template(trinsic)
  # createTemplate() {
  request = Trinsic::Template::CreateCredentialTemplateRequest.new(name: "VaccinationCertificate: #{SecureRandom.uuid}",
                                                                      allow_additional_fields: false)
  request.fields['firstName'] = Trinsic::Template::TemplateField.new(description: 'First name of vaccine recipient')
  request.fields['lastName'] = Trinsic::Template::TemplateField.new(description: 'Last name of vaccine recipient')
  request.fields['batchNumber'] =
    Trinsic::Template::TemplateField.new(description: 'Batch number of vaccine',
                                            type: Trinsic::Template::FieldType::STRING)
  request.fields['countryOfVaccination'] =
    Trinsic::Template::TemplateField.new(description: 'Country in which the subject was vaccinated')

  template = trinsic.template_service.create(request)
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

  trinsic = Trinsic::TrinsicService.new(config)

  # createEcosystem() {
  ecosystem = trinsic.provider_service.create_ecosystem
  ecosystem_id = ecosystem.ecosystem.id
  # }

  # setupActors() {
  # Create an account for each participant in the scenario
  allison = trinsic.account_service.login_anonymous
  clinic = trinsic.account_service.login_anonymous
  airline = trinsic.account_service.login_anonymous
  # }

  trinsic.auth_token = clinic
  info = trinsic.account_service.get_info
  puts("account info #{info}")

  # Create a template
  trinsic.auth_token = clinic
  template = do_template(trinsic)

  # Create template values

  # issueCredential() {
  # Prepares values for credential
  values = JSON.generate({ firstName: 'Allison', lastName: 'Allisonne', batchNumber: '123454321',
                           countryOfVaccination: 'US' })

  # Issue credential
  issue_response = trinsic.credential_service.issue_from_template(Trinsic::Credentials::IssueFromTemplateRequest.new(
                                                            template_id: template.id, values_json: values
                                                          ))
  credential = issue_response.document_json
  # }

  puts("Credential: #{credential}")

  # rubocop:disable Lint/RescueException
  begin
    # sendCredential() {
    send_response = trinsic.credential_service.send(Trinsic::Credentials::SendRequest.new(document_json: credential,
                                                                                     email: 'example@trinsic.id'))
    # }
    puts(send_response)
  rescue Exception
    # this is expected since the email doesn't exist
  end
  # rubocop:enable Lint/RescueException

  # storeCredential() {
  # Allison stores the credential in her cloud wallet
  trinsic.auth_token = allison
  insert_response = trinsic.wallet_service.insert_item(Trinsic::Wallet::InsertItemRequest.new(item_json: credential))
  item_id = insert_response.item_id
  # }
  puts("item id = #{item_id}")

  # shareCredential() {
  # Allison shares the credential with the airline
  trinsic.auth_token = allison
  proof_response = trinsic.credential_service.create_proof(Trinsic::Credentials::CreateProofRequest.new(item_id: item_id))
  credential_proof = proof_response.proof_document_json
  # }

  puts("Proof: #{credential_proof}")

  # verifyCredential() {
  # The airline verifies the credential
  trinsic.auth_token = airline

  verify_result = trinsic.credential_service.verify_proof(
    Trinsic::Credentials::VerifyProofRequest.new(proof_document_json: credential_proof)
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
