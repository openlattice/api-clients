# OpenapiClient::AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_authorizations**](AuthorizationsApi.md#check_authorizations) | **POST** /datastore/authorizations | Check authorizations
[**get_accessible_objects**](AuthorizationsApi.md#get_accessible_objects) | **GET** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.



## check_authorizations

> Array&lt;Authorization&gt; check_authorizations(access_check)

Check authorizations

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::AuthorizationsApi.new
access_check = OpenapiClient::AccessCheck.new # AccessCheck | 

begin
  #Check authorizations
  result = api_instance.check_authorizations(access_check)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AuthorizationsApi->check_authorizations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_check** | [**AccessCheck**](AccessCheck.md)|  | 

### Return type

[**Array&lt;Authorization&gt;**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_accessible_objects

> AuthorizedObjectsSearchResult get_accessible_objects(opts)

Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::AuthorizationsApi.new
opts = {
  object_type: 'object_type_example', # String | 
  permission: 'permission_example', # String | 
  paging_token: 'paging_token_example' # String | 
}

begin
  #Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.
  result = api_instance.get_accessible_objects(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AuthorizationsApi->get_accessible_objects: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_type** | **String**|  | [optional] 
 **permission** | **String**|  | [optional] 
 **paging_token** | **String**|  | [optional] 

### Return type

[**AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

