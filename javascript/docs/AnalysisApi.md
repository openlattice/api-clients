# OpenLatticeApi.AnalysisApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSimpleAssemblyAggregates**](AnalysisApi.md#getSimpleAssemblyAggregates) | **POST** /datastore/assembly-analysis/simple-aggregation | Get a simple aggregation


<a name="getSimpleAssemblyAggregates"></a>
# **getSimpleAssemblyAggregates**
> AssemblyAggregationResult getSimpleAssemblyAggregates(assemblyAggregationFilter)

Get a simple aggregation

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

let apiInstance = new OpenLatticeApi.AnalysisApi();
let assemblyAggregationFilter = new OpenLatticeApi.AssemblyAggregationFilter(); // AssemblyAggregationFilter | 
apiInstance.getSimpleAssemblyAggregates(assemblyAggregationFilter, (error, data, response) => {
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
 **assemblyAggregationFilter** | [**AssemblyAggregationFilter**](AssemblyAggregationFilter.md)|  | 

### Return type

[**AssemblyAggregationResult**](AssemblyAggregationResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

