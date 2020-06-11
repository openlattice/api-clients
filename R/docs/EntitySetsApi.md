# EntitySetsApi

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
[**update_entity_set_meta_data**](EntitySetsApi.md#update_entity_set_meta_data) | **PATCH** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**update_entity_set_property_metadata**](EntitySetsApi.md#update_entity_set_property_metadata) | **POST** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.


# **add_entity_sets_to_linking_entity_set**
> integer add_entity_sets_to_linking_entity_set(linking.entity.set.id, request.body=var.request.body)

Adds the entity sets as linked entity sets to the linking entity set

### Example
```R
library(openlattice)

var.linking.entity.set.id <- 'linking.entity.set.id_example' # character | 
var.request.body <- list("property_example") # array[character] | 

#Adds the entity sets as linked entity sets to the linking entity set
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$add_entity_sets_to_linking_entity_set(var.linking.entity.set.id, request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking.entity.set.id** | [**character**](.md)|  | 
 **request.body** | list( **character** )|  | [optional] 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **add_entity_sets_to_linking_entity_sets**
> integer add_entity_sets_to_linking_entity_sets(linking.entity.set.id, request.body)

Adds the entity sets as linked entity sets to the linking entity sets

### Example
```R
library(openlattice)

var.linking.entity.set.id <- 'linking.entity.set.id_example' # character | 
var.request.body <- TODO # list(array[character]) | 

#Adds the entity sets as linked entity sets to the linking entity sets
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$add_entity_sets_to_linking_entity_sets(var.linking.entity.set.id, var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking.entity.set.id** | **character**|  | 
 **request.body** | named list( [**list(array[character])**](array.md) )|  | 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **create_entity_sets**
> create_entity_sets(entity.set)

Creates new EntitySet definitions if they don't exist.

### Example
```R
library(openlattice)

var.entity.set <- list(EntitySet$new("id_example", "entityTypeId_example", "name_example", "title_example", "description_example", list("contacts_example"), "linking_example", list("linkedEntitySets_example"), "organizationId_example", list("flags_example"), list(123))) # array[EntitySet] | 

#Creates new EntitySet definitions if they don't exist.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$create_entity_sets(var.entity.set)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set** | list( [**EntitySet**](EntitySet.md) )|  | 

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

# **delete_entity_set**
> delete_entity_set(entity.set.id)

Deletes the EntitySet definition for the given EntitySet UUID.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Deletes the EntitySet definition for the given EntitySet UUID.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_entity_set(var.entity.set.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

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

# **get_all_entity_set_property_metadata**
> list(EntitySetPropertyMetaData) get_all_entity_set_property_metadata(entity.set.id)

Get all entity set property metadata.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Get all entity set property metadata.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_entity_set_property_metadata(var.entity.set.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

[**list(EntitySetPropertyMetaData)**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_entity_sets**
> array[EntitySet] get_all_entity_sets()

Get all EntitySet definitions.

### Example
```R
library(openlattice)


#Get all EntitySet definitions.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_entity_sets()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EntitySet]**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_set**
> EntitySet get_entity_set(entity.set.id)

Get the EntitySet definition for the given EntitySet UUID.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Get the EntitySet definition for the given EntitySet UUID.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_set(var.entity.set.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

[**EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | An Entity Set definition |  -  |

# **get_entity_set_id**
> character get_entity_set_id(entity.set.name)

Gets the EntitySet UUID for the given EntitySet name.

### Example
```R
library(openlattice)

var.entity.set.name <- 'entity.set.name_example' # character | 

#Gets the EntitySet UUID for the given EntitySet name.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_set_id(var.entity.set.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.name** | **character**|  | 

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

# **get_entity_set_ids**
> list(character) get_entity_set_ids(request.body=var.request.body)

Get IDs for entity sets given their names.

### Example
```R
library(openlattice)

var.request.body <- list("property_example") # array[character] | 

#Get IDs for entity sets given their names.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_set_ids(request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.body** | list( **character** )|  | [optional] 

### Return type

**list(character)**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_set_property_metadata**
> EntitySetPropertyMetaData get_entity_set_property_metadata(entity.set.id, property.type.id)

Get specified property type metadata for an entity set.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.property.type.id <- 'property.type.id_example' # character | 

#Get specified property type metadata for an entity set.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_set_property_metadata(var.entity.set.id, var.property.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **property.type.id** | [**character**](.md)|  | 

### Return type

[**EntitySetPropertyMetaData**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_property_metadata_for_entity_sets**
> list(list(EntitySetPropertyMetaData)) get_property_metadata_for_entity_sets(request.body=var.request.body)

Get property metadata for entity sets.

### Example
```R
library(openlattice)

var.request.body <- list("property_example") # array[character] | 

#Get property metadata for entity sets.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_property_metadata_for_entity_sets(request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.body** | list( **character** )|  | [optional] 

### Return type

[**list(list(EntitySetPropertyMetaData))**](list.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | EntitySetPropertyMetaData |  -  |

# **get_property_types_for_entity_set**
> list(PropertyType) get_property_types_for_entity_set(entity.set.id)

Get all Property Types for entity set

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Get all Property Types for entity set
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_property_types_for_entity_set(var.entity.set.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

[**list(PropertyType)**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **remove_entity_sets_from_linking_entity_set**
> integer remove_entity_sets_from_linking_entity_set(linking.entity.set.id, request.body=var.request.body)

Removes/unlinks the linked entity sets from the linking entity set

### Example
```R
library(openlattice)

var.linking.entity.set.id <- 'linking.entity.set.id_example' # character | 
var.request.body <- list("property_example") # array[character] | 

#Removes/unlinks the linked entity sets from the linking entity set
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$remove_entity_sets_from_linking_entity_set(var.linking.entity.set.id, request.body=var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking.entity.set.id** | **character**|  | 
 **request.body** | list( **character** )|  | [optional] 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **remove_entity_sets_from_linking_entity_sets**
> integer remove_entity_sets_from_linking_entity_sets(linking.entity.set.id, request.body)

Removes/unlinks the linked entity sets from the linking entity set

### Example
```R
library(openlattice)

var.linking.entity.set.id <- 'linking.entity.set.id_example' # character | 
var.request.body <- TODO # list(array[character]) | 

#Removes/unlinks the linked entity sets from the linking entity set
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$remove_entity_sets_from_linking_entity_sets(var.linking.entity.set.id, var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking.entity.set.id** | [**character**](.md)|  | 
 **request.body** | named list( [**list(array[character])**](array.md) )|  | 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_entity_set_meta_data**
> integer update_entity_set_meta_data(entity.set.id, metadata.update)

Updates the EntitySet definition for the given EntitySet UUID with the given metadata.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.metadata.update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$update_entity_set_meta_data(var.entity.set.id, var.metadata.update)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **metadata.update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_entity_set_property_metadata**
> update_entity_set_property_metadata(entity.set.id, property.type.id, metadata.update)

Updates the property type metadata for the given entity set.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.property.type.id <- 'property.type.id_example' # character | 
var.metadata.update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates the property type metadata for the given entity set.
api.instance <- EntitySetsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_entity_set_property_metadata(var.entity.set.id, var.property.type.id, var.metadata.update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **property.type.id** | [**character**](.md)|  | 
 **metadata.update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

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

