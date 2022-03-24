require 'trinsic_services'
require 'services/service_base'
require 'services/account_service'
require 'services/credential_service'
require 'services/wallet_service'
require 'json'

def data_base_path
  File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "devops", "testdata"))
end

def vaccine_cert_unsigned_path
  File.expand_path(File.join(data_base_path, "vaccination-certificate-unsigned.jsonld"))
end

def vaccine_cert_frame_path
  File.expand_path(File.join(data_base_path, "vaccination-certificate-frame.jsonld"))
end

def vaccine_demo_run
  account_service = Trinsic::AccountService.new(Trinsic::trinsic_server)

  # SETUP ACTORS
  # Create 3 different profiles for each participant in the scenario
  allison = account_service.sign_in
  clinic = account_service.sign_in
  airline = account_service.sign_in

  # Store profile for later use
  # File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

  # Create profile from existing data
  # var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

  wallet_service = Trinsic::WalletService.new(Trinsic::trinsic_server(allison))
  credential_service = Trinsic::CredentialService.new(Trinsic::trinsic_server(clinic))

  # ISSUE CREDENTIAL
  # Sign a credential as the clinic and send it to Allison
  wallet_service.profile = clinic
  credential_service.profile = clinic
  text = File.open(self.vaccine_cert_unsigned_path).read
  credential_json = JSON.parse(text)

  issue_result = credential_service.issue_credential(Trinsic::Credentials_V1::IssueRequest.new(document_json: JSON.generate(credential_json)))
  credential = issue_result.signed_document_json
  puts "Credential: #{credential}"

  # STORE CREDENTIAL
  # Alice stores the credential in her cloud wallet.
  wallet_service.profile = allison
  credential_service.profile = allison
  item_id = wallet_service.insert_item(Trinsic::Wallet_V1::InsertItemRequest.new(item_json: credential))
  puts "item id = #{item_id}"

  # SHARE CREDENTIAL
  # Allison shares the credential with the venue.
  # The venue has communicated with Allison the details of the credential
  # that they require expressed as a JSON-LD frame.
  wallet_service.profile = allison
  credential_service.profile = allison
  text2 = File.open(self.vaccine_cert_frame_path).read
  proof_request_json = JSON.parse(text2)

  proof_result = credential_service.create_proof(Trinsic::Credentials_V1::CreateProofRequest.new(item_id: item_id, reveal_document_json: JSON.generate(proof_request_json)))
  credential_proof = proof_result.proof_document_json
  puts "Proof: #{credential_proof}"

  # VERIFY CREDENTIAL
  # The airline verifies the credential
  wallet_service.profile = airline
  credential_service.profile = airline
  verify_result = credential_service.verify_proof(Trinsic::Credentials_V1::VerifyProofRequest.new(proof_document_json: credential_proof))
  valid = verify_result.is_valid
  puts "Verification result: #{valid}"

  raise "Credential should be valid" unless valid
end

vaccine_demo_run