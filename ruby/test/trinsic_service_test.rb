require_relative 'test_helper'
require 'json'
require 'okapi'
require 'uri'
require 'trinsic_services'

class TrinsicServiceTest < Minitest::Test

  def before_setup
    Okapi::load_native_library
  end

  def test_servicebase_setprofile
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_test_server)
    assert_raises Exception do
      service.metadata(nil)
    end
    account_profile = account_service.sign_in(nil).profile
    account_service.profile = account_profile
    metadata = account_service.metadata(Services::Provider::V1::InviteRequest.new)
    assert(metadata != nil, "Valid metadata once profile is set")
  end

  def test_providerservice_inviteparticipant
    nil # this test needs ecosystem support
    # account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_test_server)
    # account_profile = account_service.sign_in(nil).profile
    # provider_service = Trinsic::ProviderService.new(account_profile, Trinsic::trinsic_test_server)
    #
    # invite_request = Services::Provider::V1::InviteRequest.new(:description => "I dunno", :email => "does.not.exist@trinsic.id")
    # invite_response = provider_service.invite_participant(invite_request)
    # assert(invite_response != nil)
    # TODO - Verify invitation status response
  end

  def test_has_a_version_number
    refute_nil ::Trinsic::VERSION
  end

  def data_base_path
    File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "devops", "testdata"))
  end

  def vaccine_cert_unsigned_path
    File.expand_path(File.join(data_base_path, "vaccination-certificate-unsigned.jsonld"))
  end

  def vaccine_cert_frame_path
    File.expand_path(File.join(data_base_path, "vaccination-certificate-frame.jsonld"))
  end

  def test_trinsic_services_demo
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_test_server)

    # SETUP ACTORS
    # Create 3 different profiles for each participant in the scenario
    allison = account_service.sign_in(nil).profile
    clinic = account_service.sign_in(nil).profile
    airline = account_service.sign_in(nil).profile

    # Store profile for later use
    # File.WriteAllBytes("allison.bin", allison.ToByteString().ToByteArray());

    # Create profile from existing data
    # var allison = WalletProfile.Parser.ParseFrom(File.ReadAllBytes("allison.bin"));

    wallet_service = Trinsic::WalletService.new(allison, Trinsic::trinsic_test_server)
    credential_service = Trinsic::CredentialService.new(clinic, Trinsic::trinsic_test_server)

    # ISSUE CREDENTIAL
    # Sign a credential as the clinic and send it to Allison
    wallet_service.profile = clinic
    credential_service.profile = clinic
    text = File.open(self.vaccine_cert_unsigned_path).read
    credential_json = JSON.parse(text)

    credential = credential_service.issue_credential(credential_json)

    puts "Credential: #{credential}"

    # STORE CREDENTIAL
    # Alice stores the credential in her cloud wallet.
    wallet_service.profile = allison
    credential_service.profile = allison
    item_id = wallet_service.insert_item(credential)
    puts "item id = #{item_id}"

    # SHARE CREDENTIAL
    # Allison shares the credential with the venue.
    # The venue has communicated with Allison the details of the credential
    # that they require expressed as a JSON-LD frame.
    wallet_service.profile = allison
    credential_service.profile = allison
    text2 = File.open(self.vaccine_cert_frame_path).read
    proof_request_json = JSON.parse(text2)

    credential_proof = credential_service.create_proof(document_id = item_id, reveal_document = proof_request_json)

    puts "Proof: #{credential_proof}"

    # VERIFY CREDENTIAL
    # The airline verifies the credential
    wallet_service.profile = airline
    credential_service.profile = airline
    valid = credential_service.verify_proof(credential_proof)

    puts "Verification result: #{valid}"

    assert(valid, "Credential is valid!")
  end

  def test_ecosystem_demo
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_test_server)
    account = account_service.sign_in(nil).profile
    service = Trinsic::ProviderService.new(account, Trinsic::trinsic_test_server)

    # test create ecosystem
    actual_create = service.create_ecosystem(Trinsic::Provider_V1::CreateEcosystemRequest.new(:description => "My ecosystem", :name => "Test Ecosystem", :uri => "did:example:test"))
    assert(actual_create != nil, "Ecosystem should be created")
    assert(actual_create.id != nil, "Id should exist")
    assert(actual_create.id.start_with?("urn:trinsic:ecosystems:"))

    # test list ecosystems
    actual_list = service.list_ecosystems
    assert(actual_list.nil? == false)
    assert(actual_list.length > 0)
  end

  def test_templates_demo
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_test_server)
    account = account_service.sign_in(nil).profile
    credential_service = Trinsic::CredentialService.new(account, Trinsic::trinsic_test_server)
    template_service = Trinsic::TemplateService.new(account, Trinsic::trinsic_test_server)

    # create example template
    template_request = Trinsic::Template_V1::CreateCredentialTemplateRequest.new(:name => "My Example Credential", :allow_additional_fields => false)
    template_request.fields['firstName'] = Trinsic::Template_V1::TemplateField.new(:description => "Given name")
    template_request.fields['lastName'] = Trinsic::Template_V1::TemplateField.new
    template_request.fields['age'] = Trinsic::Template_V1::TemplateField.new(:type => Trinsic::Template_V1::FieldType::NUMBER, :optional => true)
    template = template_service.create(template_request)

    assert(template.nil? == false)
    assert(template.data.nil? == false)
    assert(template.data.id.nil? == false)
    assert(template.data.schema_uri.nil? == false)

    # issue credential from this template
    values = JSON.generate({ 'firstName': 'Jane', 'lastName': 'Doe', 'age': 42 })
    credential_json = credential_service.issue_from_template(Trinsic::Credentials_V1::IssueFromTemplateRequest.new(:template_id=>template.data.id, :values_json=>values))
    assert(credential_json.document_json.nil? == false)

    json_document = JSON.parse(credential_json.document_json)

    assert(json_document.key?('id'))
    assert(json_document.key?('credentialSubject'))
  end

  def test_trustregistry_demo
    account_service = Trinsic::AccountService.new(nil, Trinsic::trinsic_test_server)
    account = account_service.sign_in(nil).profile
    service = Trinsic::TrustRegistryService.new(account, Trinsic::trinsic_test_server)

    # register issuer
    did_uri = "did:example:test"
    framework_uri = "https://example.com"
    type_uri = "https://schema.org/Card"
    service.register_issuer(Trinsic::TrustRegistry_V1::RegisterIssuerRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :credential_type_uri => type_uri))
    service.register_verifier(Trinsic::TrustRegistry_V1::RegisterVerifierRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :presentation_type_uri => type_uri))

    # check issuer status
    issuer_status = service.check_issuer_status(Trinsic::TrustRegistry_V1::CheckIssuerStatusRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :credential_type_uri => type_uri))
    assert_equal(:CURRENT, issuer_status)

    # check verifier status
    verifier_status = service.check_issuer_status(Trinsic::TrustRegistry_V1::CheckVerifierStatusRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :presentation_type_uri => type_uri))
    assert_equal(:CURRENT, verifier_status)

    # search registry
    search_result = service.search_registry
    assert(search_result.nil? == false)
    assert(search_result.length > 0)
  end
end
