# CollectionsApi

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
[**get_entity_set_collections_of_type**](CollectionsApi.md#get_entity_set_collections_of_type) | **GET** /datastore/collections/entity/set/entity/type/{entitySetCollectionId} | Returns all authorized EntitySetCollections for a given EntityTypeCollection id
[**get_entity_type_collection**](CollectionsApi.md#get_entity_type_collection) | **GET** /datastore/collections/entity/type/{entityTypeCollectionId} | Returns the EntityTypeCollection object for a given id
[**remove_type_from_entity_type_collection_template**](CollectionsApi.md#remove_type_from_entity_type_collection_template) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId}/template/{typeId} | Removes a key from an EntityTypeCollection template
[**update_entity_set_collection_metadata**](CollectionsApi.md#update_entity_set_collection_metadata) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId} | Updates metadata of the specified EntitySetCollection
[**update_entity_set_collection_template**](CollectionsApi.md#update_entity_set_collection_template) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId}/template | Updates template of the specified EntitySetCollection
[**update_entity_type_collection_metadata**](CollectionsApi.md#update_entity_type_collection_metadata) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId} | Updates metadata of the specified EntityTypeCollection


# **add_type_to_entity_type_collection_template**
> add_type_to_entity_type_collection_template(entity.type.collection.id, collection.template.type)

Appends type to template of the specified EntityTypeCollection

### Example
```R
library(openlattice)

var.entity.type.collection.id <- 'entity.type.collection.id_example' # character | 
var.collection.template.type <- CollectionTemplateType$new("id_example", "name_example", "title_example", "description_example", "entityTypeId_example") # CollectionTemplateType | 

#Appends type to template of the specified EntityTypeCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$add_type_to_entity_type_collection_template(var.entity.type.collection.id, var.collection.template.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.collection.id** | [**character**](.md)|  | 
 **collection.template.type** | [**CollectionTemplateType**](CollectionTemplateType.md)|  | 

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

# **create_entity_set_collection**
> character create_entity_set_collection(entity.set.collection)

Creates a new EntitySetCollection

### Example
```R
library(openlattice)

var.entity.set.collection <- EntitySetCollection$new("id_example", "name_example", "title_example", "description_example", "entityTypeCollectionId_example", TODO, list("contacts_example"), "organizationId_example") # EntitySetCollection | 

#Creates a new EntitySetCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$create_entity_set_collection(var.entity.set.collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.collection** | [**EntitySetCollection**](EntitySetCollection.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **create_entity_type_collection**
> character create_entity_type_collection(entity.type.collection)

Creates a new EntityTypeCollection

### Example
```R
library(openlattice)

var.entity.type.collection <- EntityTypeCollection$new("id_example", FullQualifiedName$new("name_example", "namespace_example"), "title_example", "description_example", list(FullQualifiedName$new("name_example", "namespace_example")), list(CollectionTemplateType$new("id_example", "name_example", "title_example", "description_example", "entityTypeId_example"))) # EntityTypeCollection | 

#Creates a new EntityTypeCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$create_entity_type_collection(var.entity.type.collection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.collection** | [**EntityTypeCollection**](EntityTypeCollection.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_entity_set_collection**
> delete_entity_set_collection(entity.set.collection.id)

Deletes the specified EntitySetCollection

### Example
```R
library(openlattice)

var.entity.set.collection.id <- 'entity.set.collection.id_example' # character | 

#Deletes the specified EntitySetCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_entity_set_collection(var.entity.set.collection.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.collection.id** | [**character**](.md)|  | 

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

# **delete_entity_type_collection**
> delete_entity_type_collection(entity.type.collection.id)

Deletes the specified EntityTypeCollection

### Example
```R
library(openlattice)

var.entity.type.collection.id <- 'entity.type.collection.id_example' # character | 

#Deletes the specified EntityTypeCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_entity_type_collection(var.entity.type.collection.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.collection.id** | [**character**](.md)|  | 

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

# **get_all_entity_set_collections**
> array[EntitySetCollection] get_all_entity_set_collections()

Returns all EntitySetCollection objects

### Example
```R
library(openlattice)


#Returns all EntitySetCollection objects
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_entity_set_collections()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EntitySetCollection]**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_entity_type_collections**
> array[EntityTypeCollection] get_all_entity_type_collections()

Returns all EntityTypeCollection objects

### Example
```R
library(openlattice)


#Returns all EntityTypeCollection objects
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_entity_type_collections()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EntityTypeCollection]**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_set_collection**
> EntitySetCollection get_entity_set_collection(entity.set.collection.id)

Returns the EntitySetCollection object for a given id

### Example
```R
library(openlattice)

var.entity.set.collection.id <- 'entity.set.collection.id_example' # character | 

#Returns the EntitySetCollection object for a given id
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_set_collection(var.entity.set.collection.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.collection.id** | [**character**](.md)|  | 

### Return type

[**EntitySetCollection**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_set_collections_of_type**
> array[EntitySetCollection] get_entity_set_collections_of_type(entity.set.collection.id)

Returns all authorized EntitySetCollections for a given EntityTypeCollection id

### Example
```R
library(openlattice)

var.entity.set.collection.id <- 'entity.set.collection.id_example' # character | 

#Returns all authorized EntitySetCollections for a given EntityTypeCollection id
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_set_collections_of_type(var.entity.set.collection.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.collection.id** | [**character**](.md)|  | 

### Return type

[**array[EntitySetCollection]**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_entity_type_collection**
> EntityTypeCollection get_entity_type_collection(entity.type.collection.id)

Returns the EntityTypeCollection object for a given id

### Example
```R
library(openlattice)

var.entity.type.collection.id <- 'entity.type.collection.id_example' # character | 

#Returns the EntityTypeCollection object for a given id
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_type_collection(var.entity.type.collection.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.collection.id** | [**character**](.md)|  | 

### Return type

[**EntityTypeCollection**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **remove_type_from_entity_type_collection_template**
> remove_type_from_entity_type_collection_template(entity.type.collection.id, type.id)

Removes a key from an EntityTypeCollection template

### Example
```R
library(openlattice)

var.entity.type.collection.id <- 'entity.type.collection.id_example' # character | 
var.type.id <- 'type.id_example' # character | 

#Removes a key from an EntityTypeCollection template
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$remove_type_from_entity_type_collection_template(var.entity.type.collection.id, var.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.collection.id** | [**character**](.md)|  | 
 **type.id** | [**character**](.md)|  | 

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

# **update_entity_set_collection_metadata**
> update_entity_set_collection_metadata(entity.set.collection.id, metadata.update)

Updates metadata of the specified EntitySetCollection

### Example
```R
library(openlattice)

var.entity.set.collection.id <- 'entity.set.collection.id_example' # character | 
var.metadata.update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates metadata of the specified EntitySetCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_entity_set_collection_metadata(var.entity.set.collection.id, var.metadata.update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.collection.id** | [**character**](.md)|  | 
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

# **update_entity_set_collection_template**
> update_entity_set_collection_template(entity.set.collection.id, request.body)

Updates template of the specified EntitySetCollection

### Example
```R
library(openlattice)

var.entity.set.collection.id <- 'entity.set.collection.id_example' # character | 
var.request.body <- TODO # list(character) | 

#Updates template of the specified EntitySetCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_entity_set_collection_template(var.entity.set.collection.id, var.request.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.collection.id** | [**character**](.md)|  | 
 **request.body** | named list( [**list(character)**](character.md) )|  | 

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

# **update_entity_type_collection_metadata**
> update_entity_type_collection_metadata(entity.type.collection.id, metadata.update)

Updates metadata of the specified EntityTypeCollection

### Example
```R
library(openlattice)

var.entity.type.collection.id <- 'entity.type.collection.id_example' # character | 
var.metadata.update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates metadata of the specified EntityTypeCollection
api.instance <- CollectionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_entity_type_collection_metadata(var.entity.type.collection.id, var.metadata.update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.collection.id** | [**character**](.md)|  | 
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

