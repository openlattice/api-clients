=begin
#OpenLattice API

#OpenLattice API

The version of the OpenAPI document: 0.0.1
Contact: support@openlattice.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'cgi'

module OpenapiClient
  class PermissionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
    # @param request_body [Array<String>] 
    # @param [Hash] opts the optional parameters
    # @return [Acl]
    def get_acl(request_body, opts = {})
      data, _status_code, _headers = get_acl_with_http_info(request_body, opts)
      data
    end

    # Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
    # @param request_body [Array<String>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Acl, Integer, Hash)>] Acl data, response status code and response headers
    def get_acl_with_http_info(request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionsApi.get_acl ...'
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling PermissionsApi.get_acl"
      end
      # resource path
      local_var_path = '/datastore/permissions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(request_body) 

      # return_type
      return_type = opts[:return_type] || 'Acl' 

      # auth_names
      auth_names = opts[:auth_names] || ['http_auth', 'openlattice_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#get_acl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
    # @param acl_data [AclData] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_acl(acl_data, opts = {})
      update_acl_with_http_info(acl_data, opts)
      nil
    end

    # Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
    # @param acl_data [AclData] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_acl_with_http_info(acl_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PermissionsApi.update_acl ...'
      end
      # verify the required parameter 'acl_data' is set
      if @api_client.config.client_side_validation && acl_data.nil?
        fail ArgumentError, "Missing the required parameter 'acl_data' when calling PermissionsApi.update_acl"
      end
      # resource path
      local_var_path = '/datastore/permissions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(acl_data) 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['http_auth', 'openlattice_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PermissionsApi#update_acl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
