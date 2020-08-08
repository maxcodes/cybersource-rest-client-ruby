=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for CyberSource::DecisionManagerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DecisionManagerApi' do
  before do
    # run before each test
    @instance = CyberSource::DecisionManagerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DecisionManagerApi' do
    it 'should create an instance of DecisionManagerApi' do
      expect(@instance).to be_instance_of(CyberSource::DecisionManagerApi)
    end
  end

  # unit tests for add_negative
  # List Management
  # This call adds/deletes/converts the request information in the negative list.  Provide the list to be updated as the path parameter. This value can be &#39;postiive&#39;, &#39;negative&#39; or &#39;review&#39;. 
  # @param type The list to be updated. It can be &#39;positive&#39;, &#39;negative&#39; or &#39;review&#39;.
  # @param add_negative_list_request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1UpdatePost201Response]
  describe 'add_negative test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_bundled_decision_manager_case
  # Create Decision Manager
  # Decision Manager can help you automate and streamline your fraud operations. Decision Manager will return a decision based on the request values.
  # @param create_bundled_decision_manager_case_request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1DecisionsPost201Response]
  describe 'create_bundled_decision_manager_case test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for fraud_update
  # Fraud Marking
  # This can be used to - 1. Add known fraudulent data to the fraud history 2. Remove data added to history with Transaction Marking Tool or by uploading chargeback files 3. Remove chargeback data from history that was automatically added. For detailed information, contact your Cybersource representative  Place the request ID of the transaction you want to mark as suspect (or remove from history) as the path parameter in this request. 
  # @param id Request ID of the transaction that you want to mark as suspect or remove from history.
  # @param fraud_marking_action_request 
  # @param [Hash] opts the optional parameters
  # @return [RiskV1UpdatePost201Response]
  describe 'fraud_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
