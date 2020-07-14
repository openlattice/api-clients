# OpenLatticeApi.ShuttleApi

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

> String createIntegrationDefinition(integrationName, integration)

Creates a new integration definition for running recurring integrations

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
let integrationName = "integrationName_example"; // String | 
let integration = new OpenLatticeApi.Integration(); // Integration | 
apiInstance.createIntegrationDefinition(integrationName, integration, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | 
 **integration** | [**Integration**](Integration.md)|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteIntegrationDefinition

> deleteIntegrationDefinition(integrationName)

Replaces any number of fields within an existing integration definition

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
let integrationName = "integrationName_example"; // String | 
apiInstance.deleteIntegrationDefinition(integrationName, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | 

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

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
let jobId = null; // String | the unique id of the integration job
apiInstance.deleteIntegrationJobStatus(jobId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | [**String**](.md)| the unique id of the integration job | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## enqueueIntegration

> String enqueueIntegration(integrationName, integrationKey)

Enqueues an integration on Shuttle Server for a given integration

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
let integrationName = "integrationName_example"; // String | the name of the integration to be run
let integrationKey = null; // String | the unique id used to authenticate an integration run
apiInstance.enqueueIntegration(integrationName, integrationKey, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**| the name of the integration to be run | 
 **integrationKey** | [**String**](.md)| the unique id used to authenticate an integration run | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pollAllIntegrations

> {String: IntegrationJob} pollAllIntegrations()

Polls the statuses of all running integrations

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
apiInstance.pollAllIntegrations((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**{String: IntegrationJob}**](IntegrationJob.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pollIntegration

> String pollIntegration(jobId)

Polls the status of an integration

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
let jobId = null; // String | the unique id of the integration job
apiInstance.pollIntegration(jobId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jobId** | [**String**](.md)| the unique id of the integration job | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## readIntegrationDefinition

> Integration readIntegrationDefinition(integrationName)

Gets an existing integration definition

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
let integrationName = "integrationName_example"; // String | 
apiInstance.readIntegrationDefinition(integrationName, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | 

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

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.ShuttleApi();
let integrationName = "integrationName_example"; // String | 
let integrationUpdate = new OpenLatticeApi.IntegrationUpdate(); // IntegrationUpdate | 
apiInstance.updateIntegrationDefinition(integrationName, integrationUpdate, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integrationName** | **String**|  | 
 **integrationUpdate** | [**IntegrationUpdate**](IntegrationUpdate.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

