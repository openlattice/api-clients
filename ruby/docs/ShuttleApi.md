# OpenapiClient::ShuttleApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration_definition**](ShuttleApi.md#create_integration_definition) | **POST** /shuttle/integration/definition/{integrationName} | Creates a new integration definition for running recurring integrations
[**delete_integration_definition**](ShuttleApi.md#delete_integration_definition) | **DELETE** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition
[**delete_integration_job_status**](ShuttleApi.md#delete_integration_job_status) | **DELETE** /shuttle/integration/status/{jobId} | Deletes an integration job status from the integrationJobs map
[**enqueue_integration**](ShuttleApi.md#enqueue_integration) | **GET** /shuttle/integration/{integrationName}/{integrationKey} | Enqueues an integration on Shuttle Server for a given integration
[**poll_all_integrations**](ShuttleApi.md#poll_all_integrations) | **GET** /shuttle/integration/status | Polls the statuses of all running integrations
[**poll_integration**](ShuttleApi.md#poll_integration) | **GET** /shuttle/integration/status/{jobId} | Polls the status of an integration
[**read_integration_definition**](ShuttleApi.md#read_integration_definition) | **GET** /shuttle/integration/definition/{integrationName} | Gets an existing integration definition
[**update_integration_definition**](ShuttleApi.md#update_integration_definition) | **PATCH** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition



## create_integration_definition

> String create_integration_definition(integration_name, integration)

Creates a new integration definition for running recurring integrations

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

api_instance = OpenapiClient::ShuttleApi.new
integration_name = 'integration_name_example' # String | 
integration = OpenapiClient::Integration.new # Integration | 

begin
  #Creates a new integration definition for running recurring integrations
  result = api_instance.create_integration_definition(integration_name, integration)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->create_integration_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **String**|  | 
 **integration** | [**Integration**](Integration.md)|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_integration_definition

> delete_integration_definition(integration_name)

Replaces any number of fields within an existing integration definition

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

api_instance = OpenapiClient::ShuttleApi.new
integration_name = 'integration_name_example' # String | 

begin
  #Replaces any number of fields within an existing integration definition
  api_instance.delete_integration_definition(integration_name)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->delete_integration_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_integration_job_status

> delete_integration_job_status(job_id)

Deletes an integration job status from the integrationJobs map

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

api_instance = OpenapiClient::ShuttleApi.new
job_id = 'job_id_example' # String | the unique id of the integration job

begin
  #Deletes an integration job status from the integrationJobs map
  api_instance.delete_integration_job_status(job_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->delete_integration_job_status: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**String**](.md)| the unique id of the integration job | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enqueue_integration

> String enqueue_integration(integration_name, integration_key)

Enqueues an integration on Shuttle Server for a given integration

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

api_instance = OpenapiClient::ShuttleApi.new
integration_name = 'integration_name_example' # String | the name of the integration to be run
integration_key = 'integration_key_example' # String | the unique id used to authenticate an integration run

begin
  #Enqueues an integration on Shuttle Server for a given integration
  result = api_instance.enqueue_integration(integration_name, integration_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->enqueue_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **String**| the name of the integration to be run | 
 **integration_key** | [**String**](.md)| the unique id used to authenticate an integration run | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## poll_all_integrations

> Hash&lt;String, IntegrationJob&gt; poll_all_integrations

Polls the statuses of all running integrations

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

api_instance = OpenapiClient::ShuttleApi.new

begin
  #Polls the statuses of all running integrations
  result = api_instance.poll_all_integrations
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->poll_all_integrations: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, IntegrationJob&gt;**](IntegrationJob.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## poll_integration

> IntegrationStatus poll_integration(job_id)

Polls the status of an integration

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

api_instance = OpenapiClient::ShuttleApi.new
job_id = 'job_id_example' # String | the unique id of the integration job

begin
  #Polls the status of an integration
  result = api_instance.poll_integration(job_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->poll_integration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**String**](.md)| the unique id of the integration job | 

### Return type

[**IntegrationStatus**](IntegrationStatus.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## read_integration_definition

> Integration read_integration_definition(integration_name)

Gets an existing integration definition

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

api_instance = OpenapiClient::ShuttleApi.new
integration_name = 'integration_name_example' # String | 

begin
  #Gets an existing integration definition
  result = api_instance.read_integration_definition(integration_name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->read_integration_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **String**|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_integration_definition

> update_integration_definition(integration_name, integration_update)

Replaces any number of fields within an existing integration definition

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

api_instance = OpenapiClient::ShuttleApi.new
integration_name = 'integration_name_example' # String | 
integration_update = OpenapiClient::IntegrationUpdate.new # IntegrationUpdate | 

begin
  #Replaces any number of fields within an existing integration definition
  api_instance.update_integration_definition(integration_name, integration_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling ShuttleApi->update_integration_definition: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **String**|  | 
 **integration_update** | [**IntegrationUpdate**](IntegrationUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

