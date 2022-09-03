
require "uri"

module ConnectWise
  class CompanyTypeAssociationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Delete CompanyTypeAssociation By Id
    # @param id 
    # @param company_type_association_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_companies_id_company_type_associations_id_delete(id, company_type_association_id, opts = {})
      company_companies_id_company_type_associations_id_delete_with_http_info(id, company_type_association_id, opts)
      return nil
    end

    # 
    # Delete CompanyTypeAssociation By Id
    # @param id 
    # @param company_type_association_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_companies_id_company_type_associations_id_delete_with_http_info(id, company_type_association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTypeAssociationsApi.company_companies_id_company_type_associations_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTypeAssociationsApi.company_companies_id_custom_status_notes_company_type_association_id_delete"
      end
      # verify the required parameter 'company_type_association_id' is set
      if @api_client.config.client_side_validation && company_type_association_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_type_association_id' when calling CompanyTypeAssociationsApi.company_companies_id_custom_status_notes_company_type_association_id_delete"
      end
      # resource path
      local_var_path = "/company/companies/{id}/typeAssociations/{typeAssociationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'typeAssociationId' + '}', company_type_association_id.to_s)

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
        @api_client.config.logger.debug "API called: CompanyTypeAssociationsApi#company_companies_id_company_type_associations_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get CompanyTypeAssociation By Id
    # @param id 
    # @param company_type_association_id 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTypeAssociation]
    # def company_companies_id_type_associations_get(id, opts = {})
    #   data, _status_code, _headers = company_companies_id_type_associations_get_with_http_info(id, opts)
    #   return data
    # end

    # 
    # Get CompanyTypeAssociation By Id
    # @param id 
    # @param company_type_association_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTypeAssociation, Fixnum, Hash)>] CompanyTypeAssociation data, response status code and response headers
    # def company_companies_id_type_associations_get_with_http_info(id, opts = {})
    #   if @api_client.config.debugging
    #     @api_client.config.logger.debug "Calling API: CompanyTypeAssociationsApi.company_companies_id_type_associations_get ..."
    #   end
    #   # verify the required parameter 'id' is set
    #   if @api_client.config.client_side_validation && id.nil?
    #     fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTypeAssociationsApi.company_companies_id_type_associations_get"
    #   end
    #   # resource path
    #   local_var_path = "/company/companies/{id}/typeAssociations".sub('{' + 'id' + '}', id.to_s)

    #   # query parameters
    #   query_params = {}

    #   # header parameters
    #   header_params = {}
    #   # HTTP header 'Accept' (if needed)
    #   header_params['Accept'] = @api_client.select_header_accept(['application/json'])

    #   # form parameters
    #   form_params = {}

    #   # http body (model)
    #   post_body = nil
    #   auth_names = ['BasicAuth']
    #   data, status_code, headers = @api_client.call_api(:GET, local_var_path,
    #     :header_params => header_params,
    #     :query_params => query_params,
    #     :form_params => form_params,
    #     :body => post_body,
    #     :auth_names => auth_names,
    #     :return_type => 'Array<CompanyTypeAssociation>')
    #   if @api_client.config.debugging
    #     @api_client.config.logger.debug "API called: CompanyTypeAssociationsApi#company_companies_id_type_associations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
    #   end
    #   return data, status_code, headers
    # end

    # 
    # Update CompanyTypeAssociation
    # @param id 
    # @param company_type_association_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTypeAssociation]
    def company_companies_id_company_type_association_id_patch(id, company_type_association_id, operations, opts = {})
      data, _status_code, _headers = company_companies_id_company_type_association_id_patch_with_http_info(id, company_type_association_id, operations, opts)
      return data
    end

    # 
    # Update CompanyTypeAssociation
    # @param id 
    # @param company_type_association_id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTypeAssociation, Fixnum, Hash)>] CompanyTypeAssociation data, response status code and response headers
    def company_companies_id_company_type_association_id_patch_with_http_info(id, company_type_association_id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_patch"
      end
      # verify the required parameter 'company_type_association_id' is set
      if @api_client.config.client_side_validation && company_type_association_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_type_association_id' when calling CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_patch"
      end
      # resource path
      local_var_path = "/company/companies/{id}/typeAssociations/{typeAssociationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'typeAssociationId' + '}', company_type_association_id.to_s)

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
        :return_type => 'CompanyTypeAssociation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTypeAssociationsApi#company_companies_id_company_type_association_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace CompanyTypeAssociation
    # @param id 
    # @param company_type_association_id 
    # @param company_type_association 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTypeAssociation]
    def company_companies_id_company_type_association_id_put(id, company_type_association_id, company_type_association, opts = {})
      data, _status_code, _headers = company_companies_id_company_type_association_id_put_with_http_info(id, company_type_association_id, company_type_association, opts)
      return data
    end

    # 
    # Replace CompanyTypeAssociation
    # @param id 
    # @param company_type_association_id 
    # @param company_type_association 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTypeAssociation, Fixnum, Hash)>] CompanyTypeAssociation data, response status code and response headers
    def company_companies_id_company_type_association_id_put_with_http_info(id, company_type_association_id, company_type_association, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_put"
      end
      # verify the required parameter 'company_type_association_id' is set
      if @api_client.config.client_side_validation && company_type_association_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_type_association_id' when calling CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_put"
      end
      # verify the required parameter 'company_type_association' is set
      if @api_client.config.client_side_validation && company_type_association.nil?
        fail ArgumentError, "Missing the required parameter 'company_type_association' when calling CompanyTypeAssociationsApi.company_companies_id_company_type_association_id_put"
      end
      # resource path
      local_var_path = "/company/companies/{id}/typeAssociations/{typeAssociationId}".sub('{' + 'id' + '}', id.to_s).sub('{' + 'typeAssociationId' + '}', company_type_association_id.to_s)

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
      post_body = @api_client.object_to_http_body(company_type_association)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyTypeAssociation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTypeAssociationsApi#company_companies_id_company_type_association_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get CompanyTypeAssociation
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<CompanyTypeAssociation>]
    def company_companies_id_type_associations_get(id, opts = {})
      data, _status_code, _headers = company_companies_id_type_associations_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get CompanyTypeAssociation
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @return [Array<(Array<CompanyTypeAssociation>, Fixnum, Hash)>] Array<CompanyTypeAssociation> data, response status code and response headers
    def company_companies_id_type_associations_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTypeAssociationsApi.company_companies_id_type_associations_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTypeAssociationsApi.company_companies_id_type_associations_get"
      end
      # resource path
      local_var_path = "/company/companies/{id}/typeAssociations".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
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
        :return_type => 'Array<CompanyTypeAssociation>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTypeAssociationsApi#company_companies_id_type_associations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create CompanyTypeAssociation
    # @param id 
    # @param company_type_association 
    # @param [Hash] opts the optional parameters
    # @return [CompanyTypeAssociation]
    def company_companies_id_type_associations_post(id, company_type_association, opts = {})
      data, _status_code, _headers = company_companies_id_type_associations_post_with_http_info(id, company_type_association, opts)
      return data
    end

    # 
    # Create CompanyTypeAssociation
    # @param id 
    # @param company_type_association 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CompanyTypeAssociation, Fixnum, Hash)>] CompanyTypeAssociation data, response status code and response headers
    def company_companies_id_type_associations_post_with_http_info(id, company_type_association, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CompanyTypeAssociationsApi.company_companies_id_type_associations_post ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CompanyTypeAssociationsApi.company_companies_id_type_associations_post"
      end
      # verify the required parameter 'company_type_association' is set
      if @api_client.config.client_side_validation && company_type_association.nil?
        fail ArgumentError, "Missing the required parameter 'company_type_association' when calling CompanyTypeAssociationsApi.company_companies_id_type_associations_post"
      end
      # resource path
      local_var_path = "/company/companies/{id}/typeAssociations".sub('{' + 'id' + '}', id.to_s)

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
      post_body = @api_client.object_to_http_body(company_type_association)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompanyTypeAssociation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompanyTypeAssociationsApi#company_companies_id_type_associations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
