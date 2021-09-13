# PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_acl**](PermissionsApi.md#get_acl) | **POST** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**update_acl**](PermissionsApi.md#update_acl) | **PATCH** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
[**update_acls**](PermissionsApi.md#update_acls) | **PATCH** /datastore/update | Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.


# **get_acl**
> Acl get_acl(request_body)

Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

### Example
```R
library(openlattice)

var.request_body <- list("property_example") # array[character] | 

#Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
api.instance <- PermissionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_acl(var.request_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | list( **character** )|  | 

### Return type

[**Acl**](Acl.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_acl**
> update_acl(acl_data)

Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

### Example
```R
library(openlattice)

var.acl_data <- AclData$new("action_example", Acl$new(list("aclKey_example"), list(Ace$new(Principal$new("type_example", "id_example"), list("permissions_example"))))) # AclData | 

#Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
api.instance <- PermissionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_acl(var.acl_data)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_data** | [**AclData**](AclData.md)|  | 

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

# **update_acls**
> update_acls(acl_data)

Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.

### Example
```R
library(openlattice)

var.acl_data <- list(AclData$new("action_example", Acl$new(list("aclKey_example"), list(Ace$new(Principal$new("type_example", "id_example"), list("permissions_example")))))) # array[AclData] | 

#Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.
api.instance <- PermissionsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_acls(var.acl_data)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_data** | list( [**AclData**](AclData.md) )|  | 

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

