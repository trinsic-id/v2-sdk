require 'trinsic_services'
require 'services/account_service'
require 'services/provider_service'

def ecosystem_demo_run
  account_service = Trinsic::AccountService.new(Trinsic::trinsic_server)
  account = account_service.sign_in(nil)
  service = Trinsic::ProviderService.new(Trinsic::trinsic_server(account))

  # test create ecosystem
  actual_create = service.create_ecosystem(Trinsic::Provider_V1::CreateEcosystemRequest.new(:description => "My ecosystem", :uri => "https://example.com"))
  raise 'ecosystem should be created' unless actual_create.ecosystem != nil
  raise 'ecosystem id should exist' unless actual_create.ecosystem.id != nil
  raise "expected urn prefix='urn:trinsic:ecosystems:'" unless actual_create.ecosystem.id.start_with?("urn:trinsic:ecosystems:")

  # test list ecosystems
  # actual_list = service.list_ecosystems
  # assert(actual_list.nil? == false)
  # assert(actual_list.length > 0)
end

ecosystem_demo_run
