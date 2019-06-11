# OpenLatticeApi.SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeEntityNeighborSearch**](SearchApi.md#executeEntityNeighborSearch) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**executeFilteredEntityNeighborIdSearch**](SearchApi.md#executeFilteredEntityNeighborIdSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**executeFilteredEntityNeighborSearch**](SearchApi.md#executeFilteredEntityNeighborSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association


<a name="executeEntityNeighborSearch"></a>
# **executeEntityNeighborSearch**
> [NeighborEntityDetails] executeEntityNeighborSearch(entitySetId, entityKeyId)

Executes a search for all neighbors of an entity that are connected by an association

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

let apiInstance = new OpenLatticeApi.SearchApi();
let entitySetId = null; // String | 
let entityKeyId = null; // String | 
apiInstance.executeEntityNeighborSearch(entitySetId, entityKeyId, (error, data, response) => {
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
 **entitySetId** | [**String**](.md)|  | 
 **entityKeyId** | [**String**](.md)|  | 

### Return type

[**[NeighborEntityDetails]**](NeighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="executeFilteredEntityNeighborIdSearch"></a>
# **executeFilteredEntityNeighborIdSearch**
> {String: {String: [NeighborEntityDetailsReduced]}} executeFilteredEntityNeighborIdSearch(entitySetId, neighborSearchFilter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails

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

let apiInstance = new OpenLatticeApi.SearchApi();
let entitySetId = null; // String | 
let neighborSearchFilter = new OpenLatticeApi.NeighborSearchFilter(); // NeighborSearchFilter | 
apiInstance.executeFilteredEntityNeighborIdSearch(entitySetId, neighborSearchFilter, (error, data, response) => {
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
 **entitySetId** | [**String**](.md)|  | 
 **neighborSearchFilter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**{String: {String: [NeighborEntityDetailsReduced]}}**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="executeFilteredEntityNeighborSearch"></a>
# **executeFilteredEntityNeighborSearch**
> {String: [NeighborEntityDetails]} executeFilteredEntityNeighborSearch(entitySetId, neighborSearchFilter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

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

let apiInstance = new OpenLatticeApi.SearchApi();
let entitySetId = null; // String | 
let neighborSearchFilter = new OpenLatticeApi.NeighborSearchFilter(); // NeighborSearchFilter | 
apiInstance.executeFilteredEntityNeighborSearch(entitySetId, neighborSearchFilter, (error, data, response) => {
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
 **entitySetId** | [**String**](.md)|  | 
 **neighborSearchFilter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**{String: [NeighborEntityDetails]}**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

