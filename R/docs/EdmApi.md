# EdmApi

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


# **add_dst_entity_type_to_association_type**
> add_dst_entity_type_to_association_type(association_type_id, entity_type_id)

Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 
var.entity_type_id <- 'entity_type_id_example' # character | 

#Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$add_dst_entity_type_to_association_type(var.association_type_id, var.entity_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 
 **entity_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **add_primary_key_to_entity_type**
> add_primary_key_to_entity_type(entity_type_id, property_type_id)

Adds a primary key with a given ID to an entity type with a given ID.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_id <- 'property_type_id_example' # character | 

#Adds a primary key with a given ID to an entity type with a given ID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$add_primary_key_to_entity_type(var.entity_type_id, var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **add_property_type_to_entity_type**
> add_property_type_to_entity_type(entity_type_id, property_type_id)

Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_id <- 'property_type_id_example' # character | 

#Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$add_property_type_to_entity_type(var.entity_type_id, var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **add_src_entity_type_to_association_type**
> add_src_entity_type_to_association_type(association_type_id, entity_type_id)

Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 
var.entity_type_id <- 'entity_type_id_example' # character | 

#Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$add_src_entity_type_to_association_type(var.association_type_id, var.entity_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 
 **entity_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **create_association_type**
> create_association_type(association_type)

Creates a new AssociationType definition, if it doesn't exist.

### Example
```R
library(openlattice)

var.association_type <- list(AssociationType$new(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example"), list("src_example"), list("dst_example"), "bidirectional_example")) # array[AssociationType] | 

#Creates a new AssociationType definition, if it doesn't exist.
api.instance <- EdmApi$new()
api.instance$create_association_type(var.association_type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type** | list( [**AssociationType**](AssociationType.md) )|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **create_empty_schema**
> create_empty_schema(namespace, name)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 

#Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$create_empty_schema(var.namespace, var.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **create_entity_type**
> create_entity_type(entity_type)

Creates a new EntityType definition, if it doesn't exist.

### Example
```R
library(openlattice)

var.entity_type <- EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example") # EntityType | 

#Creates a new EntityType definition, if it doesn't exist.
api.instance <- EdmApi$new()
api.instance$create_entity_type(var.entity_type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type** | [**EntityType**](EntityType.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **create_property_type**
> create_property_type(property_type)

Creates a new PropertyType definition, if it doesn\"t exist.

### Example
```R
library(openlattice)

var.property_type <- PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example") # PropertyType | 

#Creates a new PropertyType definition, if it doesn\"t exist.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$create_property_type(var.property_type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type** | [**PropertyType**](PropertyType.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **create_schema_if_not_exists**
> create_schema_if_not_exists(schema)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Example
```R
library(openlattice)

var.schema <- Schema$new(list(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example")), list(PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example")), FullQualifiedName$new("name_example", "namespace_example")) # Schema | 

#Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$create_schema_if_not_exists(var.schema)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schema** | [**Schema**](Schema.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_association_type**
> delete_association_type(association_type_id)

Deletes the AssociationType definition for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 

#Deletes the AssociationType definition for the given AssociationType UUID.
api.instance <- EdmApi$new()
api.instance$delete_association_type(var.association_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_entity_type**
> delete_entity_type(entity_type_id)

Deletes the EntityType definition for the given EntityType UUID.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 

#Deletes the EntityType definition for the given EntityType UUID.
api.instance <- EdmApi$new()
api.instance$delete_entity_type(var.entity_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_property_type**
> delete_property_type(property_type_id)

Deletes the PropertyType definition for the given PropertyType UUID.

### Example
```R
library(openlattice)

var.property_type_id <- 'property_type_id_example' # character | 

#Deletes the PropertyType definition for the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_property_type(var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **force_delete_property_type**
> force_delete_property_type(property_type_id)

Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.

### Example
```R
library(openlattice)

var.property_type_id <- 'property_type_id_example' # character | 

#Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$force_delete_property_type(var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **force_remove_property_type_from_entity_type**
> force_remove_property_type_from_entity_type(entity_type_id, property_type_id)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_id <- 'property_type_id_example' # character | 

#Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$force_remove_property_type_from_entity_type(var.entity_type_id, var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_association_entity_types**
> array[AssociationType] get_all_association_entity_types()

Gets all association EntityType definitions.

### Example
```R
library(openlattice)


#Gets all association EntityType definitions.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_association_entity_types()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[AssociationType]**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_available_association_types**
> array[AssociationType] get_all_available_association_types(association_type_id)

Get all available associations for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 

#Get all available associations for the given AssociationType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_available_association_types(var.association_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 

### Return type

[**array[AssociationType]**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_entity_type_property_metadata**
> list(EntityTypePropertyMetadata) get_all_entity_type_property_metadata(entity_type_id)

Get all EntityType propertyType metadata

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 

#Get all EntityType propertyType metadata
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_entity_type_property_metadata(var.entity_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 

### Return type

[**list(EntityTypePropertyMetadata)**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_entity_types**
> array[EntityType] get_all_entity_types()

Gets all EntityType definitions.

### Example
```R
library(openlattice)


#Gets all EntityType definitions.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_entity_types()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EntityType]**](EntityType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_property_types**
> array[PropertyType] get_all_property_types()

Gets all PropertyType definitions.

### Example
```R
library(openlattice)


#Gets all PropertyType definitions.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_property_types()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[PropertyType]**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_property_types_in_namespace**
> array[PropertyType] get_all_property_types_in_namespace(namespace)

Gets all PropertyType definitions under the given namespace.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 

#Gets all PropertyType definitions under the given namespace.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_property_types_in_namespace(var.namespace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 

### Return type

[**array[PropertyType]**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_property_usage_summaries**
> list(PropertyUsageSummary) get_all_property_usage_summaries()

Get Property Usage Summary for all properties.

### Example
```R
library(openlattice)


#Get Property Usage Summary for all properties.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_property_usage_summaries()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list(PropertyUsageSummary)**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_association_type**
> AssociationType get_association_type(association_type_id)

Get the AssociationType definition for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 

#Get the AssociationType definition for the given AssociationType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_association_type(var.association_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_association_type_details**
> AssociationType get_association_type_details(association_type_id)

Get details about the AssociationType for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 

#Get details about the AssociationType for the given AssociationType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_association_type_details(var.association_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_data_model**
> EDM get_entity_data_model()

Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.

### Example
```R
library(openlattice)


#Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
api.instance <- EdmApi$new()
result <- api.instance$get_entity_data_model()
dput(result)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An Entity Data Model |  -  |

# **get_entity_data_model_diff**
> EDMdiff get_entity_data_model_diff(ed_mdiff)

Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.

### Example
```R
library(openlattice)

var.ed_mdiff <- EDMdiff$new(EDM$new(list("namespaces_example"), list(Schema$new(list(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example")), list(PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example")), FullQualifiedName$new("name_example", "namespace_example"))), list(PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example")), list(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example")), list(AssociationType$new(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example"), list("src_example"), list("dst_example"), "bidirectional_example"))), EDM$new(list("namespaces_example"), list(Schema$new(list(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example")), list(PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example")), FullQualifiedName$new("name_example", "namespace_example"))), list(PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example")), list(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example")), list(AssociationType$new(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example"), list("src_example"), list("dst_example"), "bidirectional_example")))) # EDMdiff | 

#Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_data_model_diff(var.ed_mdiff)
dput(result)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_type**
> EntityType get_entity_type(entity_type_id)

Gets the EntityType definition for the given EntityType UUID.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 

#Gets the EntityType definition for the given EntityType UUID.
api.instance <- EdmApi$new()
result <- api.instance$get_entity_type(var.entity_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 

### Return type

[**EntityType**](EntityType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_type_hierarchy**
> get_entity_type_hierarchy(entity_type_id)

Get the EntityType hierarchy for the given EntityType UUID.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 

#Get the EntityType hierarchy for the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$get_entity_type_hierarchy(var.entity_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_type_id**
> character get_entity_type_id(namespace, name)

Gets the EntityType UUID for the given EntityType FQN.

### Example
```R
library(openlattice)

var.namespace <- 'openlattice' # character | 
var.name <- 'myentitytype' # character | 

#Gets the EntityType UUID for the given EntityType FQN.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_type_id(var.namespace, var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_type_property_metadata**
> EntityTypePropertyMetadata get_entity_type_property_metadata(entity_type_id, property_type_id)

Get EntityType propertyType metadata

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_id <- 'property_type_id_example' # character | 

#Get EntityType propertyType metadata
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_type_property_metadata(var.entity_type_id, var.property_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_id** | [**character**](.md)|  | 

### Return type

[**EntityTypePropertyMetadata**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_property_type**
> PropertyType get_property_type(property_type_id)

Gets the PropertyType definition for the given PropertyType UUID.

### Example
```R
library(openlattice)

var.property_type_id <- 'property_type_id_example' # character | 

#Gets the PropertyType definition for the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_property_type(var.property_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**character**](.md)|  | 

### Return type

[**PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_property_type_id**
> character get_property_type_id(namespace, name)

Gets the PropertyType UUID for the given PropertyType FQN.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 

#Gets the PropertyType UUID for the given PropertyType FQN.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_property_type_id(var.namespace, var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_property_usage_summary**
> array[PropertyUsageSummary] get_property_usage_summary(property_type_id)

Get Property Usage Summary for property with given ID.

### Example
```R
library(openlattice)

var.property_type_id <- 'property_type_id_example' # character | 

#Get Property Usage Summary for property with given ID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_property_usage_summary(var.property_type_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**character**](.md)|  | 

### Return type

[**array[PropertyUsageSummary]**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_schema_contents**
> Schema get_schema_contents(namespace, name, file_type='yaml')

Gets the schema contents for a corresponding namespace and name.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 
var.file_type <- 'yaml' # character | 

#Gets the schema contents for a corresponding namespace and name.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_schema_contents(var.namespace, var.name, file_type=var.file_type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 
 **file_type** | Enum [csv, json, yaml] |  | [optional] [default to &#39;yaml&#39;]

### Return type

[**Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_schemas**
> array[Schema] get_schemas()

Gets all schemas.

### Example
```R
library(openlattice)


#Gets all schemas.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_schemas()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Schema]**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_schemas_in_namespace**
> array[Schema] get_schemas_in_namespace(namespace)

Gets all schemas associated with a given namespace and accessible by the caller.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 

#Gets all schemas associated with a given namespace and accessible by the caller.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_schemas_in_namespace(var.namespace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 

### Return type

[**array[Schema]**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **remove_dst_entity_type_from_association_type**
> remove_dst_entity_type_from_association_type(association_type_id, entity_type_id)

Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 
var.entity_type_id <- 'entity_type_id_example' # character | 

#Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$remove_dst_entity_type_from_association_type(var.association_type_id, var.entity_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 
 **entity_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **remove_primary_key_from_entity_type**
> remove_primary_key_from_entity_type(entity_type_id, property_type_id)

Removes a primary key with a given ID from an entity type with a given ID.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_id <- 'property_type_id_example' # character | 

#Removes a primary key with a given ID from an entity type with a given ID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$remove_primary_key_from_entity_type(var.entity_type_id, var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **remove_property_type_from_entity_type**
> remove_property_type_from_entity_type(entity_type_id, property_type_id)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_id <- 'property_type_id_example' # character | 

#Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$remove_property_type_from_entity_type(var.entity_type_id, var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **remove_src_entity_type_from_association_type**
> remove_src_entity_type_from_association_type(association_type_id, entity_type_id)

Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example
```R
library(openlattice)

var.association_type_id <- 'association_type_id_example' # character | 
var.entity_type_id <- 'entity_type_id_example' # character | 

#Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$remove_src_entity_type_from_association_type(var.association_type_id, var.entity_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association_type_id** | [**character**](.md)|  | 
 **entity_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **reorder_property_types_in_entity_type**
> reorder_property_types_in_entity_type(entity_type_id, property_type_ids)

Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_ids <- list("inner_example") # array[character] | 

#Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$reorder_property_types_in_entity_type(var.entity_type_id, var.property_type_ids)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_ids** | list( **character** )|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_entity_data_model**
> update_entity_data_model(EDM)

Updates the entity data model, including schemas, entity types, association types, and property types.

### Example
```R
library(openlattice)

var.EDM <- EDM$new(list("namespaces_example"), list(Schema$new(list(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example")), list(PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example")), FullQualifiedName$new("name_example", "namespace_example"))), list(PropertyType$new("title_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), "datatype_example", "pii_example", "multiValued_example", "analyzer_example", list("enumValues_example"), "indexType_example")), list(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example")), list(AssociationType$new(EntityType$new("title_example", "description_example", "id_example", FullQualifiedName$new("name_example", "namespace_example"), list(FullQualifiedName$new("name_example", "namespace_example")), list("key_example"), list("properties_example"), TODO, "basetype_example", "category_example"), list("src_example"), list("dst_example"), "bidirectional_example"))) # EDM | 

#Updates the entity data model, including schemas, entity types, association types, and property types.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_entity_data_model(var.EDM)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EDM** | [**EDM**](EDM.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_entity_type_meta_data**
> update_entity_type_meta_data(entity_type_id, metadata_update)

Updates the EntityType definition for the given EntityType UUID with the given metadata.

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.metadata_update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates the EntityType definition for the given EntityType UUID with the given metadata.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_entity_type_meta_data(var.entity_type_id, var.metadata_update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_entity_type_property_metadata**
> update_entity_type_property_metadata(entity_type_id, property_type_id)

Update EntityType Property metadata

### Example
```R
library(openlattice)

var.entity_type_id <- 'entity_type_id_example' # character | 
var.property_type_id <- 'property_type_id_example' # character | 

#Update EntityType Property metadata
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_entity_type_property_metadata(var.entity_type_id, var.property_type_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_id** | [**character**](.md)|  | 
 **property_type_id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_property_type_meta_data**
> update_property_type_meta_data(property_type_id, metadata_update)

Updates the PropertyType definition for the given PropertyType UUID with the given metadata.

### Example
```R
library(openlattice)

var.property_type_id <- 'property_type_id_example' # character | 
var.metadata_update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_property_type_meta_data(var.property_type_id, var.metadata_update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property_type_id** | [**character**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_schema**
> update_schema(namespace, name, edm_request)

Edits the schema contents for a corresponding namespace and name.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 
var.edm_request <- EdmRequest$new("action_example", list("propertyTypes_example"), list("entityTypes_example")) # EdmRequest | 

#Edits the schema contents for a corresponding namespace and name.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_schema(var.namespace, var.name, var.edm_request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 
 **edm_request** | [**EdmRequest**](EdmRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

