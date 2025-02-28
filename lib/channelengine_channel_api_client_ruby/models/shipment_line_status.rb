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
  class ShipmentLineStatus
    SHIPPED = "SHIPPED".freeze
    IN_BACKORDER = "IN_BACKORDER".freeze
    MANCO = "MANCO".freeze

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
      constantValues = ShipmentLineStatus.constants.select { |c| ShipmentLineStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ShipmentLineStatus" if constantValues.empty?
      value
    end
  end
end
