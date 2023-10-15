
require "uri"

module ConnectWise
  class ConfigurationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # Get Configurations Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :managed_identifier 
    # @return [Count]
    def company_configurations_count_get(opts = {})
      data, _status_code, _headers = company_configurations_count_get_with_http_info(opts)
      return data
    end

    # 
    # Get Configurations Count
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :managed_identifier 
    # @return [Array<(Count, Fixnum, Hash)>] Count data, response status code and response headers
    def company_configurations_count_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationsApi.company_configurations_count_get ..."
      end
      # resource path
      local_var_path = "/company/configurations/count"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'managedIdentifier'] = opts[:'managed_identifier'] if !opts[:'managed_identifier'].nil?

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
        @api_client.config.logger.debug "API called: ConfigurationsApi#company_configurations_count_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @option opts [String] :managed_identifier 
    # @return [Array<Configuration>]
    def company_configurations_get(opts = {})
      data, _status_code, _headers = company_configurations_get_with_http_info(opts)
      return data
    end

    # 
    # Get Configurations
    # @param [Hash] opts the optional parameters
    # @option opts [String] :conditions 
    # @option opts [String] :order_by 
    # @option opts [String] :childconditions 
    # @option opts [String] :customfieldconditions 
    # @option opts [Integer] :page 
    # @option opts [Integer] :page_size 
    # @option opts [String] :managed_identifier 
    # @return [Array<(Array<Configuration>, Fixnum, Hash)>] Array<Configuration> data, response status code and response headers
    def company_configurations_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationsApi.company_configurations_get ..."
      end
      # resource path
      local_var_path = "/company/configurations"

      # query parameters
      query_params = {}
      query_params[:'conditions'] = opts[:'conditions'] if !opts[:'conditions'].nil?
      query_params[:'fields'] = opts[:'fields'].join(',') if !opts[:'fields'].nil?
      query_params[:'orderBy'] = opts[:'order_by'] if !opts[:'order_by'].nil?
      query_params[:'childconditions'] = opts[:'childconditions'] if !opts[:'childconditions'].nil?
      query_params[:'customfieldconditions'] = opts[:'customfieldconditions'] if !opts[:'customfieldconditions'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'managedIdentifier'] = opts[:'managed_identifier'] if !opts[:'managed_identifier'].nil?

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
        :return_type => 'Array<Configuration>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationsApi#company_configurations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Delete Configuration By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def company_configurations_id_delete(id, opts = {})
      company_configurations_id_delete_with_http_info(id, opts)
      return nil
    end

    # 
    # Delete Configuration By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def company_configurations_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationsApi.company_configurations_id_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationsApi.company_configurations_id_delete"
      end
      # resource path
      local_var_path = "/company/configurations/{id}".sub('{' + 'id' + '}', id.to_s)

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
        @api_client.config.logger.debug "API called: ConfigurationsApi#company_configurations_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Get Configuration By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Configuration]
    def company_configurations_id_get(id, opts = {})
      data, _status_code, _headers = company_configurations_id_get_with_http_info(id, opts)
      return data
    end

    # 
    # Get Configuration By Id
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Configuration, Fixnum, Hash)>] Configuration data, response status code and response headers
    def company_configurations_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationsApi.company_configurations_id_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationsApi.company_configurations_id_get"
      end
      # resource path
      local_var_path = "/company/configurations/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Configuration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationsApi#company_configurations_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Update Configuration
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :management_solution_name 
    # @option opts [String] :managed_identifier 
    # @option opts [String] :type 
    # @option opts [String] :level 
    # @option opts [String] :child_configurations_matching_on 
    # @option opts [String] :inactivate_configurations_matching_on 
    # @option opts [Integer] :inactive_configuration_status_id 
    # @return [Configuration]
    def company_configurations_id_patch(id, operations, opts = {})
      data, _status_code, _headers = company_configurations_id_patch_with_http_info(id, operations, opts)
      return data
    end

    # 
    # Update Configuration
    # @param id 
    # @param operations 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :management_solution_name 
    # @option opts [String] :managed_identifier 
    # @option opts [String] :type 
    # @option opts [String] :level 
    # @option opts [String] :child_configurations_matching_on 
    # @option opts [String] :inactivate_configurations_matching_on 
    # @option opts [Integer] :inactive_configuration_status_id 
    # @return [Array<(Configuration, Fixnum, Hash)>] Configuration data, response status code and response headers
    def company_configurations_id_patch_with_http_info(id, operations, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationsApi.company_configurations_id_patch ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationsApi.company_configurations_id_patch"
      end
      # verify the required parameter 'operations' is set
      if @api_client.config.client_side_validation && operations.nil?
        fail ArgumentError, "Missing the required parameter 'operations' when calling ConfigurationsApi.company_configurations_id_patch"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['Ticket', 'Configuration'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of Ticket, Configuration'
      end
      # resource path
      local_var_path = "/company/configurations/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'managementSolutionName'] = opts[:'management_solution_name'] if !opts[:'management_solution_name'].nil?
      query_params[:'managedIdentifier'] = opts[:'managed_identifier'] if !opts[:'managed_identifier'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'level'] = opts[:'level'] if !opts[:'level'].nil?
      query_params[:'childConfigurationsMatchingOn'] = opts[:'child_configurations_matching_on'] if !opts[:'child_configurations_matching_on'].nil?
      query_params[:'inactivateConfigurationsMatchingOn'] = opts[:'inactivate_configurations_matching_on'] if !opts[:'inactivate_configurations_matching_on'].nil?
      query_params[:'inactiveConfigurationStatusId'] = opts[:'inactive_configuration_status_id'] if !opts[:'inactive_configuration_status_id'].nil?

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
        :return_type => 'Configuration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationsApi#company_configurations_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Replace Configuration
    # @param id 
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :management_solution_name 
    # @option opts [String] :managed_identifier 
    # @option opts [String] :type 
    # @option opts [String] :level 
    # @option opts [String] :child_configurations_matching_on 
    # @option opts [String] :inactivate_configurations_matching_on 
    # @option opts [Integer] :inactive_configuration_status_id 
    # @return [Configuration]
    def company_configurations_id_put(id, configuration, opts = {})
      data, _status_code, _headers = company_configurations_id_put_with_http_info(id, configuration, opts)
      return data
    end

    # 
    # Replace Configuration
    # @param id 
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :management_solution_name 
    # @option opts [String] :managed_identifier 
    # @option opts [String] :type 
    # @option opts [String] :level 
    # @option opts [String] :child_configurations_matching_on 
    # @option opts [String] :inactivate_configurations_matching_on 
    # @option opts [Integer] :inactive_configuration_status_id 
    # @return [Array<(Configuration, Fixnum, Hash)>] Configuration data, response status code and response headers
    def company_configurations_id_put_with_http_info(id, configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationsApi.company_configurations_id_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ConfigurationsApi.company_configurations_id_put"
      end
      # verify the required parameter 'configuration' is set
      if @api_client.config.client_side_validation && configuration.nil?
        fail ArgumentError, "Missing the required parameter 'configuration' when calling ConfigurationsApi.company_configurations_id_put"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['Ticket', 'Configuration'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of Ticket, Configuration'
      end
      # resource path
      local_var_path = "/company/configurations/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'managementSolutionName'] = opts[:'management_solution_name'] if !opts[:'management_solution_name'].nil?
      query_params[:'managedIdentifier'] = opts[:'managed_identifier'] if !opts[:'managed_identifier'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'level'] = opts[:'level'] if !opts[:'level'].nil?
      query_params[:'childConfigurationsMatchingOn'] = opts[:'child_configurations_matching_on'] if !opts[:'child_configurations_matching_on'].nil?
      query_params[:'inactivateConfigurationsMatchingOn'] = opts[:'inactivate_configurations_matching_on'] if !opts[:'inactivate_configurations_matching_on'].nil?
      query_params[:'inactiveConfigurationStatusId'] = opts[:'inactive_configuration_status_id'] if !opts[:'inactive_configuration_status_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(configuration)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Configuration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationsApi#company_configurations_id_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # Create Configuration
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :management_solution_name 
    # @option opts [String] :managed_identifier 
    # @option opts [String] :type 
    # @option opts [String] :level 
    # @option opts [String] :child_configurations_matching_on 
    # @option opts [String] :inactivate_configurations_matching_on 
    # @option opts [Integer] :inactive_configuration_status_id 
    # @return [Configuration]
    def company_configurations_post(configuration, opts = {})
      data, _status_code, _headers = company_configurations_post_with_http_info(configuration, opts)
      return data
    end

    # 
    # Create Configuration
    # @param configuration 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :management_solution_name 
    # @option opts [String] :managed_identifier 
    # @option opts [String] :type 
    # @option opts [String] :level 
    # @option opts [String] :child_configurations_matching_on 
    # @option opts [String] :inactivate_configurations_matching_on 
    # @option opts [Integer] :inactive_configuration_status_id 
    # @return [Array<(Configuration, Fixnum, Hash)>] Configuration data, response status code and response headers
    def company_configurations_post_with_http_info(configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConfigurationsApi.company_configurations_post ..."
      end
      # verify the required parameter 'configuration' is set
      if @api_client.config.client_side_validation && configuration.nil?
        fail ArgumentError, "Missing the required parameter 'configuration' when calling ConfigurationsApi.company_configurations_post"
      end
      if @api_client.config.client_side_validation && opts[:'type'] && !['Ticket', 'Configuration'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of Ticket, Configuration'
      end
      # resource path
      local_var_path = "/company/configurations"

      # query parameters
      query_params = {}
      query_params[:'managementSolutionName'] = opts[:'management_solution_name'] if !opts[:'management_solution_name'].nil?
      query_params[:'managedIdentifier'] = opts[:'managed_identifier'] if !opts[:'managed_identifier'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'level'] = opts[:'level'] if !opts[:'level'].nil?
      query_params[:'childConfigurationsMatchingOn'] = opts[:'child_configurations_matching_on'] if !opts[:'child_configurations_matching_on'].nil?
      query_params[:'inactivateConfigurationsMatchingOn'] = opts[:'inactivate_configurations_matching_on'] if !opts[:'inactivate_configurations_matching_on'].nil?
      query_params[:'inactiveConfigurationStatusId'] = opts[:'inactive_configuration_status_id'] if !opts[:'inactive_configuration_status_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(configuration)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Configuration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConfigurationsApi#company_configurations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
