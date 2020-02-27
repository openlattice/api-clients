# OpenLatticeApi.LinkingApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLinkingFeedback**](LinkingApi.md#addLinkingFeedback) | **PUT** /linker/linkingfeedback | Submits feedbacks for a given linking entity set and linking id in a batch format.
[**deleteLinkingFeedback**](LinkingApi.md#deleteLinkingFeedback) | **DELETE** /linker/linkingfeedback | Deletes linking feedback
[**getAllLinkingFeedback**](LinkingApi.md#getAllLinkingFeedback) | **GET** /linker/linkingfeedback/all | Returns all feedback submitted
[**getAllLinkingFeedbackWithFeatures**](LinkingApi.md#getAllLinkingFeedbackWithFeatures) | **GET** /linker/linkingfeedback/features/all | Returns all feedback submitted walong with the features of pairwise entities
[**getLinkingFeedbackWithFeatures**](LinkingApi.md#getLinkingFeedbackWithFeatures) | **POST** /linker/linkingfeedback/features | Returns the feedback on the given entity pair along with their features
[**getLinkingFeedbacksOnEntity**](LinkingApi.md#getLinkingFeedbacksOnEntity) | **POST** /linker/linkingfeedback/entity | Returns positive/negative/all linking feedbacks on the given entity.



## addLinkingFeedback

> Number addLinkingFeedback(linkingFeedback)

Submits feedbacks for a given linking entity set and linking id in a batch format.

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

let apiInstance = new OpenLatticeApi.LinkingApi();
let linkingFeedback = new OpenLatticeApi.LinkingFeedback(); // LinkingFeedback | 
apiInstance.addLinkingFeedback(linkingFeedback, (error, data, response) => {
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
 **linkingFeedback** | [**LinkingFeedback**](LinkingFeedback.md)|  | 

### Return type

**Number**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteLinkingFeedback

> Number deleteLinkingFeedback(entityKeyPair)

Deletes linking feedback

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

let apiInstance = new OpenLatticeApi.LinkingApi();
let entityKeyPair = new OpenLatticeApi.EntityKeyPair(); // EntityKeyPair | 
apiInstance.deleteLinkingFeedback(entityKeyPair, (error, data, response) => {
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
 **entityKeyPair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

**Number**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getAllLinkingFeedback

> [EntityLinkingFeedback] getAllLinkingFeedback()

Returns all feedback submitted

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

let apiInstance = new OpenLatticeApi.LinkingApi();
apiInstance.getAllLinkingFeedback((error, data, response) => {
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

[**[EntityLinkingFeedback]**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllLinkingFeedbackWithFeatures

> [EntityLinkingFeatures] getAllLinkingFeedbackWithFeatures()

Returns all feedback submitted walong with the features of pairwise entities

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.LinkingApi();
apiInstance.getAllLinkingFeedbackWithFeatures((error, data, response) => {
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

[**[EntityLinkingFeatures]**](EntityLinkingFeatures.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getLinkingFeedbackWithFeatures

> EntityLinkingFeatures getLinkingFeedbackWithFeatures(entityKeyPair)

Returns the feedback on the given entity pair along with their features

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

let apiInstance = new OpenLatticeApi.LinkingApi();
let entityKeyPair = new OpenLatticeApi.EntityKeyPair(); // EntityKeyPair | 
apiInstance.getLinkingFeedbackWithFeatures(entityKeyPair, (error, data, response) => {
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
 **entityKeyPair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

[**EntityLinkingFeatures**](EntityLinkingFeatures.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getLinkingFeedbacksOnEntity

> [EntityLinkingFeedback] getLinkingFeedbacksOnEntity(feedbackType, entityDataKey)

Returns positive/negative/all linking feedbacks on the given entity.

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

let apiInstance = new OpenLatticeApi.LinkingApi();
let feedbackType = "feedbackType_example"; // String | 
let entityDataKey = new OpenLatticeApi.EntityDataKey(); // EntityDataKey | 
apiInstance.getLinkingFeedbacksOnEntity(feedbackType, entityDataKey, (error, data, response) => {
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
 **feedbackType** | **String**|  | 
 **entityDataKey** | [**EntityDataKey**](EntityDataKey.md)|  | 

### Return type

[**[EntityLinkingFeedback]**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

