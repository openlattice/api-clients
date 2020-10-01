# OpenapiClient::EntitySetsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_entity_sets_to_linking_entity_set**](EntitySetsApi.md#add_entity_sets_to_linking_entity_set) | **POST** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
[**add_entity_sets_to_linking_entity_sets**](EntitySetsApi.md#add_entity_sets_to_linking_entity_sets) | **PUT** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
[**create_entity_sets**](EntitySetsApi.md#create_entity_sets) | **POST** /datastore/entity-sets | Creates new EntitySet definitions if they don&#39;t exist.
[**delete_entity_set**](EntitySetsApi.md#delete_entity_set) | **DELETE** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**get_all_entity_set_property_metadata**](EntitySetsApi.md#get_all_entity_set_property_metadata) | **GET** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
[**get_all_entity_sets**](EntitySetsApi.md#get_all_entity_sets) | **GET** /datastore/entity-sets | Get all EntitySet definitions.
[**get_entity_set**](EntitySetsApi.md#get_entity_set) | **GET** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**get_entity_set_id**](EntitySetsApi.md#get_entity_set_id) | **GET** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**get_entity_set_ids**](EntitySetsApi.md#get_entity_set_ids) | **POST** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
[**get_entity_set_property_metadata**](EntitySetsApi.md#get_entity_set_property_metadata) | **GET** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**get_property_metadata_for_entity_sets**](EntitySetsApi.md#get_property_metadata_for_entity_sets) | **POST** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
[**get_property_types_for_entity_set**](EntitySetsApi.md#get_property_types_for_entity_set) | **GET** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
[**remove_entity_sets_from_linking_entity_set**](EntitySetsApi.md#remove_entity_sets_from_linking_entity_set) | **DELETE** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
[**remove_entity_sets_from_linking_entity_sets**](EntitySetsApi.md#remove_entity_sets_from_linking_entity_sets) | **DELETE** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
[**repartition_entity_set**](EntitySetsApi.md#repartition_entity_set) | **PUT** /datastore/entity-sets/{entitySetId}/partitions | Used to repartition an entity set. This will shuffle corresponding ids, edges, and data table rows for the entity set.
[**update_entity_set_meta_data**](EntitySetsApi.md#update_entity_set_meta_data) | **PATCH** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**update_entity_set_property_metadata**](EntitySetsApi.md#update_entity_set_property_metadata) | **POST** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.



## add_entity_sets_to_linking_entity_set

> Integer add_entity_sets_to_linking_entity_set(linking_entity_set_id, opts)

Adds the entity sets as linked entity sets to the linking entity set

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

api_instance = OpenapiClient::EntitySetsApi.new
linking_entity_set_id = 'linking_entity_set_id_example' # String | 
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Adds the entity sets as linked entity sets to the linking entity set
  result = api_instance.add_entity_sets_to_linking_entity_set(linking_entity_set_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->add_entity_sets_to_linking_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | [**String**](.md)|  | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_entity_sets_to_linking_entity_sets

> Integer add_entity_sets_to_linking_entity_sets(linking_entity_set_id, request_body)

Adds the entity sets as linked entity sets to the linking entity sets

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

api_instance = OpenapiClient::EntitySetsApi.new
linking_entity_set_id = 'linking_entity_set_id_example' # String | 
request_body = nil # Hash<String, Array<String>> | 

begin
  #Adds the entity sets as linked entity sets to the linking entity sets
  result = api_instance.add_entity_sets_to_linking_entity_sets(linking_entity_set_id, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->add_entity_sets_to_linking_entity_sets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | **String**|  | 
 **request_body** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_entity_sets

> create_entity_sets(entity_set)

Creates new EntitySet definitions if they don't exist.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set = [OpenapiClient::EntitySet.new] # Array<EntitySet> | 

begin
  #Creates new EntitySet definitions if they don't exist.
  api_instance.create_entity_sets(entity_set)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->create_entity_sets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set** | [**Array&lt;EntitySet&gt;**](EntitySet.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_entity_set

> delete_entity_set(entity_set_id)

Deletes the EntitySet definition for the given EntitySet UUID.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 

begin
  #Deletes the EntitySet definition for the given EntitySet UUID.
  api_instance.delete_entity_set(entity_set_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->delete_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_entity_set_property_metadata

> Hash&lt;String, EntitySetPropertyMetaData&gt; get_all_entity_set_property_metadata(entity_set_id)

Get all entity set property metadata.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 

begin
  #Get all entity set property metadata.
  result = api_instance.get_all_entity_set_property_metadata(entity_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_all_entity_set_property_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 

### Return type

[**Hash&lt;String, EntitySetPropertyMetaData&gt;**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_entity_sets

> Array&lt;EntitySet&gt; get_all_entity_sets

Get all EntitySet definitions.

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

api_instance = OpenapiClient::EntitySetsApi.new

begin
  #Get all EntitySet definitions.
  result = api_instance.get_all_entity_sets
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_all_entity_sets: #{e}"
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


## get_entity_set

> EntitySet get_entity_set(entity_set_id)

Get the EntitySet definition for the given EntitySet UUID.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 

begin
  #Get the EntitySet definition for the given EntitySet UUID.
  result = api_instance.get_entity_set(entity_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 

### Return type

[**EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_set_id

> String get_entity_set_id(entity_set_name)

Gets the EntitySet UUID for the given EntitySet name.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_name = 'entity_set_name_example' # String | 

begin
  #Gets the EntitySet UUID for the given EntitySet name.
  result = api_instance.get_entity_set_id(entity_set_name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_entity_set_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_name** | **String**|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_set_ids

> Hash&lt;String, String&gt; get_entity_set_ids(opts)

Get IDs for entity sets given their names.

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

api_instance = OpenapiClient::EntitySetsApi.new
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Get IDs for entity sets given their names.
  result = api_instance.get_entity_set_ids(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_entity_set_ids: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**Hash&lt;String, String&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_entity_set_property_metadata

> EntitySetPropertyMetaData get_entity_set_property_metadata(entity_set_id, property_type_id)

Get specified property type metadata for an entity set.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Get specified property type metadata for an entity set.
  result = api_instance.get_entity_set_property_metadata(entity_set_id, property_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_entity_set_property_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

[**EntitySetPropertyMetaData**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_metadata_for_entity_sets

> Hash&lt;String, Hash&lt;String, EntitySetPropertyMetaData&gt;&gt; get_property_metadata_for_entity_sets(opts)

Get property metadata for entity sets.

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

api_instance = OpenapiClient::EntitySetsApi.new
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Get property metadata for entity sets.
  result = api_instance.get_property_metadata_for_entity_sets(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_property_metadata_for_entity_sets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**Hash&lt;String, Hash&lt;String, EntitySetPropertyMetaData&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_property_types_for_entity_set

> Hash&lt;String, PropertyType&gt; get_property_types_for_entity_set(entity_set_id)

Get all Property Types for entity set

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 

begin
  #Get all Property Types for entity set
  result = api_instance.get_property_types_for_entity_set(entity_set_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->get_property_types_for_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 

### Return type

[**Hash&lt;String, PropertyType&gt;**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_entity_sets_from_linking_entity_set

> Integer remove_entity_sets_from_linking_entity_set(linking_entity_set_id, opts)

Removes/unlinks the linked entity sets from the linking entity set

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

api_instance = OpenapiClient::EntitySetsApi.new
linking_entity_set_id = 'linking_entity_set_id_example' # String | 
opts = {
  request_body: ['request_body_example'] # Array<String> | 
}

begin
  #Removes/unlinks the linked entity sets from the linking entity set
  result = api_instance.remove_entity_sets_from_linking_entity_set(linking_entity_set_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->remove_entity_sets_from_linking_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | **String**|  | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_entity_sets_from_linking_entity_sets

> Integer remove_entity_sets_from_linking_entity_sets(linking_entity_set_id, request_body)

Removes/unlinks the linked entity sets from the linking entity set

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

api_instance = OpenapiClient::EntitySetsApi.new
linking_entity_set_id = 'linking_entity_set_id_example' # String | 
request_body = nil # Hash<String, Array<String>> | 

begin
  #Removes/unlinks the linked entity sets from the linking entity set
  result = api_instance.remove_entity_sets_from_linking_entity_sets(linking_entity_set_id, request_body)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->remove_entity_sets_from_linking_entity_sets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | [**String**](.md)|  | 
 **request_body** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repartition_entity_set

> repartition_entity_set(entity_set_id, request_body)

Used to repartition an entity set. This will shuffle corresponding ids, edges, and data table rows for the entity set.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 
request_body = [56] # Array<Integer> | 

begin
  #Used to repartition an entity set. This will shuffle corresponding ids, edges, and data table rows for the entity set.
  api_instance.repartition_entity_set(entity_set_id, request_body)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->repartition_entity_set: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **request_body** | [**Array&lt;Integer&gt;**](Integer.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_entity_set_meta_data

> Integer update_entity_set_meta_data(entity_set_id, metadata_update)

Updates the EntitySet definition for the given EntitySet UUID with the given metadata.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
  result = api_instance.update_entity_set_meta_data(entity_set_id, metadata_update)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->update_entity_set_meta_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_entity_set_property_metadata

> update_entity_set_property_metadata(entity_set_id, property_type_id, metadata_update)

Updates the property type metadata for the given entity set.

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

api_instance = OpenapiClient::EntitySetsApi.new
entity_set_id = 'entity_set_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates the property type metadata for the given entity set.
  api_instance.update_entity_set_property_metadata(entity_set_id, property_type_id, metadata_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EntitySetsApi->update_entity_set_property_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

