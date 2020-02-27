# AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkAuthorizations**](AuthorizationsApi.md#checkAuthorizations) | **POST** /datastore/authorizations | Check authorizations
[**getAccessibleObjects**](AuthorizationsApi.md#getAccessibleObjects) | **GET** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.



## checkAuthorizations

> List&lt;Authorization&gt; checkAuthorizations(accessCheck)

Check authorizations

### Example

```java
// Import classes:
//import org.openapitools.client.api.AuthorizationsApi;

AuthorizationsApi apiInstance = new AuthorizationsApi();
AccessCheck accessCheck = new AccessCheck(); // AccessCheck | 
try {
    List<Authorization> result = apiInstance.checkAuthorizations(accessCheck);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthorizationsApi#checkAuthorizations");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessCheck** | [**AccessCheck**](AccessCheck.md)|  |

### Return type

[**List&lt;Authorization&gt;**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getAccessibleObjects

> AuthorizedObjectsSearchResult getAccessibleObjects(objectType, permission, pagingToken)

Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AuthorizationsApi;

AuthorizationsApi apiInstance = new AuthorizationsApi();
String objectType = null; // String | 
String permission = null; // String | 
String pagingToken = null; // String | 
try {
    AuthorizedObjectsSearchResult result = apiInstance.getAccessibleObjects(objectType, permission, pagingToken);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AuthorizationsApi#getAccessibleObjects");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **objectType** | **String**|  | [optional] [default to null] [enum: EntityType, EntitySet, PropertyTypeInEntitySet, Datasource, ComplexType, LinkingEntityType, AssociationType, Organization, App, AppType, Principal, Role, UnknownEdmTemplate]
 **permission** | **String**|  | [optional] [default to null] [enum: DISCOVER, MATERIALIZE, LINK, READ, WRITE, OWNER]
 **pagingToken** | **String**|  | [optional] [default to null]

### Return type

[**AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

