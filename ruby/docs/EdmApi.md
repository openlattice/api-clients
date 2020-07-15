# OpenapiClient::EdmApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_dst_entity_type_to_association_type**](EdmApi.md#add_dst_entity_type_to_association_type) | **PUT** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**add_primary_key_to_entity_type**](EdmApi.md#add_primary_key_to_entity_type) | **PUT** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Adds a primary key with a given ID to an entity type with a given ID.
[**add_property_type_to_entity_type**](EdmApi.md#add_property_type_to_entity_type) | **PUT** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
[**add_src_entity_type_to_association_type**](EdmApi.md#add_src_entity_type_to_association_type) | **PUT** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**create_association_type**](EdmApi.md#create_association_type) | **POST** /datastore/edm/association/type/ | Creates a new AssociationType definition, if it doesn&#39;t exist.
[**create_empty_schema**](EdmApi.md#create_empty_schema) | **PUT** /datastore/edm/schema/{namespace}/{name} | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**create_entity_type**](EdmApi.md#create_entity_type) | **POST** /datastore/edm/entity/type/ | Creates a new EntityType definition, if it doesn&#39;t exist.
[**create_property_type**](EdmApi.md#create_property_type) | **POST** /datastore/edm/property/type/ | Creates a new PropertyType definition, if it doesn\&quot;t exist.
[**create_schema_if_not_exists**](EdmApi.md#create_schema_if_not_exists) | **POST** /datastore/edm/schema | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**delete_association_type**](EdmApi.md#delete_association_type) | **DELETE** /datastore/edm/association/type/{associationTypeId} | Deletes the AssociationType definition for the given AssociationType UUID.
[**delete_entity_type**](EdmApi.md#delete_entity_type) | **DELETE** /datastore/edm/entity/type/{entityTypeId} | Deletes the EntityType definition for the given EntityType UUID.
[**delete_property_type**](EdmApi.md#delete_property_type) | **DELETE** /datastore/edm/property/type/{propertyTypeId} | Deletes the PropertyType definition for the given PropertyType UUID.
[**force_delete_property_type**](EdmApi.md#force_delete_property_type) | **DELETE** /datastore/edm/property/type/{propertyTypeId}/force | Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
[**force_remove_property_type_from_entity_type**](EdmApi.md#force_remove_property_type_from_entity_type) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId}/force | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
[**get_all_association_entity_types**](EdmApi.md#get_all_association_entity_types) | **GET** /datastore/edm/association/type/ | Gets all association EntityType definitions.
[**get_all_available_association_types**](EdmApi.md#get_all_available_association_types) | **GET** /datastore/edm/association/type/{associationTypeId}/available | Get all available associations for the given AssociationType UUID.
[**get_all_entity_type_property_metadata**](EdmApi.md#get_all_entity_type_property_metadata) | **GET** /datastore/edm/entity/type/{entityTypeId}/property/type | Get all EntityType propertyType metadata
[**get_all_entity_types**](EdmApi.md#get_all_entity_types) | **GET** /datastore/edm/entity/type/ | Gets all EntityType definitions.
[**get_all_property_types**](EdmApi.md#get_all_property_types) | **GET** /datastore/edm/property/type/ | Gets all PropertyType definitions.
[**get_all_property_types_in_namespace**](EdmApi.md#get_all_property_types_in_namespace) | **GET** /datastore/edm/property/type/namespace/{namespace} | Gets all PropertyType definitions under the given namespace.
[**get_all_property_usage_summaries**](EdmApi.md#get_all_property_usage_summaries) | **GET** /datastore/edm/summary | Get Property Usage Summary for all properties.
[**get_association_type**](EdmApi.md#get_association_type) | **GET** /datastore/edm/association/type/{associationTypeId} | Get the AssociationType definition for the given AssociationType UUID.
[**get_association_type_details**](EdmApi.md#get_association_type_details) | **GET** /datastore/edm/association/type/{associationTypeId}/detailed | Get details about the AssociationType for the given AssociationType UUID.
[**get_entity_data_model**](EdmApi.md#get_entity_data_model) | **GET** /datastore/edm/ | Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
[**get_entity_data_model_diff**](EdmApi.md#get_entity_data_model_diff) | **POST** /datastore/edm/diff/ | Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
[**get_entity_type**](EdmApi.md#get_entity_type) | **GET** /datastore/edm/entity/type/{entityTypeId} | Gets the EntityType definition for the given EntityType UUID.
[**get_entity_type_hierarchy**](EdmApi.md#get_entity_type_hierarchy) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/hierarchy | Get the EntityType hierarchy for the given EntityType UUID.
[**get_entity_type_id**](EdmApi.md#get_entity_type_id) | **GET** /datastore/edm/ids/entity/type/{namespace}/{name} | Gets the EntityType UUID for the given EntityType FQN.
[**get_entity_type_property_metadata**](EdmApi.md#get_entity_type_property_metadata) | **GET** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Get EntityType propertyType metadata
[**get_property_type**](EdmApi.md#get_property_type) | **GET** /datastore/edm/property/type/{propertyTypeId} | Gets the PropertyType definition for the given PropertyType UUID.
[**get_property_type_id**](EdmApi.md#get_property_type_id) | **GET** /datastore/edm/ids/property/type/{namespace}/{name} | Gets the PropertyType UUID for the given PropertyType FQN.
[**get_property_usage_summary**](EdmApi.md#get_property_usage_summary) | **GET** /datastore/edm/summary/{propertyTypeId} | Get Property Usage Summary for property with given ID.
[**get_schema_contents**](EdmApi.md#get_schema_contents) | **GET** /datastore/edm/schema/{namespace}/{name} | Gets the schema contents for a corresponding namespace and name.
[**get_schemas**](EdmApi.md#get_schemas) | **GET** /datastore/edm/schema | Gets all schemas.
[**get_schemas_in_namespace**](EdmApi.md#get_schemas_in_namespace) | **GET** /datastore/edm/schema/{namespace} | Gets all schemas associated with a given namespace and accessible by the caller.
[**remove_dst_entity_type_from_association_type**](EdmApi.md#remove_dst_entity_type_from_association_type) | **DELETE** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**remove_primary_key_from_entity_type**](EdmApi.md#remove_primary_key_from_entity_type) | **DELETE** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Removes a primary key with a given ID from an entity type with a given ID.
[**remove_property_type_from_entity_type**](EdmApi.md#remove_property_type_from_entity_type) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
[**remove_src_entity_type_from_association_type**](EdmApi.md#remove_src_entity_type_from_association_type) | **DELETE** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**reorder_property_types_in_entity_type**](EdmApi.md#reorder_property_types_in_entity_type) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/property/type | Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
[**update_entity_data_model**](EdmApi.md#update_entity_data_model) | **PATCH** /datastore/edm/ | Updates the entity data model, including schemas, entity types, association types, and property types.
[**update_entity_type_meta_data**](EdmApi.md#update_entity_type_meta_data) | **PATCH** /datastore/edm/entity/type/{entityTypeId} | Updates the EntityType definition for the given EntityType UUID with the given metadata.
[**update_entity_type_property_metadata**](EdmApi.md#update_entity_type_property_metadata) | **POST** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Update EntityType Property metadata
[**update_property_type_meta_data**](EdmApi.md#update_property_type_meta_data) | **PATCH** /datastore/edm/property/type/{propertyTypeId} | Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
[**update_schema**](EdmApi.md#update_schema) | **PATCH** /datastore/edm/schema/{namespace}/{name} | Edits the schema contents for a corresponding namespace and name.



## add_dst_entity_type_to_association_type

> add_dst_entity_type_to_association_type(association_type_id, entity_type_id)

Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.

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

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
  api_instance.add_dst_entity_type_to_association_type(association_type_id, entity_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->add_dst_entity_type_to_association_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 
 **entity_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## add_primary_key_to_entity_type

> add_primary_key_to_entity_type(entity_type_id, property_type_id)

Adds a primary key with a given ID to an entity type with a given ID.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Adds a primary key with a given ID to an entity type with a given ID.
  api_instance.add_primary_key_to_entity_type(entity_type_id, property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->add_primary_key_to_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## add_property_type_to_entity_type

> add_property_type_to_entity_type(entity_type_id, property_type_id)

Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
  api_instance.add_property_type_to_entity_type(entity_type_id, property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->add_property_type_to_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## add_src_entity_type_to_association_type

> add_src_entity_type_to_association_type(association_type_id, entity_type_id)

Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.

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

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
  api_instance.add_src_entity_type_to_association_type(association_type_id, entity_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->add_src_entity_type_to_association_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 
 **entity_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_association_type

> create_association_type(association_type)

Creates a new AssociationType definition, if it doesn't exist.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::EdmApi.new
association_type = [OpenapiClient::AssociationType.new] # Array<AssociationType> | 

begin
  #Creates a new AssociationType definition, if it doesn't exist.
  api_instance.create_association_type(association_type)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->create_association_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type** | [**Array&lt;AssociationType&gt;**](AssociationType.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_empty_schema

> create_empty_schema(namespace, name)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

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

api_instance = OpenapiClient::EdmApi.new
namespace = 'namespace_example' # String | 
name = 'name_example' # String | 

begin
  #Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
  api_instance.create_empty_schema(namespace, name)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->create_empty_schema: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## create_entity_type

> create_entity_type(entity_type)

Creates a new EntityType definition, if it doesn't exist.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::EdmApi.new
entity_type = OpenapiClient::EntityType.new # EntityType | 

begin
  #Creates a new EntityType definition, if it doesn't exist.
  api_instance.create_entity_type(entity_type)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->create_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | [**EntityType**](EntityType.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_property_type

> create_property_type(property_type)

Creates a new PropertyType definition, if it doesn\"t exist.

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

api_instance = OpenapiClient::EdmApi.new
property_type = OpenapiClient::PropertyType.new # PropertyType | 

begin
  #Creates a new PropertyType definition, if it doesn\"t exist.
  api_instance.create_property_type(property_type)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->create_property_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type** | [**PropertyType**](PropertyType.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## create_schema_if_not_exists

> create_schema_if_not_exists(schema)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

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

api_instance = OpenapiClient::EdmApi.new
schema = OpenapiClient::Schema.new # Schema | 

begin
  #Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
  api_instance.create_schema_if_not_exists(schema)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->create_schema_if_not_exists: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schema** | [**Schema**](Schema.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## delete_association_type

> delete_association_type(association_type_id)

Deletes the AssociationType definition for the given AssociationType UUID.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 

begin
  #Deletes the AssociationType definition for the given AssociationType UUID.
  api_instance.delete_association_type(association_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->delete_association_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_entity_type

> delete_entity_type(entity_type_id)

Deletes the EntityType definition for the given EntityType UUID.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Deletes the EntityType definition for the given EntityType UUID.
  api_instance.delete_entity_type(entity_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->delete_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_property_type

> delete_property_type(property_type_id)

Deletes the PropertyType definition for the given PropertyType UUID.

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

api_instance = OpenapiClient::EdmApi.new
property_type_id = 'property_type_id_example' # String | 

begin
  #Deletes the PropertyType definition for the given PropertyType UUID.
  api_instance.delete_property_type(property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->delete_property_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## force_delete_property_type

> force_delete_property_type(property_type_id)

Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.

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

api_instance = OpenapiClient::EdmApi.new
property_type_id = 'property_type_id_example' # String | 

begin
  #Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
  api_instance.force_delete_property_type(property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->force_delete_property_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## force_remove_property_type_from_entity_type

> force_remove_property_type_from_entity_type(entity_type_id, property_type_id)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
  api_instance.force_remove_property_type_from_entity_type(entity_type_id, property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->force_remove_property_type_from_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_association_entity_types

> Array&lt;AssociationType&gt; get_all_association_entity_types

Gets all association EntityType definitions.

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

api_instance = OpenapiClient::EdmApi.new

begin
  #Gets all association EntityType definitions.
  result = api_instance.get_all_association_entity_types
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_all_association_entity_types: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;AssociationType&gt;**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_available_association_types

> Array&lt;AssociationType&gt; get_all_available_association_types(association_type_id)

Get all available associations for the given AssociationType UUID.

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

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 

begin
  #Get all available associations for the given AssociationType UUID.
  result = api_instance.get_all_available_association_types(association_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_all_available_association_types: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;AssociationType&gt;**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_entity_type_property_metadata

> Hash&lt;String, EntityTypePropertyMetadata&gt; get_all_entity_type_property_metadata(entity_type_id)

Get all EntityType propertyType metadata

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Get all EntityType propertyType metadata
  result = api_instance.get_all_entity_type_property_metadata(entity_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_all_entity_type_property_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 

### Return type

[**Hash&lt;String, EntityTypePropertyMetadata&gt;**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_entity_types

> Array&lt;EntityType&gt; get_all_entity_types

Gets all EntityType definitions.

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

api_instance = OpenapiClient::EdmApi.new

begin
  #Gets all EntityType definitions.
  result = api_instance.get_all_entity_types
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_all_entity_types: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EntityType&gt;**](EntityType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_property_types

> Array&lt;PropertyType&gt; get_all_property_types

Gets all PropertyType definitions.

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

api_instance = OpenapiClient::EdmApi.new

begin
  #Gets all PropertyType definitions.
  result = api_instance.get_all_property_types
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_all_property_types: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;PropertyType&gt;**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_property_types_in_namespace

> Array&lt;PropertyType&gt; get_all_property_types_in_namespace(namespace)

Gets all PropertyType definitions under the given namespace.

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

api_instance = OpenapiClient::EdmApi.new
namespace = 'namespace_example' # String | 

begin
  #Gets all PropertyType definitions under the given namespace.
  result = api_instance.get_all_property_types_in_namespace(namespace)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_all_property_types_in_namespace: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 

### Return type

[**Array&lt;PropertyType&gt;**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_property_usage_summaries

> Hash&lt;String, PropertyUsageSummary&gt; get_all_property_usage_summaries

Get Property Usage Summary for all properties.

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

api_instance = OpenapiClient::EdmApi.new

begin
  #Get Property Usage Summary for all properties.
  result = api_instance.get_all_property_usage_summaries
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_all_property_usage_summaries: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hash&lt;String, PropertyUsageSummary&gt;**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_type

> AssociationType get_association_type(association_type_id)

Get the AssociationType definition for the given AssociationType UUID.

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

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 

begin
  #Get the AssociationType definition for the given AssociationType UUID.
  result = api_instance.get_association_type(association_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_association_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_type_details

> AssociationType get_association_type_details(association_type_id)

Get details about the AssociationType for the given AssociationType UUID.

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

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 

begin
  #Get details about the AssociationType for the given AssociationType UUID.
  result = api_instance.get_association_type_details(association_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_association_type_details: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_data_model

> EDM get_entity_data_model

Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::EdmApi.new

begin
  #Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
  result = api_instance.get_entity_data_model
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_entity_data_model: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EDM**](EDM.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_data_model_diff

> EDMdiff get_entity_data_model_diff(ed_mdiff)

Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.

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

api_instance = OpenapiClient::EdmApi.new
ed_mdiff = OpenapiClient::EDMdiff.new # EDMdiff | 

begin
  #Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
  result = api_instance.get_entity_data_model_diff(ed_mdiff)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_entity_data_model_diff: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ed_mdiff** | [**EDMdiff**](EDMdiff.md)|  | 

### Return type

[**EDMdiff**](EDMdiff.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_entity_type

> EntityType get_entity_type(entity_type_id)

Gets the EntityType definition for the given EntityType UUID.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Gets the EntityType definition for the given EntityType UUID.
  result = api_instance.get_entity_type(entity_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 

### Return type

[**EntityType**](EntityType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_type_hierarchy

> get_entity_type_hierarchy(entity_type_id)

Get the EntityType hierarchy for the given EntityType UUID.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Get the EntityType hierarchy for the given EntityType UUID.
  api_instance.get_entity_type_hierarchy(entity_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_entity_type_hierarchy: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_entity_type_id

> String get_entity_type_id(namespace, name)

Gets the EntityType UUID for the given EntityType FQN.

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

api_instance = OpenapiClient::EdmApi.new
namespace = 'openlattice' # String | 
name = 'myentitytype' # String | 

begin
  #Gets the EntityType UUID for the given EntityType FQN.
  result = api_instance.get_entity_type_id(namespace, name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_entity_type_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_entity_type_property_metadata

> EntityTypePropertyMetadata get_entity_type_property_metadata(entity_type_id, property_type_id)

Get EntityType propertyType metadata

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Get EntityType propertyType metadata
  result = api_instance.get_entity_type_property_metadata(entity_type_id, property_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_entity_type_property_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

[**EntityTypePropertyMetadata**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_type

> PropertyType get_property_type(property_type_id)

Gets the PropertyType definition for the given PropertyType UUID.

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

api_instance = OpenapiClient::EdmApi.new
property_type_id = 'property_type_id_example' # String | 

begin
  #Gets the PropertyType definition for the given PropertyType UUID.
  result = api_instance.get_property_type(property_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_property_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**String**](.md)|  | 

### Return type

[**PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_type_id

> String get_property_type_id(namespace, name)

Gets the PropertyType UUID for the given PropertyType FQN.

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

api_instance = OpenapiClient::EdmApi.new
namespace = 'namespace_example' # String | 
name = 'name_example' # String | 

begin
  #Gets the PropertyType UUID for the given PropertyType FQN.
  result = api_instance.get_property_type_id(namespace, name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_property_type_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_usage_summary

> Array&lt;PropertyUsageSummary&gt; get_property_usage_summary(property_type_id)

Get Property Usage Summary for property with given ID.

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

api_instance = OpenapiClient::EdmApi.new
property_type_id = 'property_type_id_example' # String | 

begin
  #Get Property Usage Summary for property with given ID.
  result = api_instance.get_property_usage_summary(property_type_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_property_usage_summary: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;PropertyUsageSummary&gt;**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_schema_contents

> Schema get_schema_contents(namespace, name, opts)

Gets the schema contents for a corresponding namespace and name.

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

api_instance = OpenapiClient::EdmApi.new
namespace = 'namespace_example' # String | 
name = 'name_example' # String | 
opts = {
  file_type: 'yaml' # String | 
}

begin
  #Gets the schema contents for a corresponding namespace and name.
  result = api_instance.get_schema_contents(namespace, name, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_schema_contents: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 
 **file_type** | **String**|  | [optional] [default to &#39;yaml&#39;]

### Return type

[**Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_schemas

> Array&lt;Schema&gt; get_schemas

Gets all schemas.

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

api_instance = OpenapiClient::EdmApi.new

begin
  #Gets all schemas.
  result = api_instance.get_schemas
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_schemas: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Schema&gt;**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_schemas_in_namespace

> Array&lt;Schema&gt; get_schemas_in_namespace(namespace)

Gets all schemas associated with a given namespace and accessible by the caller.

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

api_instance = OpenapiClient::EdmApi.new
namespace = 'namespace_example' # String | 

begin
  #Gets all schemas associated with a given namespace and accessible by the caller.
  result = api_instance.get_schemas_in_namespace(namespace)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->get_schemas_in_namespace: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 

### Return type

[**Array&lt;Schema&gt;**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_dst_entity_type_from_association_type

> remove_dst_entity_type_from_association_type(association_type_id, entity_type_id)

Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.

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

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
  api_instance.remove_dst_entity_type_from_association_type(association_type_id, entity_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->remove_dst_entity_type_from_association_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 
 **entity_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## remove_primary_key_from_entity_type

> remove_primary_key_from_entity_type(entity_type_id, property_type_id)

Removes a primary key with a given ID from an entity type with a given ID.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Removes a primary key with a given ID from an entity type with a given ID.
  api_instance.remove_primary_key_from_entity_type(entity_type_id, property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->remove_primary_key_from_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## remove_property_type_from_entity_type

> remove_property_type_from_entity_type(entity_type_id, property_type_id)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
  api_instance.remove_property_type_from_entity_type(entity_type_id, property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->remove_property_type_from_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## remove_src_entity_type_from_association_type

> remove_src_entity_type_from_association_type(association_type_id, entity_type_id)

Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.

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

api_instance = OpenapiClient::EdmApi.new
association_type_id = 'association_type_id_example' # String | 
entity_type_id = 'entity_type_id_example' # String | 

begin
  #Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
  api_instance.remove_src_entity_type_from_association_type(association_type_id, entity_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->remove_src_entity_type_from_association_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**String**](.md)|  | 
 **entity_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## reorder_property_types_in_entity_type

> reorder_property_types_in_entity_type(entity_type_id, property_type_ids)

Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_ids = ['property_type_ids_example'] # Array<String> | 

begin
  #Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
  api_instance.reorder_property_types_in_entity_type(entity_type_id, property_type_ids)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->reorder_property_types_in_entity_type: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_ids** | [**Array&lt;String&gt;**](String.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_entity_data_model

> update_entity_data_model(edm)

Updates the entity data model, including schemas, entity types, association types, and property types.

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

api_instance = OpenapiClient::EdmApi.new
edm = OpenapiClient::EDM.new # EDM | 

begin
  #Updates the entity data model, including schemas, entity types, association types, and property types.
  api_instance.update_entity_data_model(edm)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->update_entity_data_model: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **edm** | [**EDM**](EDM.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_entity_type_meta_data

> update_entity_type_meta_data(entity_type_id, metadata_update)

Updates the EntityType definition for the given EntityType UUID with the given metadata.

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates the EntityType definition for the given EntityType UUID with the given metadata.
  api_instance.update_entity_type_meta_data(entity_type_id, metadata_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->update_entity_type_meta_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_entity_type_property_metadata

> update_entity_type_property_metadata(entity_type_id, property_type_id)

Update EntityType Property metadata

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

api_instance = OpenapiClient::EdmApi.new
entity_type_id = 'entity_type_id_example' # String | 
property_type_id = 'property_type_id_example' # String | 

begin
  #Update EntityType Property metadata
  api_instance.update_entity_type_property_metadata(entity_type_id, property_type_id)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->update_entity_type_property_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**String**](.md)|  | 
 **property_type_id** | [**String**](.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## update_property_type_meta_data

> update_property_type_meta_data(property_type_id, metadata_update)

Updates the PropertyType definition for the given PropertyType UUID with the given metadata.

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

api_instance = OpenapiClient::EdmApi.new
property_type_id = 'property_type_id_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
  api_instance.update_property_type_meta_data(property_type_id, metadata_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->update_property_type_meta_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**String**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_schema

> update_schema(namespace, name, edm_request)

Edits the schema contents for a corresponding namespace and name.

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

api_instance = OpenapiClient::EdmApi.new
namespace = 'namespace_example' # String | 
name = 'name_example' # String | 
edm_request = OpenapiClient::EdmRequest.new # EdmRequest | 

begin
  #Edits the schema contents for a corresponding namespace and name.
  api_instance.update_schema(namespace, name, edm_request)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling EdmApi->update_schema: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 
 **edm_request** | [**EdmRequest**](EdmRequest.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

