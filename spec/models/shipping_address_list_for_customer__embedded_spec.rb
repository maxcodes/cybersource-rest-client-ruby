=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CyberSource::ShippingAddressListForCustomerEmbedded
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ShippingAddressListForCustomerEmbedded' do
  before do
    # run before each test
    @instance = CyberSource::ShippingAddressListForCustomerEmbedded.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ShippingAddressListForCustomerEmbedded' do
    it 'should create an instance of ShippingAddressListForCustomerEmbedded' do
      expect(@instance).to be_instance_of(CyberSource::ShippingAddressListForCustomerEmbedded)
    end
  end
  describe 'test attribute "shipping_addresses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
