# frozen_string_literal: true

require 'trinsic_services'
require 'services/account_service'
require 'services/provider_service'

def ecosystem_demo_run
  account_service = Trinsic::AccountService.new(Trinsic.trinsic_server)
  account = account_service.sign_in(nil)
  service = Trinsic::ProviderService.new(Trinsic.trinsic_server(account))

  # test create ecosystem
  actual_create = service.create_ecosystem(Trinsic::Provider::CreateEcosystemRequest.new(
                                             description: 'My ecosystem', uri: 'https://example.com'
                                           ))
  raise 'ecosystem should be created' if actual_create.ecosystem.nil?
  raise 'ecosystem id should exist' if actual_create.ecosystem.id.nil?
  return if actual_create.ecosystem.id.start_with?('urn:trinsic:ecosystems:')

  raise "expected urn prefix='urn:trinsic:ecosystems:'"
end
ecosystem_demo_run
