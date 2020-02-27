# OpenLatticeApi.DataIntegrationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEntityKeyIds**](DataIntegrationsApi.md#getEntityKeyIds) | **POST** /datastore/integration/entityKeyIds | Get entity key IDs
[**integrateEntityAndAssociationData**](DataIntegrationsApi.md#integrateEntityAndAssociationData) | **POST** /datastore/integration | Integrate entity and association data



## getEntityKeyIds

> [String] getEntityKeyIds(entityKey)

Get entity key IDs

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

let apiInstance = new OpenLatticeApi.DataIntegrationsApi();
let entityKey = [new OpenLatticeApi.EntityKey()]; // [EntityKey] | 
apiInstance.getEntityKeyIds(entityKey, (error, data, response) => {
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
 **entityKey** | [**[EntityKey]**](EntityKey.md)|  | 

### Return type

**[String]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## integrateEntityAndAssociationData

> IntegrationResults integrateEntityAndAssociationData(detailedResults, bulkDataCreation)

Integrate entity and association data

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

let apiInstance = new OpenLatticeApi.DataIntegrationsApi();
let detailedResults = true; // Boolean | 
let bulkDataCreation = new OpenLatticeApi.BulkDataCreation(); // BulkDataCreation | 
apiInstance.integrateEntityAndAssociationData(detailedResults, bulkDataCreation, (error, data, response) => {
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
 **detailedResults** | **Boolean**|  | 
 **bulkDataCreation** | [**BulkDataCreation**](BulkDataCreation.md)|  | 

### Return type

[**IntegrationResults**](IntegrationResults.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

