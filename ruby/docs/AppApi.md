# OpenapiClient::AppApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_app**](AppApi.md#create_app) | **POST** /datastore/app | Create an app if it doesn&#39;t exist.
[**create_app_role**](AppApi.md#create_app_role) | **POST** /datastore/app/update/{appId}/role | Create an app role
[**delete_app**](AppApi.md#delete_app) | **DELETE** /datastore/app/{appId} | Delete an app
[**delete_role_from_app**](AppApi.md#delete_role_from_app) | **DELETE** /datastore/app/update/{appId}/role/{roleId} | Delete an app role
[**get_app**](AppApi.md#get_app) | **GET** /datastore/app/{appId} | Get an app based on the ID
[**get_app_by_name**](AppApi.md#get_app_by_name) | **GET** /datastore/app/lookup/{name} | Get an app based on the name
[**get_apps**](AppApi.md#get_apps) | **GET** /datastore/app | Get all apps
[**get_available_app_configs_old**](AppApi.md#get_available_app_configs_old) | **GET** /datastore/app/config/{appId} | Get historical app configurations for an app



## create_app

> String create_app(app)

Create an app if it doesn't exist.

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

api_instance = OpenapiClient::AppApi.new
app = OpenapiClient::App.new # App | 

begin
  #Create an app if it doesn't exist.
  result = api_instance.create_app(app)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->create_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | [**App**](App.md)|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_app_role

> String create_app_role(app_id, app_role)

Create an app role

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

api_instance = OpenapiClient::AppApi.new
app_id = 'app_id_example' # String | 
app_role = OpenapiClient::AppRole.new # AppRole | 

begin
  #Create an app role
  result = api_instance.create_app_role(app_id, app_role)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->create_app_role: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**String**](.md)|  | 
 **app_role** | [**AppRole**](AppRole.md)|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_app

> delete_app(app_id)

Delete an app

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

api_instance = OpenapiClient::AppApi.new
app_id = 'app_id_example' # String | 

begin
  #Delete an app
  api_instance.delete_app(app_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->delete_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_role_from_app

> delete_role_from_app(app_id, role_id)

Delete an app role

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

api_instance = OpenapiClient::AppApi.new
app_id = 'app_id_example' # String | 
role_id = 'role_id_example' # String | 

begin
  #Delete an app role
  api_instance.delete_role_from_app(app_id, role_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->delete_role_from_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**String**](.md)|  | 
 **role_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_app

> App get_app(app_id)

Get an app based on the ID

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

api_instance = OpenapiClient::AppApi.new
app_id = 'app_id_example' # String | 

begin
  #Get an app based on the ID
  result = api_instance.get_app(app_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->get_app: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**String**](.md)|  | 

### Return type

[**App**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_app_by_name

> App get_app_by_name(name)

Get an app based on the name

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

api_instance = OpenapiClient::AppApi.new
name = 'name_example' # String | 

begin
  #Get an app based on the name
  result = api_instance.get_app_by_name(name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->get_app_by_name: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**App**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_apps

> Array&lt;App&gt; get_apps

Get all apps

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

api_instance = OpenapiClient::AppApi.new

begin
  #Get all apps
  result = api_instance.get_apps
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->get_apps: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;App&gt;**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_available_app_configs_old

> Array&lt;HistoricalAppConfig&gt; get_available_app_configs_old(app_id)

Get historical app configurations for an app

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

api_instance = OpenapiClient::AppApi.new
app_id = 'app_id_example' # String | 

begin
  #Get historical app configurations for an app
  result = api_instance.get_available_app_configs_old(app_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AppApi->get_available_app_configs_old: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;HistoricalAppConfig&gt;**](HistoricalAppConfig.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

