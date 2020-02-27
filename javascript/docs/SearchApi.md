# OpenLatticeApi.SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeAdvancedEntitySetDataQuery**](SearchApi.md#executeAdvancedEntitySetDataQuery) | **POST** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**executeEntityNeighborSearch**](SearchApi.md#executeEntityNeighborSearch) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**executeEntityNeighborSearchBulk**](SearchApi.md#executeEntityNeighborSearchBulk) | **POST** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**executeEntitySetDataQuery**](SearchApi.md#executeEntitySetDataQuery) | **POST** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**executeEntitySetKeywordQuery**](SearchApi.md#executeEntitySetKeywordQuery) | **POST** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
[**executeFilteredEntityNeighborIdSearch**](SearchApi.md#executeFilteredEntityNeighborIdSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**executeFilteredEntityNeighborSearch**](SearchApi.md#executeFilteredEntityNeighborSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**getEntitySets**](SearchApi.md#getEntitySets) | **GET** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
[**getPopularEntitySet**](SearchApi.md#getPopularEntitySet) | **GET** /datastore/search/popular | Get the most popular entity sets.
[**searchEntitySetData**](SearchApi.md#searchEntitySetData) | **PATCH** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term



## executeAdvancedEntitySetDataQuery

> DataSearchResult executeAdvancedEntitySetDataQuery(entitySetId, advancedSearch)

Executes a search over the data of a given entity set to find rows that match the search term

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
let advancedSearch = new OpenLatticeApi.AdvancedSearch(); // AdvancedSearch | 
apiInstance.executeAdvancedEntitySetDataQuery(entitySetId, advancedSearch, (error, data, response) => {
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
 **advancedSearch** | [**AdvancedSearch**](AdvancedSearch.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntityNeighborSearch

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


## executeEntityNeighborSearchBulk

> {String: [NeighborEntityDetails]} executeEntityNeighborSearchBulk(entitySetId, requestBody)

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
let requestBody = ["null"]; // [String] | 
apiInstance.executeEntityNeighborSearchBulk(entitySetId, requestBody, (error, data, response) => {
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
 **requestBody** | [**[String]**](String.md)|  | 

### Return type

**{String: [NeighborEntityDetails]}**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntitySetDataQuery

> DataSearchResult executeEntitySetDataQuery(entitySetId, searchTerm)

Executes a search over the data of a given entity set to find rows that match the search term

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
let searchTerm = new OpenLatticeApi.SearchTerm(); // SearchTerm | A JSON object that contains three parameters, \"start\", which specifies the hit number to start returning results on for paging, \"maxHits\", which specifies the maximum number of hits to return, and \"searchTerm\", which is the search term results will match on.
apiInstance.executeEntitySetDataQuery(entitySetId, searchTerm, (error, data, response) => {
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
 **searchTerm** | [**SearchTerm**](SearchTerm.md)| A JSON object that contains three parameters, \&quot;start\&quot;, which specifies the hit number to start returning results on for paging, \&quot;maxHits\&quot;, which specifies the maximum number of hits to return, and \&quot;searchTerm\&quot;, which is the search term results will match on. | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntitySetKeywordQuery

> {String: {String: {String: [NeighborEntityIds]}}} executeEntitySetKeywordQuery(search)

The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.

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
let search = new OpenLatticeApi.Search(); // Search | 
apiInstance.executeEntitySetKeywordQuery(search, (error, data, response) => {
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
 **search** | [**Search**](Search.md)|  | 

### Return type

**{String: {String: {String: [NeighborEntityIds]}}}**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeFilteredEntityNeighborIdSearch

> {String: {String: {String: [NeighborEntityIds]}}} executeFilteredEntityNeighborIdSearch(entitySetId, neighborSearchFilter)

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

**{String: {String: {String: [NeighborEntityIds]}}}**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeFilteredEntityNeighborSearch

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


## getEntitySets

> [SearchResult] getEntitySets(start, numResults)

Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.

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
let start = 56; // Number | The first result number to return
let numResults = 56; // Number | The total number of results to return
apiInstance.getEntitySets(start, numResults, (error, data, response) => {
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
 **start** | **Number**| The first result number to return | 
 **numResults** | **Number**| The total number of results to return | 

### Return type

[**[SearchResult]**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPopularEntitySet

> [EntitySet] getPopularEntitySet()

Get the most popular entity sets.

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
apiInstance.getPopularEntitySet((error, data, response) => {
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

[**[EntitySet]**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchEntitySetData

> DataSearchResult searchEntitySetData(searchConstraints)

Executes a search over the data of a given entity set to find rows that match the search term

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
let searchConstraints = new OpenLatticeApi.SearchConstraints(); // SearchConstraints | 
apiInstance.searchEntitySetData(searchConstraints, (error, data, response) => {
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
 **searchConstraints** | [**SearchConstraints**](SearchConstraints.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

