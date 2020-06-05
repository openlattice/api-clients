# PrincipalApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_users**](PrincipalApi.md#get_all_users) | **GET** /datastore/principals/users/ | Get all users.
[**get_current_roles**](PrincipalApi.md#get_current_roles) | **GET** /datastore/principals/roles/current/ | Get current roles.
[**get_materialized_view_account**](PrincipalApi.md#get_materialized_view_account) | **GET** /datastore/principals/db | Get the db access credentials.
[**get_user**](PrincipalApi.md#get_user) | **GET** /datastore/principals/users/{userId} | Get the user for the given id.
[**search_all_users**](PrincipalApi.md#search_all_users) | **GET** /datastore/principals/users/search/&quot;{searchQuery}&quot; | Get the user id for the given search.
[**search_all_users_by_email**](PrincipalApi.md#search_all_users_by_email) | **GET** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.
[**sync_calling_user**](PrincipalApi.md#sync_calling_user) | **GET** /datastore/principals/sync/ | Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.


# **get_all_users**
> map(Auth0userBasic) get_all_users()

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
result <- api.instance$get_all_users()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**map(Auth0userBasic)**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_current_roles**
> array[SecurablePrincipal] get_current_roles()

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
result <- api.instance$get_current_roles()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SecurablePrincipal]**](SecurablePrincipal.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_materialized_view_account**
> MaterializedViewAccount get_materialized_view_account()

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
result <- api.instance$get_materialized_view_account()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MaterializedViewAccount**](MaterializedViewAccount.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_user**
> Auth0userBasic get_user(user.id)

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
result <- api.instance$get_user(var.user.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user.id** | **character**|  | 

### Return type

[**Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **search_all_users**
> map(Auth0userBasic) search_all_users(search.query)

Get the user id for the given search.

### Example
```R
library(openlattice)

var.search.query <- 'search.query_example' # character | 

#Get the user id for the given search.
api.instance <- PrincipalApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$search_all_users(var.search.query)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search.query** | **character**|  | 

### Return type

[**map(Auth0userBasic)**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **search_all_users_by_email**
> map(Auth0userBasic) search_all_users_by_email(email.address)

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
result <- api.instance$search_all_users_by_email(var.email.address)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email.address** | **character**|  | 

### Return type

[**map(Auth0userBasic)**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **sync_calling_user**
> sync_calling_user()

Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.

### Example
```R
library(openlattice)


#Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.
api.instance <- PrincipalApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$sync_calling_user()
```

### Parameters
This endpoint does not need any parameter.

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

