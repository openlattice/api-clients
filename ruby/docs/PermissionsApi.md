# OpenapiClient::PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_acl**](PermissionsApi.md#get_acl) | **POST** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**update_acl**](PermissionsApi.md#update_acl) | **PATCH** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
[**update_acls**](PermissionsApi.md#update_acls) | **PATCH** /datastore/update | Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.



## get_acl

> Acl get_acl(request_body)

Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

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

api_instance = OpenapiClient::PermissionsApi.new
request_body = ['request_body_example'] # Array<String> | 

begin
  #Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
  result = api_instance.get_acl(request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PermissionsApi->get_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | 

### Return type

[**Acl**](Acl.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_acl

> update_acl(acl_data)

Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

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

api_instance = OpenapiClient::PermissionsApi.new
acl_data = OpenapiClient::AclData.new # AclData | 

begin
  #Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
  api_instance.update_acl(acl_data)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PermissionsApi->update_acl: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_data** | [**AclData**](AclData.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_acls

> update_acls(acl_data)

Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.

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

api_instance = OpenapiClient::PermissionsApi.new
acl_data = [OpenapiClient::AclData.new] # Array<AclData> | 

begin
  #Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.
  api_instance.update_acls(acl_data)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PermissionsApi->update_acls: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_data** | [**Array&lt;AclData&gt;**](AclData.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

