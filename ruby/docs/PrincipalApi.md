# OpenapiClient::PrincipalApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_users**](PrincipalApi.md#get_all_users) | **GET** /datastore/principals/users/ | Get all users.
[**get_current_roles**](PrincipalApi.md#get_current_roles) | **GET** /datastore/principals/roles/current/ | Get current roles.
[**get_materialized_view_account**](PrincipalApi.md#get_materialized_view_account) | **GET** /datastore/principals/db | Get the db access credentials.
[**get_user**](PrincipalApi.md#get_user) | **GET** /datastore/principals/users/{userId} | Get the user for the given id.
[**search_all_users**](PrincipalApi.md#search_all_users) | **GET** /datastore/principals/users/search/&quot;{searchQuery}&quot; | Get the user id for the given search.
[**search_all_users_by_email**](PrincipalApi.md#search_all_users_by_email) | **GET** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.
[**sync_calling_user**](PrincipalApi.md#sync_calling_user) | **GET** /datastore/principals/sync/ | Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.



## get_all_users

> Hash&lt;String, Auth0userBasic&gt; get_all_users

Get all users.

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

api_instance = OpenapiClient::PrincipalApi.new

begin
  #Get all users.
  result = api_instance.get_all_users
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PrincipalApi->get_all_users: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, Auth0userBasic&gt;**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_roles

> Array&lt;SecurablePrincipal&gt; get_current_roles

Get current roles.

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

api_instance = OpenapiClient::PrincipalApi.new

begin
  #Get current roles.
  result = api_instance.get_current_roles
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PrincipalApi->get_current_roles: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;SecurablePrincipal&gt;**](SecurablePrincipal.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_materialized_view_account

> MaterializedViewAccount get_materialized_view_account

Get the db access credentials.

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

api_instance = OpenapiClient::PrincipalApi.new

begin
  #Get the db access credentials.
  result = api_instance.get_materialized_view_account
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PrincipalApi->get_materialized_view_account: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MaterializedViewAccount**](MaterializedViewAccount.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> Auth0userBasic get_user(user_id)

Get the user for the given id.

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

api_instance = OpenapiClient::PrincipalApi.new
user_id = 'user_id_example' # String | 

begin
  #Get the user for the given id.
  result = api_instance.get_user(user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PrincipalApi->get_user: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 

### Return type

[**Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_all_users

> Hash&lt;String, Auth0userBasic&gt; search_all_users(search_query)

Get the user id for the given search.

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

api_instance = OpenapiClient::PrincipalApi.new
search_query = 'search_query_example' # String | 

begin
  #Get the user id for the given search.
  result = api_instance.search_all_users(search_query)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PrincipalApi->search_all_users: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_query** | **String**|  | 

### Return type

[**Hash&lt;String, Auth0userBasic&gt;**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_all_users_by_email

> Hash&lt;String, Auth0userBasic&gt; search_all_users_by_email(email_address)

Get the user id for the given email address.

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

api_instance = OpenapiClient::PrincipalApi.new
email_address = 'email_address_example' # String | 

begin
  #Get the user id for the given email address.
  result = api_instance.search_all_users_by_email(email_address)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PrincipalApi->search_all_users_by_email: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **String**|  | 

### Return type

[**Hash&lt;String, Auth0userBasic&gt;**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sync_calling_user

> sync_calling_user

Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.

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

api_instance = OpenapiClient::PrincipalApi.new

begin
  #Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.
  api_instance.sync_calling_user
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PrincipalApi->sync_calling_user: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

