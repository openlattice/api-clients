# \ShuttleApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateIntegrationDefinition**](ShuttleApi.md#CreateIntegrationDefinition) | **Post** /shuttle/integration/definition/{integrationName} | Creates a new integration definition for running recurring integrations
[**DeleteIntegrationDefinition**](ShuttleApi.md#DeleteIntegrationDefinition) | **Delete** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition
[**DeleteIntegrationJobStatus**](ShuttleApi.md#DeleteIntegrationJobStatus) | **Delete** /shuttle/integration/status/{jobId} | Deletes an integration job status from the integrationJobs map
[**EnqueueIntegration**](ShuttleApi.md#EnqueueIntegration) | **Get** /shuttle/integration/{integrationName}/{integrationKey} | Enqueues an integration on Shuttle Server for a given integration
[**PollAllIntegrations**](ShuttleApi.md#PollAllIntegrations) | **Get** /shuttle/integration/status | Polls the statuses of all running integrations
[**PollIntegration**](ShuttleApi.md#PollIntegration) | **Get** /shuttle/integration/status/{jobId} | Polls the status of an integration
[**ReadIntegrationDefinition**](ShuttleApi.md#ReadIntegrationDefinition) | **Get** /shuttle/integration/definition/{integrationName} | Gets an existing integration definition
[**UpdateIntegrationDefinition**](ShuttleApi.md#UpdateIntegrationDefinition) | **Patch** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition



## CreateIntegrationDefinition

> string CreateIntegrationDefinition(ctx, integrationName, integration)

Creates a new integration definition for running recurring integrations

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**integrationName** | **string**|  | 
**integration** | [**Integration**](Integration.md)|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteIntegrationDefinition

> DeleteIntegrationDefinition(ctx, integrationName)

Replaces any number of fields within an existing integration definition

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**integrationName** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteIntegrationJobStatus

> DeleteIntegrationJobStatus(ctx, jobId)

Deletes an integration job status from the integrationJobs map

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**jobId** | [**string**](.md)| the unique id of the integration job | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EnqueueIntegration

> string EnqueueIntegration(ctx, integrationName, integrationKey)

Enqueues an integration on Shuttle Server for a given integration

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**integrationName** | **string**| the name of the integration to be run | 
**integrationKey** | [**string**](.md)| the unique id used to authenticate an integration run | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PollAllIntegrations

> map[string]IntegrationJob PollAllIntegrations(ctx, )

Polls the statuses of all running integrations

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**map[string]IntegrationJob**](IntegrationJob.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PollIntegration

> string PollIntegration(ctx, jobId)

Polls the status of an integration

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**jobId** | [**string**](.md)| the unique id of the integration job | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReadIntegrationDefinition

> Integration ReadIntegrationDefinition(ctx, integrationName)

Gets an existing integration definition

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**integrationName** | **string**|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateIntegrationDefinition

> UpdateIntegrationDefinition(ctx, integrationName, integrationUpdate)

Replaces any number of fields within an existing integration definition

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**integrationName** | **string**|  | 
**integrationUpdate** | [**IntegrationUpdate**](IntegrationUpdate.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

