# AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_authorizations**](AuthorizationsApi.md#check_authorizations) | **POST** /datastore/authorizations | Check authorizations
[**get_accessible_objects**](AuthorizationsApi.md#get_accessible_objects) | **GET** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.


# **check_authorizations**
> array[Authorization] check_authorizations(access_check)

Check authorizations

### Example
```R
library(openlattice)

var.access_check <- AccessCheck$new(list("aclKey_example"), list("permissions_example")) # AccessCheck | 

#Check authorizations
api.instance <- AuthorizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$check_authorizations(var.access_check)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_check** | [**AccessCheck**](AccessCheck.md)|  | 

### Return type

[**array[Authorization]**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_accessible_objects**
> AuthorizedObjectsSearchResult get_accessible_objects(object_type=var.object_type, permission=var.permission, paging_token=var.paging_token)

Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

### Example
```R
library(openlattice)

var.object_type <- 'object_type_example' # character | 
var.permission <- 'permission_example' # character | 
var.paging_token <- 'paging_token_example' # character | 

#Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.
api.instance <- AuthorizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_accessible_objects(object_type=var.object_type, permission=var.permission, paging_token=var.paging_token)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_type** | Enum [EntityType, EntitySet, PropertyTypeInEntitySet, Datasource, ComplexType, LinkingEntityType, AssociationType, Organization, App, AppType, Principal, Role, UnknownEdmTemplate] |  | [optional] 
 **permission** | Enum [DISCOVER, MATERIALIZE, LINK, READ, WRITE, OWNER] |  | [optional] 
 **paging_token** | **character**|  | [optional] 

### Return type

[**AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

