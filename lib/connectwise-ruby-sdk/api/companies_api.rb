
require "uri"

module ConnectWise
  class CompaniesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Companies Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Count]
    def company_companies_count_get(opts = {})
      data, _status_code, _headers = company_companies_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Companies Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :custom_field_conditions 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_companies_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_count_get ..."
      end
      # resource path
      local_var_path = "/company/companies/count"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'customFieldConditions'] = opts[:'custom_field_conditions'] if !opts[:'custom_field_conditions'].nil?

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
        :return_type => 'Count')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Companies
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<Company>]
    def company_companies_get(opts = {})
      data, _status_code, _headers = company_companies_get_with_http_info(opts)
      return data
    end

    # 
    # Get Companies
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<Company>, Fixnum, Hash)>] Array<Company> data, response status code and response headers
    def company_companies_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_get ..."
      end
      # resource path
      local_var_path = "/company/companies"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'fields'] = opts[:'fields'].join(',') if !opts[:'fields'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'childconditions'] = opts[:'childconditions'] if !opts[:'childconditions'].nil?
      query_params[:'customfieldconditions'] = opts[:'customfieldconditions'] if !opts[:'customfieldconditions'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
        :return_type => 'Array<Company>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Company By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_companies_id_delete(id, opts = {})
      company_companies_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Company By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_companies_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompaniesApi.company_companies_id_delete"
      end
      # resource path
      local_var_path = "/company/companies/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Company By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def company_companies_id_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Company By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Fixnum, Hash)>] Company data, response status code and response headers
    def company_companies_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompaniesApi.company_companies_id_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Company')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Merge Company
    # @param id 
    # @param merge 
    # @param [Hash] opts the optional parameters
    # @return [SuccessResponse]
    def company_companies_id_merge_post(id, merge, opts = {})
      data, _status_code, _headers = company_companies_id_merge_post_with_http_info(id, merge, opts)
      return data
    end

    # 
    # Merge Company
    # @param id 
    # @param merge 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SuccessResponse, Fixnum, Hash)>] SuccessResponse data, response status code and response headers
    def company_companies_id_merge_post_with_http_info(id, merge, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_id_merge_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompaniesApi.company_companies_id_merge_post"
      end
      # verify the required parameter 'merge' is set
      if @api_client.config.client_side_validation && merge.nil?
        fail ArgumentError, "Missing the required parameter 'merge' when calling CompaniesApi.company_companies_id_merge_post"
      end
      # resource path
      local_var_path = "/company/companies/{id}/merge".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(merge)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_id_merge_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Company
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def company_companies_id_patch(id, operations, opts = {})
      data, _status_code, _headers = company_companies_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Company
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Fixnum, Hash)>] Company data, response status code and response headers
    def company_companies_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompaniesApi.company_companies_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CompaniesApi.company_companies_id_patch"
      end
      # resource path
      local_var_path = "/company/companies/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(operations)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Company')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Company
    # @param id 
    # @param company 
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def company_companies_id_put(id, company, opts = {})
      data, _status_code, _headers = company_companies_id_put_with_http_info(id, company, opts)
      return data
    end

    # 
    # Replace Company
    # @param id 
    # @param company 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Fixnum, Hash)>] Company data, response status code and response headers
    def company_companies_id_put_with_http_info(id, company, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompaniesApi.company_companies_id_put"
      end
      # verify the required parameter 'company' is set
      if @api_client.config.client_side_validation && company.nil?
        fail ArgumentError, "Missing the required parameter 'company' when calling CompaniesApi.company_companies_id_put"
      end
      # resource path
      local_var_path = "/company/companies/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(company)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Company')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Company
    # @param company 
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def company_companies_post(company, opts = {})
      data, _status_code, _headers = company_companies_post_with_http_info(company, opts)
      return data
    end

    # 
    # Create Company
    # @param company 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Fixnum, Hash)>] Company data, response status code and response headers
    def company_companies_post_with_http_info(company, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompaniesApi.company_companies_post ..."
      end
      # verify the required parameter 'company' is set
      if @api_client.config.client_side_validation && company.nil?
        fail ArgumentError, "Missing the required parameter 'company' when calling CompaniesApi.company_companies_post"
      end
      # resource path
      local_var_path = "/company/companies"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(company)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Company')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#company_companies_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
