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
    def save(_auth_token, _name = 'default')
      raise 'Not implemented'
    end

    def get(_name)
      raise 'Not implemented'
    end
  end

  # In memory security provider
  class MemoryTokenProvider
    include ITokenProvider

    def initialize
      @tokens = {}
    end

    def save(_auth_token, _name = 'default')
      @tokens[_name] = _auth_token
    end

    def get(_name)
      @tokens[_name]
    end
  end
end
