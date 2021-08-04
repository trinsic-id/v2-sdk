require "test_helper"

class TrinsicServiceTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Trinsic::VERSION
  end

  def vaccine_cert_unsigned_path
    return File.expand_path(join(File.dirname(__FILE__ ), "vaccination-certificate-unsigned.jsonld"))
  end

  def vaccine_cert_frame_path
    return File.expand_path(File.join(File.dirname(__FILE__ ), "vaccination-certificate-frame.jsonld"))
  end

  def test_trinsic_services_demo
    server_address = ENV["TRINSIC_SERVER_ADDRESS"]
    wallet_service = Trinsic::TrinsicWalletService.new
  end
end
