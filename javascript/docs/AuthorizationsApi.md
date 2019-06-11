# OpenLatticeApi.AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkAuthorizations**](AuthorizationsApi.md#checkAuthorizations) | **POST** /datastore/authorizations | Check authorizations
[**getAccessibleObjects**](AuthorizationsApi.md#getAccessibleObjects) | **GET** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.


<a name="checkAuthorizations"></a>
# **checkAuthorizations**
> [Authorization] checkAuthorizations(accessCheck)

Check authorizations

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

let apiInstance = new OpenLatticeApi.AuthorizationsApi();
let accessCheck = new OpenLatticeApi.AccessCheck(); // AccessCheck | 
apiInstance.checkAuthorizations(accessCheck, (error, data, response) => {
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
 **accessCheck** | [**AccessCheck**](AccessCheck.md)|  | 

### Return type

[**[Authorization]**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getAccessibleObjects"></a>
# **getAccessibleObjects**
> AuthorizedObjectsSearchResult getAccessibleObjects(opts)

Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

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

let apiInstance = new OpenLatticeApi.AuthorizationsApi();
let opts = {
  'objectType': "objectType_example", // String | 
  'permission': "permission_example", // String | 
  'pagingToken': "pagingToken_example" // String | 
};
apiInstance.getAccessibleObjects(opts, (error, data, response) => {
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
 **objectType** | **String**|  | [optional] 
 **permission** | **String**|  | [optional] 
 **pagingToken** | **String**|  | [optional] 

### Return type

[**AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

