=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineChannelApiClient
  class OrderStatusView
    IN_PROGRESS = "IN_PROGRESS".freeze
    SHIPPED = "SHIPPED".freeze
    IN_BACKORDER = "IN_BACKORDER".freeze
    MANCO = "MANCO".freeze
    CANCELED = "CANCELED".freeze
    IN_COMBI = "IN_COMBI".freeze
    CLOSED = "CLOSED".freeze
    NEW = "NEW".freeze
    RETURNED = "RETURNED".freeze
    REQUIRES_CORRECTION = "REQUIRES_CORRECTION".freeze
    AWAITING_PAYMENT = "AWAITING_PAYMENT".freeze

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
      constantValues = OrderStatusView.constants.select { |c| OrderStatusView::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #OrderStatusView" if constantValues.empty?
      value
    end
  end
end
