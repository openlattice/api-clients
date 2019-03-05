# DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ClearEntitySet**](DataApi.md#ClearEntitySet) | **DELETE** /datastore/data/set/{entitySetId} | Clears the data from a single entity set.
[**DeleteAllEntitiesFromEntitySet**](DataApi.md#DeleteAllEntitiesFromEntitySet) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**GetEntitySetSize**](DataApi.md#GetEntitySetSize) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**LoadEntitySetData**](DataApi.md#LoadEntitySetData) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**LoadFilteredEntitySetData**](DataApi.md#LoadFilteredEntitySetData) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUID&#39;s


# **ClearEntitySet**
> ClearEntitySet(entity.set.id)

Clears the data from a single entity set.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Clears the data from a single entity set.
api.instance <- DataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$ClearEntitySet(var.entity.set.id)
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



# **DeleteAllEntitiesFromEntitySet**
> DeleteAllEntitiesFromEntitySet(entity.set.id, type)

Clears the Entity matching the given Entity id and all of its neighbor Entities

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.type <- 'type_example' # character | 

#Clears the Entity matching the given Entity id and all of its neighbor Entities
api.instance <- DataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$DeleteAllEntitiesFromEntitySet(var.entity.set.id, var.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **type** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **GetEntitySetSize**
> integer GetEntitySetSize(entity.set.id)

Gets the number of entities in an entity set.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Gets the number of entities in an entity set.
api.instance <- DataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetEntitySetSize(var.entity.set.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **LoadEntitySetData**
> character LoadEntitySetData(entity.set.id)

Gets an iterable containing the entity data, using property type FQNs as key

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Gets an iterable containing the entity data, using property type FQNs as key
api.instance <- DataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$LoadEntitySetData(var.entity.set.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **LoadFilteredEntitySetData**
> character LoadFilteredEntitySetData(entity.set.id, entity.set.selection)

Gets a list of entities by UUID's

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.entity.set.selection <- [array$new()] # EntitySetSelection | 

#Gets a list of entities by UUID's
api.instance <- DataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$LoadFilteredEntitySetData(var.entity.set.id, var.entity.set.selection)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **entity.set.selection** | [**EntitySetSelection**](array.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



