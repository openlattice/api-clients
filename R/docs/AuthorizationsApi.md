# AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CheckAuthorizations**](AuthorizationsApi.md#CheckAuthorizations) | **POST** /datastore/authorizations | Check authorizations
[**GetAccessibleObjects**](AuthorizationsApi.md#GetAccessibleObjects) | **GET** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.


# **CheckAuthorizations**
> Authorization CheckAuthorizations(access.check)

Check authorizations

### Example
```R
library(openlattice)

var.access.check <- AccessCheck$new() # AccessCheck | 

#Check authorizations
api.instance <- AuthorizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CheckAuthorizations(var.access.check)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access.check** | [**AccessCheck**](AccessCheck.md)|  | 

### Return type

[**Authorization**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **GetAccessibleObjects**
> AuthorizedObjectsSearchResult GetAccessibleObjects(object.type=var.object.type, permission=var.permission, paging.token=var.paging.token)

Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

### Example
```R
library(openlattice)

var.object.type <- 'object.type_example' # character | 
var.permission <- 'permission_example' # character | 
var.paging.token <- 'paging.token_example' # character | 

#Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.
api.instance <- AuthorizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAccessibleObjects(object.type=var.object.type, permission=var.permission, paging.token=var.paging.token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object.type** | **character**|  | [optional] 
 **permission** | **character**|  | [optional] 
 **paging.token** | **character**|  | [optional] 

### Return type

[**AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



