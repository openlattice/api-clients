# ShuttleApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration_definition**](ShuttleApi.md#create_integration_definition) | **POST** /shuttle/integration/definition/{integrationName} | Creates a new integration definition for running recurring integrations
[**delete_integration_definition**](ShuttleApi.md#delete_integration_definition) | **DELETE** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition
[**delete_integration_job_status**](ShuttleApi.md#delete_integration_job_status) | **DELETE** /shuttle/integration/status/{jobId} | Deletes an integration job status from the integrationJobs map
[**enqueue_integration**](ShuttleApi.md#enqueue_integration) | **GET** /shuttle/integration/{integrationName}/{integrationKey} | Enqueues an integration on Shuttle Server for a given integration
[**poll_all_integrations**](ShuttleApi.md#poll_all_integrations) | **GET** /shuttle/integration/status | Polls the statuses of all running integrations
[**poll_integration**](ShuttleApi.md#poll_integration) | **GET** /shuttle/integration/status/{jobId} | Polls the status of an integration
[**read_integration_definition**](ShuttleApi.md#read_integration_definition) | **GET** /shuttle/integration/definition/{integrationName} | Gets an existing integration definition
[**update_integration_definition**](ShuttleApi.md#update_integration_definition) | **PATCH** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition


# **create_integration_definition**
> character create_integration_definition(integration_name, integration)

Creates a new integration definition for running recurring integrations

### Example
```R
library(openlattice)

var.integration_name <- 'integration_name_example' # character | 
var.integration <- Integration$new("key_example", "environment_example", "s3Bucket_example", list("contacts_example"), "organizationId_example", "entitySetId_example", 123, list("callback_example"), TODO) # Integration | 

#Creates a new integration definition for running recurring integrations
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$create_integration_definition(var.integration_name, var.integration)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **character**|  | 
 **integration** | [**Integration**](Integration.md)|  | 

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

# **delete_integration_definition**
> delete_integration_definition(integration_name)

Replaces any number of fields within an existing integration definition

### Example
```R
library(openlattice)

var.integration_name <- 'integration_name_example' # character | 

#Replaces any number of fields within an existing integration definition
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_integration_definition(var.integration_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **character**|  | 

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

# **delete_integration_job_status**
> delete_integration_job_status(job_id)

Deletes an integration job status from the integrationJobs map

### Example
```R
library(openlattice)

var.job_id <- 'job_id_example' # character | the unique id of the integration job

#Deletes an integration job status from the integrationJobs map
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_integration_job_status(var.job_id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**character**](.md)| the unique id of the integration job | 

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

# **enqueue_integration**
> character enqueue_integration(integration_name, integration_key)

Enqueues an integration on Shuttle Server for a given integration

### Example
```R
library(openlattice)

var.integration_name <- 'integration_name_example' # character | the name of the integration to be run
var.integration_key <- 'integration_key_example' # character | the unique id used to authenticate an integration run

#Enqueues an integration on Shuttle Server for a given integration
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$enqueue_integration(var.integration_name, var.integration_key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **character**| the name of the integration to be run | 
 **integration_key** | [**character**](.md)| the unique id used to authenticate an integration run | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **poll_all_integrations**
> list(IntegrationJob) poll_all_integrations()

Polls the statuses of all running integrations

### Example
```R
library(openlattice)


#Polls the statuses of all running integrations
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$poll_all_integrations()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list(IntegrationJob)**](IntegrationJob.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **poll_integration**
> character poll_integration(job_id)

Polls the status of an integration

### Example
```R
library(openlattice)

var.job_id <- 'job_id_example' # character | the unique id of the integration job

#Polls the status of an integration
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$poll_integration(var.job_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**character**](.md)| the unique id of the integration job | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **read_integration_definition**
> Integration read_integration_definition(integration_name)

Gets an existing integration definition

### Example
```R
library(openlattice)

var.integration_name <- 'integration_name_example' # character | 

#Gets an existing integration definition
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$read_integration_definition(var.integration_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **character**|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_integration_definition**
> update_integration_definition(integration_name, integration_update)

Replaces any number of fields within an existing integration definition

### Example
```R
library(openlattice)

var.integration_name <- 'integration_name_example' # character | 
var.integration_update <- IntegrationUpdate$new("environment_example", "s3Bucket_example", list("contacts_example"), "organizationId_example", 123, list("callbackUrls_example"), TODO) # IntegrationUpdate | 

#Replaces any number of fields within an existing integration definition
api.instance <- ShuttleApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_integration_definition(var.integration_name, var.integration_update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **character**|  | 
 **integration_update** | [**IntegrationUpdate**](IntegrationUpdate.md)|  | 

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

