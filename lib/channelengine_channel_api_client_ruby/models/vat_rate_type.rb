=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.10

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineChannelApiClient
  class VatRateType
    STANDARD = "STANDARD".freeze
    REDUCED = "REDUCED".freeze
    SUPER_REDUCED = "SUPER_REDUCED".freeze
    EXEMPT = "EXEMPT".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = VatRateType.constants.select { |c| VatRateType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #VatRateType" if constantValues.empty?
      value
    end
  end
end
