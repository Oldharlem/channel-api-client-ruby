=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.7

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineChannelApiClient
  class DataChangesProductType
    SINGLE = "SINGLE".freeze
    PARENT = "PARENT".freeze
    CHILD = "CHILD".freeze
    GRANDPARENT = "GRANDPARENT".freeze

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
      constantValues = DataChangesProductType.constants.select { |c| DataChangesProductType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #DataChangesProductType" if constantValues.empty?
      value
    end
  end
end
