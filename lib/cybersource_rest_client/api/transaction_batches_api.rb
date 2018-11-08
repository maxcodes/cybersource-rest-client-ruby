=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'uri'

module CyberSource
  class TransactionBatchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default, config)
      @api_client = api_client
      @api_client.set_configuration(config)
    end
    # Get a list of batch files processed through the Offline Transaction Submission Services
    # Provide the search range
    # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZZ 
    # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZZ 
    # @param [Hash] opts the optional parameters
    # @return [PtsV1TransactionBatchesGet200Response]
    def pts_v1_transaction_batches_get(start_time, end_time, opts = {})
      data, _status_code, _headers = pts_v1_transaction_batches_get_with_http_info(start_time, end_time, opts)
      return data, _status_code, _headers
    end

    # Get a list of batch files processed through the Offline Transaction Submission Services
    # Provide the search range
    # @param start_time Valid report Start Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZZ 
    # @param end_time Valid report End Time in **ISO 8601 format** Please refer the following link to know more about ISO 8601 format. - https://xml2rfc.tools.ietf.org/public/rfc/html/rfc3339.html#anchor14   **Example date format:**   - yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSZZ 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PtsV1TransactionBatchesGet200Response, Fixnum, Hash)>] PtsV1TransactionBatchesGet200Response data, response status code and response headers
    def pts_v1_transaction_batches_get_with_http_info(start_time, end_time, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionBatchesApi.pts_v1_transaction_batches_get ...'
      end
      # verify the required parameter 'start_time' is set
      if @api_client.config.client_side_validation && start_time.nil?
        fail ArgumentError, "Missing the required parameter 'start_time' when calling TransactionBatchesApi.pts_v1_transaction_batches_get"
      end
      # verify the required parameter 'end_time' is set
      if @api_client.config.client_side_validation && end_time.nil?
        fail ArgumentError, "Missing the required parameter 'end_time' when calling TransactionBatchesApi.pts_v1_transaction_batches_get"
      end
      # resource path
      local_var_path = 'pts/v1/transaction-batches'

      # query parameters
      query_params = {}
      query_params[:'startTime'] = start_time
      query_params[:'endTime'] = end_time

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/hal+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json;charset=utf-8'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PtsV1TransactionBatchesGet200Response')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionBatchesApi#pts_v1_transaction_batches_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end