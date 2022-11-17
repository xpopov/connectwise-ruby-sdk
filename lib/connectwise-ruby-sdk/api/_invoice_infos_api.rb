
require "uri"

module ConnectWise
  class InvoiceInfosApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Info By Id
    # @param id 
    # @param info_id 
    # @param [Hash] opts the optional parameters
    # @return [Info]
    def finance_invoices_id_infos_info_id_get(id, opts = {})
      data, _status_code, _headers = finance_invoices_id_infos_info_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Info By Id
    # @param id 
    # @param info_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Info, Fixnum, Hash)>] Info data, response status code and response headers
    def finance_invoices_id_infos_info_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: InvoiceInfosApi.finance_invoices_id_infos_info_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling InvoiceInfosApi.finance_invoices_id_infos_info_id_get"
      end
      # verify the required parameter 'info_id' is set
      if @api_client.config.client_side_validation && info_id.nil?
        fail ArgumentError, "Missing the required parameter 'info_id' when calling InvoiceInfosApi.finance_invoices_id_infos_info_id_get"
      end
      # resource path
      local_var_path = "/finance/info/invoice/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Info')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: InvoiceInfosApi#finance_invoices_id_infos_info_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
