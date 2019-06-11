# OpenLatticeApi.DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearEntitySet**](DataApi.md#clearEntitySet) | **DELETE** /datastore/data/set/{entitySetId} | Clears the data from a single entity set.
[**deleteAllEntitiesFromEntitySet**](DataApi.md#deleteAllEntitiesFromEntitySet) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**getEntitySetSize**](DataApi.md#getEntitySetSize) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**loadEntitySetData**](DataApi.md#loadEntitySetData) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**loadFilteredEntitySetData**](DataApi.md#loadFilteredEntitySetData) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUID&#39;s


<a name="clearEntitySet"></a>
# **clearEntitySet**
> clearEntitySet(entitySetId)

Clears the data from a single entity set.

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

let apiInstance = new OpenLatticeApi.DataApi();
let entitySetId = null; // String | 
apiInstance.clearEntitySet(entitySetId, (error, data, response) => {
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
 **entitySetId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="deleteAllEntitiesFromEntitySet"></a>
# **deleteAllEntitiesFromEntitySet**
> deleteAllEntitiesFromEntitySet(entitySetId, type)

Clears the Entity matching the given Entity id and all of its neighbor Entities

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

let apiInstance = new OpenLatticeApi.DataApi();
let entitySetId = null; // String | 
let type = "type_example"; // String | 
apiInstance.deleteAllEntitiesFromEntitySet(entitySetId, type, (error, data, response) => {
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
 **entitySetId** | [**String**](.md)|  | 
 **type** | **String**|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getEntitySetSize"></a>
# **getEntitySetSize**
> Number getEntitySetSize(entitySetId)

Gets the number of entities in an entity set.

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

let apiInstance = new OpenLatticeApi.DataApi();
let entitySetId = null; // String | 
apiInstance.getEntitySetSize(entitySetId, (error, data, response) => {
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

### Return type

**Number**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="loadEntitySetData"></a>
# **loadEntitySetData**
> [{String: [String]}] loadEntitySetData(entitySetId)

Gets an iterable containing the entity data, using property type FQNs as key

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

let apiInstance = new OpenLatticeApi.DataApi();
let entitySetId = null; // String | 
apiInstance.loadEntitySetData(entitySetId, (error, data, response) => {
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

### Return type

**[{String: [String]}]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="loadFilteredEntitySetData"></a>
# **loadFilteredEntitySetData**
> [{String: [String]}] loadFilteredEntitySetData(entitySetId, entitySetSelection)

Gets a list of entities by UUID&#39;s

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

let apiInstance = new OpenLatticeApi.DataApi();
let entitySetId = null; // String | 
let entitySetSelection = [new OpenLatticeApi.EntitySetSelection()]; // [EntitySetSelection] | 
apiInstance.loadFilteredEntitySetData(entitySetId, entitySetSelection, (error, data, response) => {
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
 **entitySetSelection** | [**[EntitySetSelection]**](Array.md)|  | 

### Return type

**[{String: [String]}]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

