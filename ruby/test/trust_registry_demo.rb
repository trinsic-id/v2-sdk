require 'trinsic_services'
require 'services/account_service'
require 'services/trust_registry_service'

def trust_registry_demo_run
  account_service = Trinsic::AccountService.new(Trinsic::trinsic_server)
  account = account_service.sign_in(nil)
  service = Trinsic::TrustRegistryService.new(Trinsic::trinsic_server(account))

  # register issuer
  did_uri = "did:example:test"
  framework_uri = "https://example.com"
  type_uri = "https://schema.org/Card"
  service.register_issuer(Trinsic::TrustRegistry_V1::RegisterIssuerRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :credential_type_uri => type_uri))
  service.register_verifier(Trinsic::TrustRegistry_V1::RegisterVerifierRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :presentation_type_uri => type_uri))

  # check issuer status
  issuer_status = service.check_issuer_status(Trinsic::TrustRegistry_V1::CheckIssuerStatusRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :credential_type_uri => type_uri))
  raise "Issuer status should be current" unless issuer_status == :CURRENT

  # check verifier status
  verifier_status = service.check_issuer_status(Trinsic::TrustRegistry_V1::CheckVerifierStatusRequest.new(:did_uri => did_uri, :governance_framework_uri => framework_uri, :presentation_type_uri => type_uri))
  raise "Verifier status should be current" unless verifier_status == :CURRENT

  # search registry
  search_result = service.search_registry
  raise "Search result should exist" if search_result.nil?
  raise "Search result should not be empty" unless search_result.length > 0
end

trust_registry_demo_run