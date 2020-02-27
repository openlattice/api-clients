# OpenLatticeApi.AdminApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearIndexingQueue**](AdminApi.md#clearIndexingQueue) | **DELETE** /indexer/index/reindex | Clears all the data currently being indexed in the queue.
[**getIndexingState**](AdminApi.md#getIndexingState) | **GET** /indexer/index/reindex | Retrieve the current state of reindexing jobs
[**reindex**](AdminApi.md#reindex) | **POST** /indexer/index/reindex | Merge job descriptions for performing a partial or full reindex of provided entity sets.
[**updateReindex**](AdminApi.md#updateReindex) | **PUT** /indexer/index/reindex | Replaces job descriptions for performing a partial or full reindex of provided entity sets.



## clearIndexingQueue

> Number clearIndexingQueue()

Clears all the data currently being indexed in the queue.

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

let apiInstance = new OpenLatticeApi.AdminApi();
apiInstance.clearIndexingQueue((error, data, response) => {
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

**Number**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIndexingState

> IndexingState getIndexingState()

Retrieve the current state of reindexing jobs

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

let apiInstance = new OpenLatticeApi.AdminApi();
apiInstance.getIndexingState((error, data, response) => {
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

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reindex

> IndexingState reindex(requestBody)

Merge job descriptions for performing a partial or full reindex of provided entity sets.

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

let apiInstance = new OpenLatticeApi.AdminApi();
let requestBody = {key: null}; // {String: [String]} | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.
apiInstance.reindex(requestBody, (error, data, response) => {
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
 **requestBody** | [**{String: [String]}**](Array.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updateReindex

> IndexingState updateReindex(requestBody)

Replaces job descriptions for performing a partial or full reindex of provided entity sets.

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

let apiInstance = new OpenLatticeApi.AdminApi();
let requestBody = {key: null}; // {String: [String]} | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.
apiInstance.updateReindex(requestBody, (error, data, response) => {
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
 **requestBody** | [**{String: [String]}**](Array.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

