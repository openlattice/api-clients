# PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAcl**](PermissionsApi.md#GetAcl) | **POST** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**UpdateAcl**](PermissionsApi.md#UpdateAcl) | **PATCH** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.


# **GetAcl**
> GetAcl(request.body)

Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

### Example
```R
library(openlattice)

var.request.body <- [array$new()] # character | 

#Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
api.instance <- PermissionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$GetAcl(var.request.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request.body** | [**character**](array.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateAcl**
> UpdateAcl(acl.data)

Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

### Example
```R
library(openlattice)

var.acl.data <- AclData$new() # AclData | 

#Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
api.instance <- PermissionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateAcl(var.acl.data)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl.data** | [**AclData**](AclData.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



