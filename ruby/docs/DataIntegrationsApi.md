# OpenapiClient::DataIntegrationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entity_key_ids**](DataIntegrationsApi.md#get_entity_key_ids) | **POST** /datastore/integration/entityKeyIds | Get entity key IDs
[**integrate_entity_and_association_data**](DataIntegrationsApi.md#integrate_entity_and_association_data) | **POST** /datastore/integration | Integrate entity and association data



## get_entity_key_ids

> Array&lt;String&gt; get_entity_key_ids(entity_key)

Get entity key IDs

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

api_instance = OpenapiClient::DataIntegrationsApi.new
entity_key = [OpenapiClient::EntityKey.new] # Array<EntityKey> | 

begin
  #Get entity key IDs
  result = api_instance.get_entity_key_ids(entity_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataIntegrationsApi->get_entity_key_ids: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_key** | [**Array&lt;EntityKey&gt;**](EntityKey.md)|  | 

### Return type

**Array&lt;String&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## integrate_entity_and_association_data

> IntegrationResults integrate_entity_and_association_data(detailed_results, bulk_data_creation)

Integrate entity and association data

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

api_instance = OpenapiClient::DataIntegrationsApi.new
detailed_results = true # Boolean | 
bulk_data_creation = OpenapiClient::BulkDataCreation.new # BulkDataCreation | 

begin
  #Integrate entity and association data
  result = api_instance.integrate_entity_and_association_data(detailed_results, bulk_data_creation)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataIntegrationsApi->integrate_entity_and_association_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detailed_results** | **Boolean**|  | 
 **bulk_data_creation** | [**BulkDataCreation**](BulkDataCreation.md)|  | 

### Return type

[**IntegrationResults**](IntegrationResults.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

