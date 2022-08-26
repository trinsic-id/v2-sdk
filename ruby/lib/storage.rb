# frozen_string_literal: true

require 'services/common/v1/common_pb'
require 'okapi/security/v1/security_pb'
require 'okapi'
require 'okapi/hashing'
require 'okapi/hashing/v1/hashing_pb'
require 'okapi/oberon'

module Trinsic
  # Interface
  module ITokenProvider
    def (_account_profile, _message)
      raise 'Not implemented'
    end
  end

  # Oberon security
  class MemoryTokenProvider
    include ITokenProvider
  end
end
