require 'simplecov'
require 'simplecov-cobertura'
SimpleCov.start do
  SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter
end

require_relative "../lib/trinsic"
require_relative '../lib/trinsic/WalletService_pb'

require "minitest/autorun"
