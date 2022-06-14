# frozen_string_literal: true

require 'trinsic_services'
require 'services/account_service'
require 'services/trust_registry_service'
require 'securerandom'

# rubocop:disable Metrics/MethodLength
def trust_registry_demo_run
  account_service = Trinsic::AccountService.new(Trinsic.trinsic_server)
  account = account_service.sign_in(nil)
  service = Trinsic::TrustRegistryService.new(Trinsic.trinsic_server(account))

  # New governance framework
  framework_uri = "urn:egf:#{SecureRandom.uuid}"
  governance_framework_response = service.add_framework(Trinsic::TrustRegistry::AddFrameworkRequest.new(
                                                          governance_framework_uri: framework_uri, name: "Test Governance Framework - #{SecureRandom.uuid}"
                                                        ))

  # register issuer
  did_uri = 'did:example:test'
  type_uri = 'https://schema.org/Card'
  service.register_member(Trinsic::TrustRegistry::RegisterMemberRequest.new(did_uri: did_uri,
                                                                               framework_id: governance_framework_response.id, schema_uri: type_uri))

  # check issuer status
  issuer_status = service.get_membership_status(Trinsic::TrustRegistry::GetMembershipStatusRequest.new(
                                                  did_uri: did_uri, governance_framework_uri: framework_uri, schema_uri: type_uri
                                                ))
  raise "Issuer status #{issuer_status.status} should be current" unless issuer_status.status == :CURRENT

  # search registry
  search_result = service.search_registry
  raise 'Search result should exist' if search_result.nil?
  raise 'Search result should not be empty' unless JSON.parse(search_result.items_json).length.positive?
end
# rubocop:enable Metrics/MethodLength

trust_registry_demo_run
