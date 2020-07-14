# OpenapiClient::SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execute_advanced_entity_set_data_query**](SearchApi.md#execute_advanced_entity_set_data_query) | **POST** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_app_search**](SearchApi.md#execute_app_search) | **POST** /datastore/search/app | Executes a search over all apps to find ones that match the given search term
[**execute_app_type_search**](SearchApi.md#execute_app_type_search) | **POST** /datastore/search/app_types | Executes a search over all app types to find ones that match the given search term
[**execute_association_type_search**](SearchApi.md#execute_association_type_search) | **POST** /datastore/search/association_types | Executes a search over all association types to find ones that match the given search term
[**execute_entity_neighbor_search**](SearchApi.md#execute_entity_neighbor_search) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**execute_entity_neighbor_search_bulk**](SearchApi.md#execute_entity_neighbor_search_bulk) | **POST** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**execute_entity_set_collection_search**](SearchApi.md#execute_entity_set_collection_search) | **POST** /datastore/search/entity_sets/collections | Executes a search over all EntitySetCollections to find ones that match the given search term
[**execute_entity_set_data_query**](SearchApi.md#execute_entity_set_data_query) | **POST** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_entity_set_keyword_query**](SearchApi.md#execute_entity_set_keyword_query) | **POST** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
[**execute_entity_type_collection_search**](SearchApi.md#execute_entity_type_collection_search) | **POST** /datastore/search/entity_types/collections | Executes a search over all EntityTypeCollections to find ones that match the given search term
[**execute_entity_type_search**](SearchApi.md#execute_entity_type_search) | **POST** /datastore/search/entity_types | Executes a search over all entity types to find ones that match the given search term
[**execute_filtered_entity_neighbor_id_search**](SearchApi.md#execute_filtered_entity_neighbor_id_search) | **POST** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**execute_filtered_entity_neighbor_search**](SearchApi.md#execute_filtered_entity_neighbor_search) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**execute_fqn_property_type_search**](SearchApi.md#execute_fqn_property_type_search) | **POST** /datastore/search/property_types/fqn | Executes a search over all property types to find ones that match the given name and namespace, including partial matches
[**execute_organization_search**](SearchApi.md#execute_organization_search) | **POST** /datastore/search/organizations | Executes a search over all organizations to find ones that match the given search term
[**execute_property_type_search**](SearchApi.md#execute_property_type_search) | **POST** /datastore/search/property_types | Executes a search over all property types to find ones that match the given search term
[**get_entity_sets**](SearchApi.md#get_entity_sets) | **GET** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
[**get_popular_entity_set**](SearchApi.md#get_popular_entity_set) | **GET** /datastore/search/popular | Get the most popular entity sets.
[**search_entity_set_data**](SearchApi.md#search_entity_set_data) | **PATCH** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term



## execute_advanced_entity_set_data_query

> DataSearchResult execute_advanced_entity_set_data_query(entity_set_id, advanced_search)

Executes a search over the data of a given entity set to find rows that match the search term

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

api_instance = OpenapiClient::SearchApi.new
entity_set_id = 'entity_set_id_example' # String | 
advanced_search = OpenapiClient::AdvancedSearch.new # AdvancedSearch | 

begin
  #Executes a search over the data of a given entity set to find rows that match the search term
  result = api_instance.execute_advanced_entity_set_data_query(entity_set_id, advanced_search)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_advanced_entity_set_data_query: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **advanced_search** | [**AdvancedSearch**](AdvancedSearch.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_app_search

> SearchResult execute_app_search(search_term)

Executes a search over all apps to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all apps to find ones that match the given search term
  result = api_instance.execute_app_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_app_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_app_type_search

> SearchResult execute_app_type_search(search_term)

Executes a search over all app types to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all app types to find ones that match the given search term
  result = api_instance.execute_app_type_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_app_type_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_association_type_search

> SearchResult execute_association_type_search(search_term)

Executes a search over all association types to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all association types to find ones that match the given search term
  result = api_instance.execute_association_type_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_association_type_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_entity_neighbor_search

> Array&lt;NeighborEntityDetails&gt; execute_entity_neighbor_search(entity_set_id, entity_key_id)

Executes a search for all neighbors of an entity that are connected by an association

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

api_instance = OpenapiClient::SearchApi.new
entity_set_id = 'entity_set_id_example' # String | 
entity_key_id = 'entity_key_id_example' # String | 

begin
  #Executes a search for all neighbors of an entity that are connected by an association
  result = api_instance.execute_entity_neighbor_search(entity_set_id, entity_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_entity_neighbor_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **entity_key_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;NeighborEntityDetails&gt;**](NeighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## execute_entity_neighbor_search_bulk

> Hash&lt;String, Array&lt;NeighborEntityDetails&gt;&gt; execute_entity_neighbor_search_bulk(entity_set_id, request_body)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

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

api_instance = OpenapiClient::SearchApi.new
entity_set_id = 'entity_set_id_example' # String | 
request_body = ['request_body_example'] # Array<String> | 

begin
  #Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
  result = api_instance.execute_entity_neighbor_search_bulk(entity_set_id, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_entity_neighbor_search_bulk: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | 

### Return type

**Hash&lt;String, Array&lt;NeighborEntityDetails&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_entity_set_collection_search

> SearchResult execute_entity_set_collection_search(search_term)

Executes a search over all EntitySetCollections to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all EntitySetCollections to find ones that match the given search term
  result = api_instance.execute_entity_set_collection_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_entity_set_collection_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_entity_set_data_query

> DataSearchResult execute_entity_set_data_query(entity_set_id, search_term)

Executes a search over the data of a given entity set to find rows that match the search term

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

api_instance = OpenapiClient::SearchApi.new
entity_set_id = 'entity_set_id_example' # String | 
search_term = OpenapiClient::SearchTerm.new # SearchTerm | A JSON object that contains three parameters, \"start\", which specifies the hit number to start returning results on for paging, \"maxHits\", which specifies the maximum number of hits to return, and \"searchTerm\", which is the search term results will match on.

begin
  #Executes a search over the data of a given entity set to find rows that match the search term
  result = api_instance.execute_entity_set_data_query(entity_set_id, search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_entity_set_data_query: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **search_term** | [**SearchTerm**](SearchTerm.md)| A JSON object that contains three parameters, \&quot;start\&quot;, which specifies the hit number to start returning results on for paging, \&quot;maxHits\&quot;, which specifies the maximum number of hits to return, and \&quot;searchTerm\&quot;, which is the search term results will match on. | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_entity_set_keyword_query

> SearchResult execute_entity_set_keyword_query(search)

The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.

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

api_instance = OpenapiClient::SearchApi.new
search = OpenapiClient::Search.new # Search | 

begin
  #The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
  result = api_instance.execute_entity_set_keyword_query(search)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_entity_set_keyword_query: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**Search**](Search.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_entity_type_collection_search

> SearchResult execute_entity_type_collection_search(search_term)

Executes a search over all EntityTypeCollections to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all EntityTypeCollections to find ones that match the given search term
  result = api_instance.execute_entity_type_collection_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_entity_type_collection_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_entity_type_search

> SearchResult execute_entity_type_search(search_term)

Executes a search over all entity types to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all entity types to find ones that match the given search term
  result = api_instance.execute_entity_type_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_entity_type_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_filtered_entity_neighbor_id_search

> Hash&lt;String, Hash&lt;String, Hash&lt;String, Array&lt;NeighborEntityIds&gt;&gt;&gt;&gt; execute_filtered_entity_neighbor_id_search(entity_set_id, neighbor_search_filter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails

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

api_instance = OpenapiClient::SearchApi.new
entity_set_id = 'entity_set_id_example' # String | 
neighbor_search_filter = OpenapiClient::NeighborSearchFilter.new # NeighborSearchFilter | 

begin
  #Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
  result = api_instance.execute_filtered_entity_neighbor_id_search(entity_set_id, neighbor_search_filter)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_filtered_entity_neighbor_id_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**Hash&lt;String, Hash&lt;String, Hash&lt;String, Array&lt;NeighborEntityIds&gt;&gt;&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_filtered_entity_neighbor_search

> Hash&lt;String, Array&lt;NeighborEntityDetails&gt;&gt; execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

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

api_instance = OpenapiClient::SearchApi.new
entity_set_id = 'entity_set_id_example' # String | 
neighbor_search_filter = OpenapiClient::NeighborSearchFilter.new # NeighborSearchFilter | 

begin
  #Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
  result = api_instance.execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_filtered_entity_neighbor_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**Hash&lt;String, Array&lt;NeighborEntityDetails&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_fqn_property_type_search

> SearchResult execute_fqn_property_type_search(search_term)

Executes a search over all property types to find ones that match the given name and namespace, including partial matches

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all property types to find ones that match the given name and namespace, including partial matches
  result = api_instance.execute_fqn_property_type_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_fqn_property_type_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_organization_search

> SearchResult execute_organization_search(search_term)

Executes a search over all organizations to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all organizations to find ones that match the given search term
  result = api_instance.execute_organization_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_organization_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_property_type_search

> SearchResult execute_property_type_search(search_term)

Executes a search over all property types to find ones that match the given search term

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

api_instance = OpenapiClient::SearchApi.new
search_term = OpenapiClient::SearchTerm.new # SearchTerm | 

begin
  #Executes a search over all property types to find ones that match the given search term
  result = api_instance.execute_property_type_search(search_term)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->execute_property_type_search: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_entity_sets

> Array&lt;SearchResult&gt; get_entity_sets(start, num_results)

Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.

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

api_instance = OpenapiClient::SearchApi.new
start = 56 # Integer | The first result number to return
num_results = 56 # Integer | The total number of results to return

begin
  #Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
  result = api_instance.get_entity_sets(start, num_results)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->get_entity_sets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| The first result number to return | 
 **num_results** | **Integer**| The total number of results to return | 

### Return type

[**Array&lt;SearchResult&gt;**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_popular_entity_set

> Array&lt;EntitySet&gt; get_popular_entity_set

Get the most popular entity sets.

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

api_instance = OpenapiClient::SearchApi.new

begin
  #Get the most popular entity sets.
  result = api_instance.get_popular_entity_set
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->get_popular_entity_set: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EntitySet&gt;**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_entity_set_data

> DataSearchResult search_entity_set_data(search_constraints)

Executes a search over the data of a given entity set to find rows that match the search term

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

api_instance = OpenapiClient::SearchApi.new
search_constraints = OpenapiClient::SearchConstraints.new # SearchConstraints | 

begin
  #Executes a search over the data of a given entity set to find rows that match the search term
  result = api_instance.search_entity_set_data(search_constraints)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling SearchApi->search_entity_set_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_constraints** | [**SearchConstraints**](SearchConstraints.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

