=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

OpenAPI spec version: channel

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'

describe ChannelEngineChannelApiClient::Configuration do
  let(:config) { ChannelEngineChannelApiClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    #require 'URI'
    #uri = URI.parse("http://dev.channelengine.local/api")
    #ChannelEngineChannelApiClient.configure do |c|
    #  c.host = uri.host
    #  c.base_path = uri.path
    #end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      #expect(config.base_url).to eq("http://dev.channelengine.local/api")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        #expect(config.base_url).to eq("http://dev.channelengine.local/api")
      end
    end
  end
end
