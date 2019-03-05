# SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecuteEntityNeighborSearch**](SearchApi.md#ExecuteEntityNeighborSearch) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**ExecuteFilteredEntityNeighborSearch**](SearchApi.md#ExecuteFilteredEntityNeighborSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association


# **ExecuteEntityNeighborSearch**
> NeighborEntityDetails ExecuteEntityNeighborSearch(entity.set.id, entity.key.id)

Executes a search for all neighbors of an entity that are connected by an association

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.entity.key.id <- 'entity.key.id_example' # character | 

#Executes a search for all neighbors of an entity that are connected by an association
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ExecuteEntityNeighborSearch(var.entity.set.id, var.entity.key.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **entity.key.id** | [**character**](.md)|  | 

### Return type

[**NeighborEntityDetails**](neighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **ExecuteFilteredEntityNeighborSearch**
> NeighborEntityDetails ExecuteFilteredEntityNeighborSearch(entity.set.id, neighbor.search.filter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.neighbor.search.filter <- NeighborSearchFilter$new() # NeighborSearchFilter | 

#Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ExecuteFilteredEntityNeighborSearch(var.entity.set.id, var.neighbor.search.filter)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **neighbor.search.filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

[**NeighborEntityDetails**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



