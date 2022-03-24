module Trinsic
class ServiceBase
  def initialize(service_options)
    @service_options = service_options || trinsic_server
    @security_provider = OberonSecurityProvider.new
  end

  def metadata(message)
    if @service_options.nil? || @service_options.auth_token.nil?
      raise Error, 'Cannot call authenticated endpoint: profile must be set'
    end

    { 'authorization' => @security_provider.get_auth_header(Account_V1::AccountProfile.decode(Base64.urlsafe_decode64(@service_options.auth_token)), message) }
  end

  def profile=(new_profile)
    @service_options.auth_token = new_profile
  end

  def profile
    @service_options.auth_token
  end

  def get_url
    "#{@service_options.server_endpoint}:#{@service_options.server_port}"
  end
end
end