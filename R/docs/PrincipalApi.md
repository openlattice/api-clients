# PrincipalApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAllUsers**](PrincipalApi.md#GetAllUsers) | **GET** /datastore/principals/users/ | Get all users.
[**GetCurrentRoles**](PrincipalApi.md#GetCurrentRoles) | **GET** /datastore/principals/roles/current/ | Get current roles.
[**GetDbAccessCredentials**](PrincipalApi.md#GetDbAccessCredentials) | **GET** /datastore/principals/db | Get the db access credentials.
[**GetUser**](PrincipalApi.md#GetUser) | **GET** /datastore/principals/users/{userId} | Get the user for the given id.
[**SearchAllUsersByEmail**](PrincipalApi.md#SearchAllUsersByEmail) | **GET** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.


# **GetAllUsers**
> Auth0userBasic GetAllUsers()

Get all users.

### Example
```R
library(openlattice)


#Get all users.
api.instance <- PrincipalApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllUsers()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Auth0userBasic**](auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetCurrentRoles**
> SecurablePrincipal GetCurrentRoles()

Get current roles.

### Example
```R
library(openlattice)


#Get current roles.
api.instance <- PrincipalApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetCurrentRoles()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SecurablePrincipal**](securablePrincipal.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetDbAccessCredentials**
> character GetDbAccessCredentials()

Get the db access credentials.

### Example
```R
library(openlattice)


#Get the db access credentials.
api.instance <- PrincipalApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetDbAccessCredentials()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetUser**
> Auth0userBasic GetUser(user.id)

Get the user for the given id.

### Example
```R
library(openlattice)

var.user.id <- 'user.id_example' # character | 

#Get the user for the given id.
api.instance <- PrincipalApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetUser(var.user.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.id** | **character**|  | 

### Return type

[**Auth0userBasic**](auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **SearchAllUsersByEmail**
> Auth0userBasic SearchAllUsersByEmail(email.address)

Get the user id for the given email address.

### Example
```R
library(openlattice)

var.email.address <- 'email.address_example' # character | 

#Get the user id for the given email address.
api.instance <- PrincipalApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$SearchAllUsersByEmail(var.email.address)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email.address** | **character**|  | 

### Return type

[**Auth0userBasic**](auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



