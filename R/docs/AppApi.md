# AppApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_app**](AppApi.md#create_app) | **POST** /datastore/app | Create an app if it doesn&#39;t exist.
[**create_app_role**](AppApi.md#create_app_role) | **POST** /datastore/app/update/{appId}/role | Create an app role
[**delete_app**](AppApi.md#delete_app) | **DELETE** /datastore/app/{appId} | Delete an app
[**delete_role_from_app**](AppApi.md#delete_role_from_app) | **DELETE** /datastore/app/update/{appId}/role/{roleId} | Delete an app role
[**get_app**](AppApi.md#get_app) | **GET** /datastore/app/{appId} | Get an app based on the ID
[**get_app_by_name**](AppApi.md#get_app_by_name) | **GET** /datastore/app/lookup/{name} | Get an app based on the name
[**get_apps**](AppApi.md#get_apps) | **GET** /datastore/app | Get all apps
[**get_available_app_configs**](AppApi.md#get_available_app_configs) | **GET** /datastore/app/config | Get available app configurations
[**get_available_app_configs_old**](AppApi.md#get_available_app_configs_old) | **GET** /datastore/app/config/{appId} | Get historical app configurations for an app


# **create_app**
> character create_app(app)

Create an app if it doesn't exist.

### Example
```R
library(openlattice)

var.app <- App$new("id_example", "name_example", "title_example", "description_example", "url_example", "entityTypeCollectionId_example", list(AppRole$new("id_example", "name_example", "title_example", "description_example", AppRole_permissions$new(TODO))), TODO) # App | 

#Create an app if it doesn't exist.
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$create_app(var.app)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | [**App**](App.md)|  | 

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

# **create_app_role**
> character create_app_role(app_id, app_role)

Create an app role

### Example
```R
library(openlattice)

var.app_id <- 'app_id_example' # character | 
var.app_role <- AppRole$new("id_example", "name_example", "title_example", "description_example", AppRole_permissions$new(TODO)) # AppRole | 

#Create an app role
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$create_app_role(var.app_id, var.app_role)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**character**](.md)|  | 
 **app_role** | [**AppRole**](AppRole.md)|  | 

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

# **delete_app**
> delete_app(app_id)

Delete an app

### Example
```R
library(openlattice)

var.app_id <- 'app_id_example' # character | 

#Delete an app
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_app(var.app_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**character**](.md)|  | 

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

# **delete_role_from_app**
> delete_role_from_app(app_id, role_id)

Delete an app role

### Example
```R
library(openlattice)

var.app_id <- 'app_id_example' # character | 
var.role_id <- 'role_id_example' # character | 

#Delete an app role
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_role_from_app(var.app_id, var.role_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**character**](.md)|  | 
 **role_id** | [**character**](.md)|  | 

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

# **get_app**
> App get_app(app_id)

Get an app based on the ID

### Example
```R
library(openlattice)

var.app_id <- 'app_id_example' # character | 

#Get an app based on the ID
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_app(var.app_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**character**](.md)|  | 

### Return type

[**App**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_app_by_name**
> App get_app_by_name(name)

Get an app based on the name

### Example
```R
library(openlattice)

var.name <- 'name_example' # character | 

#Get an app based on the name
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_app_by_name(var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**|  | 

### Return type

[**App**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_apps**
> array[App] get_apps()

Get all apps

### Example
```R
library(openlattice)


#Get all apps
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_apps()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[App]**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_available_app_configs**
> array[UserAppConfig] get_available_app_configs(app_id)

Get available app configurations

### Example
```R
library(openlattice)

var.app_id <- 'app_id_example' # character | 

#Get available app configurations
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_available_app_configs(var.app_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**character**](.md)|  | 

### Return type

[**array[UserAppConfig]**](UserAppConfig.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_available_app_configs_old**
> array[HistoricalAppConfig] get_available_app_configs_old(app_id)

Get historical app configurations for an app

### Example
```R
library(openlattice)

var.app_id <- 'app_id_example' # character | 

#Get historical app configurations for an app
api.instance <- AppApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_available_app_configs_old(var.app_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app_id** | [**character**](.md)|  | 

### Return type

[**array[HistoricalAppConfig]**](HistoricalAppConfig.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

