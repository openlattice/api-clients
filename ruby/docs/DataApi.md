# OpenapiClient::DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_associations**](DataApi.md#create_associations) | **POST** /datastore/data/association | Creates a new set of associations.
[**create_edges**](DataApi.md#create_edges) | **PUT** /datastore/data/association | Creates a new set of associations.
[**create_entities**](DataApi.md#create_entities) | **POST** /datastore/data/set/ | Creates a new set of entities.
[**create_entity_and_association_data**](DataApi.md#create_entity_and_association_data) | **POST** /datastore/data | Creates entities and assocations
[**delete_all_entities_from_entity_set**](DataApi.md#delete_all_entities_from_entity_set) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**delete_entities**](DataApi.md#delete_entities) | **DELETE** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
[**delete_entities_and_neighbors**](DataApi.md#delete_entities_and_neighbors) | **POST** /datastore/data/set/{entitySetId}/neighbors | Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
[**delete_entity**](DataApi.md#delete_entity) | **DELETE** /datastore/data/{entitySetId}/{entityKeyId} | Deletes a single entity from an entity set.
[**delete_entity_properties**](DataApi.md#delete_entity_properties) | **DELETE** /datastore/data/{entitySetId}/{entityKeyId}/properties | Deletes properties from an entity.
[**get_entity**](DataApi.md#get_entity) | **GET** /datastore/data/{entitySetId}/{entityKeyId} | Loads a single entity by its entityKeyId and entitySetId
[**get_entity_property_values**](DataApi.md#get_entity_property_values) | **GET** /datastore/data/{entitySetId}/{entityKeyId}/{propertyTypeId} | Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
[**get_entity_set_size**](DataApi.md#get_entity_set_size) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**load_entity_set_data**](DataApi.md#load_entity_set_data) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**load_linked_entity_set_breakdown**](DataApi.md#load_linked_entity_set_breakdown) | **POST** /datastore/data/set/{linkedEntitySetId}/detailed | Loads a linked entity set breakdown with the selected linked entities and properties.
[**load_selected_entity_set_data**](DataApi.md#load_selected_entity_set_data) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUIDs
[**replace_association_data**](DataApi.md#replace_association_data) | **PATCH** /datastore/data/association | Replaces Association Data
[**replace_entity_properties**](DataApi.md#replace_entity_properties) | **PATCH** /datastore/data/set/{entitySetId} | Replaces Entity Properties
[**update_entities_in_entity_set**](DataApi.md#update_entities_in_entity_set) | **PUT** /datastore/data/set/{entitySetId} | Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.



## create_associations

> Hash&lt;String, Array&lt;String&gt;&gt; create_associations(inline_object)

Creates a new set of associations.

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

api_instance = OpenapiClient::DataApi.new
inline_object = OpenapiClient::InlineObject.new # InlineObject | 

begin
  #Creates a new set of associations.
  result = api_instance.create_associations(inline_object)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->create_associations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_edges

> Integer create_edges(data_edge_key)

Creates a new set of associations.

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

api_instance = OpenapiClient::DataApi.new
data_edge_key = [OpenapiClient::DataEdgeKey.new] # Array<DataEdgeKey> | 

begin
  #Creates a new set of associations.
  result = api_instance.create_edges(data_edge_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->create_edges: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_edge_key** | [**Array&lt;DataEdgeKey&gt;**](DataEdgeKey.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_entities

> Array&lt;String&gt; create_entities(set_id, request_body)

Creates a new set of entities.

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

api_instance = OpenapiClient::DataApi.new
set_id = 'set_id_example' # String | 
request_body = nil # Array<Hash<String, Array<String>>> | 

begin
  #Creates a new set of entities.
  result = api_instance.create_entities(set_id, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->create_entities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_id** | [**String**](.md)|  | 
 **request_body** | [**Array&lt;Hash&lt;String, Array&lt;String&gt;&gt;&gt;**](Hash.md)|  | 

### Return type

**Array&lt;String&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_entity_and_association_data

> DataGraphIds create_entity_and_association_data(data_graph)

Creates entities and assocations

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

api_instance = OpenapiClient::DataApi.new
data_graph = OpenapiClient::DataGraph.new # DataGraph | 

begin
  #Creates entities and assocations
  result = api_instance.create_entity_and_association_data(data_graph)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->create_entity_and_association_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_graph** | [**DataGraph**](DataGraph.md)|  | 

### Return type

[**DataGraphIds**](DataGraphIds.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_all_entities_from_entity_set

> delete_all_entities_from_entity_set(entity_set_id, type)

Clears the Entity matching the given Entity id and all of its neighbor Entities

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
type = 'type_example' # String | 

begin
  #Clears the Entity matching the given Entity id and all of its neighbor Entities
  api_instance.delete_all_entities_from_entity_set(entity_set_id, type)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->delete_all_entities_from_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **type** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_entities

> Integer delete_entities(entity_set_id, type, request_body)

Deletes multiple entities from an entity set.

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
type = 'type_example' # String | 
request_body = ['request_body_example'] # Array<String> | 

begin
  #Deletes multiple entities from an entity set.
  result = api_instance.delete_entities(entity_set_id, type, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->delete_entities: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **type** | **String**|  | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_entities_and_neighbors

> Integer delete_entities_and_neighbors(entity_set_id, type, entity_neighbors_filter)

Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
type = 'type_example' # String | 
entity_neighbors_filter = [OpenapiClient::EntityNeighborsFilter.new] # Array<EntityNeighborsFilter> | 

begin
  #Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
  result = api_instance.delete_entities_and_neighbors(entity_set_id, type, entity_neighbors_filter)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->delete_entities_and_neighbors: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **type** | **String**|  | 
 **entity_neighbors_filter** | [**Array&lt;EntityNeighborsFilter&gt;**](EntityNeighborsFilter.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_entity

> delete_entity(entity_set_id, entity_key_id, type)

Deletes a single entity from an entity set.

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
entity_key_id = 'entity_key_id_example' # String | 
type = 'type_example' # String | 

begin
  #Deletes a single entity from an entity set.
  api_instance.delete_entity(entity_set_id, entity_key_id, type)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->delete_entity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **entity_key_id** | [**String**](.md)|  | 
 **type** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_entity_properties

> delete_entity_properties(entity_set_id, entity_key_id, type, request_body)

Deletes properties from an entity.

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
entity_key_id = 'entity_key_id_example' # String | 
type = 'type_example' # String | 
request_body = ['request_body_example'] # Array<String> | 

begin
  #Deletes properties from an entity.
  api_instance.delete_entity_properties(entity_set_id, entity_key_id, type, request_body)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->delete_entity_properties: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **entity_key_id** | [**String**](.md)|  | 
 **type** | **String**|  | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_entity

> Hash&lt;String, Array&lt;String&gt;&gt; get_entity(entity_set_id, entity_key_id)

Loads a single entity by its entityKeyId and entitySetId

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
entity_key_id = 'entity_key_id_example' # String | 

begin
  #Loads a single entity by its entityKeyId and entitySetId
  result = api_instance.get_entity(entity_set_id, entity_key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->get_entity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **entity_key_id** | [**String**](.md)|  | 

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_property_values

> Array&lt;String&gt; get_entity_property_values(entity_set_id, entity_key_id, property_type_id)

Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
entity_key_id = 'entity_key_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
  result = api_instance.get_entity_property_values(entity_set_id, entity_key_id, property_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->get_entity_property_values: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **entity_key_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

**Array&lt;String&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_set_size

> Integer get_entity_set_size(entity_set_id)

Gets the number of entities in an entity set.

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 

begin
  #Gets the number of entities in an entity set.
  result = api_instance.get_entity_set_size(entity_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->get_entity_set_size: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## load_entity_set_data

> Array&lt;Hash&lt;String, Array&lt;String&gt;&gt;&gt; load_entity_set_data(entity_set_id)

Gets an iterable containing the entity data, using property type FQNs as key

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 

begin
  #Gets an iterable containing the entity data, using property type FQNs as key
  result = api_instance.load_entity_set_data(entity_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->load_entity_set_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 

### Return type

**Array&lt;Hash&lt;String, Array&lt;String&gt;&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## load_linked_entity_set_breakdown

> Hash&lt;String, Hash&lt;String, Hash&lt;String, Hash&lt;String, Array&lt;String&gt;&gt;&gt;&gt;&gt; load_linked_entity_set_breakdown(linked_entity_set_id, entity_set_selection)

Loads a linked entity set breakdown with the selected linked entities and properties.

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

api_instance = OpenapiClient::DataApi.new
linked_entity_set_id = 'linked_entity_set_id_example' # String | 
entity_set_selection = [OpenapiClient::EntitySetSelection.new] # Array<EntitySetSelection> | 

begin
  #Loads a linked entity set breakdown with the selected linked entities and properties.
  result = api_instance.load_linked_entity_set_breakdown(linked_entity_set_id, entity_set_selection)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->load_linked_entity_set_breakdown: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linked_entity_set_id** | [**String**](.md)|  | 
 **entity_set_selection** | [**Array&lt;EntitySetSelection&gt;**](EntitySetSelection.md)|  | 

### Return type

**Hash&lt;String, Hash&lt;String, Hash&lt;String, Hash&lt;String, Array&lt;String&gt;&gt;&gt;&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## load_selected_entity_set_data

> Array&lt;Hash&lt;String, Array&lt;String&gt;&gt;&gt; load_selected_entity_set_data(entity_set_id, entity_set_selection)

Gets a list of entities by UUIDs

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
entity_set_selection = [OpenapiClient::EntitySetSelection.new] # Array<EntitySetSelection> | 

begin
  #Gets a list of entities by UUIDs
  result = api_instance.load_selected_entity_set_data(entity_set_id, entity_set_selection)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->load_selected_entity_set_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **entity_set_selection** | [**Array&lt;EntitySetSelection&gt;**](EntitySetSelection.md)|  | 

### Return type

**Array&lt;Hash&lt;String, Array&lt;String&gt;&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replace_association_data

> Integer replace_association_data(partial, request_body)

Replaces Association Data

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

api_instance = OpenapiClient::DataApi.new
partial = true # Boolean | 
request_body = nil # Hash<String, Hash<String, DataEdge>> | 

begin
  #Replaces Association Data
  result = api_instance.replace_association_data(partial, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->replace_association_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partial** | **Boolean**|  | 
 **request_body** | [**Hash&lt;String, Hash&lt;String, DataEdge&gt;&gt;**](Hash.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replace_entity_properties

> Integer replace_entity_properties(entity_set_id, request_body)

Replaces Entity Properties

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
request_body = nil # Hash<String, Hash<String, Array<Hash<String, String>>>> | 

begin
  #Replaces Entity Properties
  result = api_instance.replace_entity_properties(entity_set_id, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->replace_entity_properties: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **request_body** | [**Hash&lt;String, Hash&lt;String, Array&lt;Hash&lt;String, String&gt;&gt;&gt;&gt;**](Hash.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_entities_in_entity_set

> Integer update_entities_in_entity_set(entity_set_id, type, request_body)

Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.

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

api_instance = OpenapiClient::DataApi.new
entity_set_id = 'entity_set_id_example' # String | 
type = 'type_example' # String | 
request_body = nil # Hash<String, Hash<String, Array<String>>> | 

begin
  #Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.
  result = api_instance.update_entities_in_entity_set(entity_set_id, type, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DataApi->update_entities_in_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **type** | **String**|  | 
 **request_body** | [**Hash&lt;String, Hash&lt;String, Array&lt;String&gt;&gt;&gt;**](Hash.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

