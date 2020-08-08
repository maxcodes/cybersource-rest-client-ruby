=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::KeyGenerationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'KeyGenerationApi' do
  before do
    # run before each test
    @instance = CyberSource::KeyGenerationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KeyGenerationApi' do
    it 'should create an instance of KeyGenerationApi' do
      expect(@instance).to be_instance_of(CyberSource::KeyGenerationApi)
    end
  end

  # unit tests for generate_public_key
  # Generate Key
  # Generate a one-time use public key and key ID to encrypt the card number in the follow-on Tokenize Card request. The key used to encrypt the card number on the cardholder’s device or browser is valid for 15 minutes and must be used to verify the signature in the response message. CyberSource recommends creating a new key for each order. Generating a key is an authenticated request initiated from your servers, prior to requesting to tokenize the card data from your customer’s device or browser.
  # @param format Indicator to enable the receipt of the Keys response in Flex 11+ format (JWT) or legacy (parameter not required)
  # @param generate_public_key_request 
  # @param [Hash] opts the optional parameters
  # @return [FlexV1KeysPost200Response]
  describe 'generate_public_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
