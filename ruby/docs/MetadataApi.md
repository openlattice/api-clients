# OpenapiClient::MetadataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_data_set_column_metadata**](MetadataApi.md#get_data_set_column_metadata) | **GET** /datastore/metadata/columns/{dataId}/{columnId} | Gets the dataset column metadata objects using data ID and column ID
[**get_data_set_columns_metadata**](MetadataApi.md#get_data_set_columns_metadata) | **POST** /datastore/metadata/columns | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**get_data_set_metadata**](MetadataApi.md#get_data_set_metadata) | **GET** /datastore/metadata/datasets/{dataId} | Gets dataset metadata object with given data set ID
[**get_data_sets_metadata**](MetadataApi.md#get_data_sets_metadata) | **POST** /datastore/metadata/datasets | Gets the dataset metadata objects given data set ids the caller has READ permissions on
[**get_organization_data_sets_metadata**](MetadataApi.md#get_organization_data_sets_metadata) | **GET** /datastore/metadata/datasets/organizations/{organizationId} | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**update_data_set_column_metadata**](MetadataApi.md#update_data_set_column_metadata) | **PATCH** /datastore/metadata/update/{dataId}/{columnId} | Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
[**update_data_set_metadata**](MetadataApi.md#update_data_set_metadata) | **PATCH** /datastore/metadata/update/{dataId} | Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.



## get_data_set_column_metadata

> DataSetColumn get_data_set_column_metadata(data_id, column_id)

Gets the dataset column metadata objects using data ID and column ID

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

api_instance = OpenapiClient::MetadataApi.new
data_id = 'data_id_example' # String | 
column_id = 'column_id_example' # String | 

begin
  #Gets the dataset column metadata objects using data ID and column ID
  result = api_instance.get_data_set_column_metadata(data_id, column_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MetadataApi->get_data_set_column_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**String**](.md)|  | 
 **column_id** | [**String**](.md)|  | 

### Return type

[**DataSetColumn**](DataSetColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_set_columns_metadata

> Hash&lt;String, Array&lt;DataSetColumn&gt;&gt; get_data_set_columns_metadata(opts)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

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

api_instance = OpenapiClient::MetadataApi.new
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Gets all data set column metadata objects that caller has READ on that belong to given data set ids
  result = api_instance.get_data_set_columns_metadata(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MetadataApi->get_data_set_columns_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**Hash&lt;String, Array&lt;DataSetColumn&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_data_set_metadata

> DataSet get_data_set_metadata(data_id)

Gets dataset metadata object with given data set ID

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

api_instance = OpenapiClient::MetadataApi.new
data_id = 'data_id_example' # String | 

begin
  #Gets dataset metadata object with given data set ID
  result = api_instance.get_data_set_metadata(data_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MetadataApi->get_data_set_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**String**](.md)|  | 

### Return type

[**DataSet**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_data_sets_metadata

> Hash&lt;String, DataSet&gt; get_data_sets_metadata(opts)

Gets the dataset metadata objects given data set ids the caller has READ permissions on

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

api_instance = OpenapiClient::MetadataApi.new
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Gets the dataset metadata objects given data set ids the caller has READ permissions on
  result = api_instance.get_data_sets_metadata(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MetadataApi->get_data_sets_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**Hash&lt;String, DataSet&gt;**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_organization_data_sets_metadata

> Hash&lt;String, DataSet&gt; get_organization_data_sets_metadata(organization_id)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

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

api_instance = OpenapiClient::MetadataApi.new
organization_id = 'organization_id_example' # String | 

begin
  #Gets all data set column metadata objects that caller has READ on that belong to given data set ids
  result = api_instance.get_organization_data_sets_metadata(organization_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MetadataApi->get_organization_data_sets_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 

### Return type

[**Hash&lt;String, DataSet&gt;**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_data_set_column_metadata

> update_data_set_column_metadata(data_id, column_id, opts)

Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.

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

api_instance = OpenapiClient::MetadataApi.new
data_id = 'data_id_example' # String | 
column_id = 'column_id_example' # String | 
opts = {
  securable_object_metadata_update: OpenapiClient::SecurableObjectMetadataUpdate.new # SecurableObjectMetadataUpdate | 
}

begin
  #Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
  api_instance.update_data_set_column_metadata(data_id, column_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MetadataApi->update_data_set_column_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**String**](.md)|  | 
 **column_id** | [**String**](.md)|  | 
 **securable_object_metadata_update** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_data_set_metadata

> update_data_set_metadata(data_id, opts)

Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.

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

api_instance = OpenapiClient::MetadataApi.new
data_id = 'data_id_example' # String | 
opts = {
  securable_object_metadata_update: OpenapiClient::SecurableObjectMetadataUpdate.new # SecurableObjectMetadataUpdate | 
}

begin
  #Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
  api_instance.update_data_set_metadata(data_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling MetadataApi->update_data_set_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**String**](.md)|  | 
 **securable_object_metadata_update** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

