# ShuttleApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIntegrationDefinition**](ShuttleApi.md#createIntegrationDefinition) | **POST** /shuttle/integration/definition/{integrationName} | Creates a new integration definition for running recurring integrations
[**deleteIntegrationDefinition**](ShuttleApi.md#deleteIntegrationDefinition) | **DELETE** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition
[**deleteIntegrationJobStatus**](ShuttleApi.md#deleteIntegrationJobStatus) | **DELETE** /shuttle/integration/status/{jobId} | Deletes an integration job status from the integrationJobs map
[**enqueueIntegration**](ShuttleApi.md#enqueueIntegration) | **GET** /shuttle/integration/{integrationName}/{integrationKey} | Enqueues an integration on Shuttle Server for a given integration
[**pollAllIntegrations**](ShuttleApi.md#pollAllIntegrations) | **GET** /shuttle/integration/status | Polls the statuses of all running integrations
[**pollIntegration**](ShuttleApi.md#pollIntegration) | **GET** /shuttle/integration/status/{jobId} | Polls the status of an integration
[**readIntegrationDefinition**](ShuttleApi.md#readIntegrationDefinition) | **GET** /shuttle/integration/definition/{integrationName} | Gets an existing integration definition
[**updateIntegrationDefinition**](ShuttleApi.md#updateIntegrationDefinition) | **PATCH** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition



## createIntegrationDefinition

> UUID createIntegrationDefinition(integrationName, integration)

Creates a new integration definition for running recurring integrations

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
String integrationName = null; // String | 
Integration integration = new Integration(); // Integration | 
try {
    UUID result = apiInstance.createIntegrationDefinition(integrationName, integration);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#createIntegrationDefinition");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | [default to null]
 **integration** | [**Integration**](Integration.md)|  |

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteIntegrationDefinition

> deleteIntegrationDefinition(integrationName)

Replaces any number of fields within an existing integration definition

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
String integrationName = null; // String | 
try {
    apiInstance.deleteIntegrationDefinition(integrationName);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#deleteIntegrationDefinition");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteIntegrationJobStatus

> deleteIntegrationJobStatus(jobId)

Deletes an integration job status from the integrationJobs map

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
UUID jobId = null; // UUID | the unique id of the integration job
try {
    apiInstance.deleteIntegrationJobStatus(jobId);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#deleteIntegrationJobStatus");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | [**UUID**](.md)| the unique id of the integration job | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enqueueIntegration

> UUID enqueueIntegration(integrationName, integrationKey)

Enqueues an integration on Shuttle Server for a given integration

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
String integrationName = null; // String | the name of the integration to be run
UUID integrationKey = null; // UUID | the unique id used to authenticate an integration run
try {
    UUID result = apiInstance.enqueueIntegration(integrationName, integrationKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#enqueueIntegration");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**| the name of the integration to be run | [default to null]
 **integrationKey** | [**UUID**](.md)| the unique id used to authenticate an integration run | [default to null]

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pollAllIntegrations

> Map&lt;String, IntegrationJob&gt; pollAllIntegrations()

Polls the statuses of all running integrations

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
try {
    Map<String, IntegrationJob> result = apiInstance.pollAllIntegrations();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#pollAllIntegrations");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Map&lt;String, IntegrationJob&gt;**](IntegrationJob.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pollIntegration

> IntegrationStatus pollIntegration(jobId)

Polls the status of an integration

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
UUID jobId = null; // UUID | the unique id of the integration job
try {
    IntegrationStatus result = apiInstance.pollIntegration(jobId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#pollIntegration");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | [**UUID**](.md)| the unique id of the integration job | [default to null]

### Return type

[**IntegrationStatus**](IntegrationStatus.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## readIntegrationDefinition

> Integration readIntegrationDefinition(integrationName)

Gets an existing integration definition

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
String integrationName = null; // String | 
try {
    Integration result = apiInstance.readIntegrationDefinition(integrationName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#readIntegrationDefinition");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | [default to null]

### Return type

[**Integration**](Integration.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateIntegrationDefinition

> updateIntegrationDefinition(integrationName, integrationUpdate)

Replaces any number of fields within an existing integration definition

### Example

```java
// Import classes:
//import org.openapitools.client.api.ShuttleApi;

ShuttleApi apiInstance = new ShuttleApi();
String integrationName = null; // String | 
IntegrationUpdate integrationUpdate = new IntegrationUpdate(); // IntegrationUpdate | 
try {
    apiInstance.updateIntegrationDefinition(integrationName, integrationUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling ShuttleApi#updateIntegrationDefinition");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | [default to null]
 **integrationUpdate** | [**IntegrationUpdate**](IntegrationUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

