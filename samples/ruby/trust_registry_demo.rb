# frozen_string_literal: true

require 'trinsic_services'
require 'securerandom'

# rubocop:disable Metrics/MethodLength
def trust_registry_demo_run
  trinsic = Trinsic::TrinsicService.new(Trinsic.trinsic_server)
  account = trinsic.account_service.login_anonymous

  trinsic.auth_token = account

  # New governance framework
  framework_uri = "urn:egf:#{SecureRandom.uuid}"
  governance_framework_response = trinsic.trust_registry_service.add_framework(Trinsic::TrustRegistry::AddFrameworkRequest.new(
                                                          governance_framework_uri: framework_uri, name: "Test Governance Framework - #{SecureRandom.uuid}"
                                                        ))

  # register issuer
  did_uri = 'did:example:test'
  type_uri = 'https://schema.org/Card'
  trinsic.trust_registry_service.register_member(Trinsic::TrustRegistry::RegisterMemberRequest.new(did_uri: did_uri,
                                                                               framework_id: governance_framework_response.id, schema_uri: type_uri))

  # check issuer status
  issuer_status = trinsic.trust_registry_service.get_membership_status(Trinsic::TrustRegistry::GetMembershipStatusRequest.new(
                                                  did_uri: did_uri, governance_framework_uri: framework_uri, schema_uri: type_uri
                                                ))
  raise "Issuer status #{issuer_status.status} should be current" unless issuer_status.status == :CURRENT

  # search registry
  search_result = trinsic.trust_registry_service.search
  raise 'Search result should exist' if search_result.nil?
  raise 'Search result should not be empty' unless JSON.parse(search_result.items_json).length.positive?
end
# rubocop:enable Metrics/MethodLength

trust_registry_demo_run
