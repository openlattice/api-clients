# OpenapiClient::AdminApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clear_indexing_queue**](AdminApi.md#clear_indexing_queue) | **DELETE** /indexer/index/reindex | Clears all the data currently being indexed in the queue.
[**get_indexing_state**](AdminApi.md#get_indexing_state) | **GET** /indexer/index/reindex | Retrieve the current state of reindexing jobs
[**reindex**](AdminApi.md#reindex) | **POST** /indexer/index/reindex | Merge job descriptions for performing a partial or full reindex of provided entity sets.
[**update_reindex**](AdminApi.md#update_reindex) | **PUT** /indexer/index/reindex | Replaces job descriptions for performing a partial or full reindex of provided entity sets.



## clear_indexing_queue

> Integer clear_indexing_queue

Clears all the data currently being indexed in the queue.

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

api_instance = OpenapiClient::AdminApi.new

begin
  #Clears all the data currently being indexed in the queue.
  result = api_instance.clear_indexing_queue
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AdminApi->clear_indexing_queue: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_indexing_state

> IndexingState get_indexing_state

Retrieve the current state of reindexing jobs

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

api_instance = OpenapiClient::AdminApi.new

begin
  #Retrieve the current state of reindexing jobs
  result = api_instance.get_indexing_state
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AdminApi->get_indexing_state: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reindex

> IndexingState reindex(request_body)

Merge job descriptions for performing a partial or full reindex of provided entity sets.

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

api_instance = OpenapiClient::AdminApi.new
request_body = nil # Hash<String, Array<String>> | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.

begin
  #Merge job descriptions for performing a partial or full reindex of provided entity sets.
  result = api_instance.reindex(request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AdminApi->reindex: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_reindex

> IndexingState update_reindex(request_body)

Replaces job descriptions for performing a partial or full reindex of provided entity sets.

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

api_instance = OpenapiClient::AdminApi.new
request_body = nil # Hash<String, Array<String>> | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.

begin
  #Replaces job descriptions for performing a partial or full reindex of provided entity sets.
  result = api_instance.update_reindex(request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AdminApi->update_reindex: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

