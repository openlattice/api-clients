# OpenapiClient::CollectionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_type_to_entity_type_collection_template**](CollectionsApi.md#add_type_to_entity_type_collection_template) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId}/template | Appends type to template of the specified EntityTypeCollection
[**create_entity_set_collection**](CollectionsApi.md#create_entity_set_collection) | **POST** /datastore/collections/entity/set | Creates a new EntitySetCollection
[**create_entity_type_collection**](CollectionsApi.md#create_entity_type_collection) | **POST** /datastore/collections/entity/type | Creates a new EntityTypeCollection
[**delete_entity_set_collection**](CollectionsApi.md#delete_entity_set_collection) | **DELETE** /datastore/collections/entity/set/{entitySetCollectionId} | Deletes the specified EntitySetCollection
[**delete_entity_type_collection**](CollectionsApi.md#delete_entity_type_collection) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId} | Deletes the specified EntityTypeCollection
[**get_all_entity_set_collections**](CollectionsApi.md#get_all_entity_set_collections) | **GET** /datastore/collections/entity/set | Returns all EntitySetCollection objects
[**get_all_entity_type_collections**](CollectionsApi.md#get_all_entity_type_collections) | **GET** /datastore/collections/entity/type | Returns all EntityTypeCollection objects
[**get_entity_set_collection**](CollectionsApi.md#get_entity_set_collection) | **GET** /datastore/collections/entity/set/{entitySetCollectionId} | Returns the EntitySetCollection object for a given id
[**get_entity_set_collections_of_type**](CollectionsApi.md#get_entity_set_collections_of_type) | **GET** /datastore/collections/entity/type/entity/set/{entitySetCollectionId} | Returns all authorized EntitySetCollections for a given EntityTypeCollection id
[**get_entity_type_collection**](CollectionsApi.md#get_entity_type_collection) | **GET** /datastore/collections/entity/type/{entityTypeCollectionId} | Returns the EntityTypeCollection object for a given id
[**remove_type_from_entity_type_collection_template**](CollectionsApi.md#remove_type_from_entity_type_collection_template) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId}/template/{typeId} | Removes a key from an EntityTypeCollection template
[**update_entity_set_collection_metadata**](CollectionsApi.md#update_entity_set_collection_metadata) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId} | Updates metadata of the specified EntitySetCollection
[**update_entity_set_collection_template**](CollectionsApi.md#update_entity_set_collection_template) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId}/template | Updates template of the specified EntitySetCollection
[**update_entity_type_collection_metadata**](CollectionsApi.md#update_entity_type_collection_metadata) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId} | Updates metadata of the specified EntityTypeCollection



## add_type_to_entity_type_collection_template

> add_type_to_entity_type_collection_template(entity_type_collection_id, entity_type_collection)

Appends type to template of the specified EntityTypeCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_type_collection_id = 'entity_type_collection_id_example' # String | 
entity_type_collection = OpenapiClient::EntityTypeCollection.new # EntityTypeCollection | 

begin
  #Appends type to template of the specified EntityTypeCollection
  api_instance.add_type_to_entity_type_collection_template(entity_type_collection_id, entity_type_collection)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->add_type_to_entity_type_collection_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**String**](.md)|  | 
 **entity_type_collection** | [**EntityTypeCollection**](EntityTypeCollection.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_entity_set_collection

> String create_entity_set_collection(entity_set_collection)

Creates a new EntitySetCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_set_collection = OpenapiClient::EntitySetCollection.new # EntitySetCollection | 

begin
  #Creates a new EntitySetCollection
  result = api_instance.create_entity_set_collection(entity_set_collection)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->create_entity_set_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection** | [**EntitySetCollection**](EntitySetCollection.md)|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_entity_type_collection

> String create_entity_type_collection(entity_type_collection)

Creates a new EntityTypeCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_type_collection = OpenapiClient::EntityTypeCollection.new # EntityTypeCollection | 

begin
  #Creates a new EntityTypeCollection
  result = api_instance.create_entity_type_collection(entity_type_collection)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->create_entity_type_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection** | [**EntityTypeCollection**](EntityTypeCollection.md)|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_entity_set_collection

> delete_entity_set_collection(entity_set_collection_id)

Deletes the specified EntitySetCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_set_collection_id = 'entity_set_collection_id_example' # String | 

begin
  #Deletes the specified EntitySetCollection
  api_instance.delete_entity_set_collection(entity_set_collection_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->delete_entity_set_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_entity_type_collection

> delete_entity_type_collection(entity_type_collection_id)

Deletes the specified EntityTypeCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_type_collection_id = 'entity_type_collection_id_example' # String | 

begin
  #Deletes the specified EntityTypeCollection
  api_instance.delete_entity_type_collection(entity_type_collection_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->delete_entity_type_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_entity_set_collections

> Array&lt;EntitySetCollection&gt; get_all_entity_set_collections

Returns all EntitySetCollection objects

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

api_instance = OpenapiClient::CollectionsApi.new

begin
  #Returns all EntitySetCollection objects
  result = api_instance.get_all_entity_set_collections
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->get_all_entity_set_collections: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EntitySetCollection&gt;**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_entity_type_collections

> Array&lt;EntityTypeCollection&gt; get_all_entity_type_collections

Returns all EntityTypeCollection objects

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

api_instance = OpenapiClient::CollectionsApi.new

begin
  #Returns all EntityTypeCollection objects
  result = api_instance.get_all_entity_type_collections
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->get_all_entity_type_collections: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EntityTypeCollection&gt;**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_set_collection

> EntitySetCollection get_entity_set_collection(entity_set_collection_id)

Returns the EntitySetCollection object for a given id

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

api_instance = OpenapiClient::CollectionsApi.new
entity_set_collection_id = 'entity_set_collection_id_example' # String | 

begin
  #Returns the EntitySetCollection object for a given id
  result = api_instance.get_entity_set_collection(entity_set_collection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->get_entity_set_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**String**](.md)|  | 

### Return type

[**EntitySetCollection**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_set_collections_of_type

> Array&lt;EntitySetCollection&gt; get_entity_set_collections_of_type(entity_set_collection_id)

Returns all authorized EntitySetCollections for a given EntityTypeCollection id

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

api_instance = OpenapiClient::CollectionsApi.new
entity_set_collection_id = 'entity_set_collection_id_example' # String | 

begin
  #Returns all authorized EntitySetCollections for a given EntityTypeCollection id
  result = api_instance.get_entity_set_collections_of_type(entity_set_collection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->get_entity_set_collections_of_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;EntitySetCollection&gt;**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_type_collection

> EntityTypeCollection get_entity_type_collection(entity_type_collection_id)

Returns the EntityTypeCollection object for a given id

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

api_instance = OpenapiClient::CollectionsApi.new
entity_type_collection_id = 'entity_type_collection_id_example' # String | 

begin
  #Returns the EntityTypeCollection object for a given id
  result = api_instance.get_entity_type_collection(entity_type_collection_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->get_entity_type_collection: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**String**](.md)|  | 

### Return type

[**EntityTypeCollection**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_type_from_entity_type_collection_template

> remove_type_from_entity_type_collection_template(entity_type_collection_id, type_id)

Removes a key from an EntityTypeCollection template

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

api_instance = OpenapiClient::CollectionsApi.new
entity_type_collection_id = 'entity_type_collection_id_example' # String | 
type_id = 'type_id_example' # String | 

begin
  #Removes a key from an EntityTypeCollection template
  api_instance.remove_type_from_entity_type_collection_template(entity_type_collection_id, type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->remove_type_from_entity_type_collection_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**String**](.md)|  | 
 **type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_entity_set_collection_metadata

> update_entity_set_collection_metadata(entity_set_collection_id, metadata_update)

Updates metadata of the specified EntitySetCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_set_collection_id = 'entity_set_collection_id_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates metadata of the specified EntitySetCollection
  api_instance.update_entity_set_collection_metadata(entity_set_collection_id, metadata_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->update_entity_set_collection_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**String**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_entity_set_collection_template

> update_entity_set_collection_template(entity_set_collection_id, request_body)

Updates template of the specified EntitySetCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_set_collection_id = 'entity_set_collection_id_example' # String | 
request_body = {'key' => 'request_body_example'} # Hash<String, String> | 

begin
  #Updates template of the specified EntitySetCollection
  api_instance.update_entity_set_collection_template(entity_set_collection_id, request_body)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->update_entity_set_collection_template: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**String**](.md)|  | 
 **request_body** | [**Hash&lt;String, String&gt;**](String.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_entity_type_collection_metadata

> update_entity_type_collection_metadata(entity_type_collection_id, metadata_update)

Updates metadata of the specified EntityTypeCollection

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

api_instance = OpenapiClient::CollectionsApi.new
entity_type_collection_id = 'entity_type_collection_id_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates metadata of the specified EntityTypeCollection
  api_instance.update_entity_type_collection_metadata(entity_type_collection_id, metadata_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CollectionsApi->update_entity_type_collection_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**String**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

