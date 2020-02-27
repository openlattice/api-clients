# \AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CheckAuthorizations**](AuthorizationsApi.md#CheckAuthorizations) | **Post** /datastore/authorizations | Check authorizations
[**GetAccessibleObjects**](AuthorizationsApi.md#GetAccessibleObjects) | **Get** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.



## CheckAuthorizations

> []Authorization CheckAuthorizations(ctx, accessCheck)

Check authorizations

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**accessCheck** | [**AccessCheck**](AccessCheck.md)|  | 

### Return type

[**[]Authorization**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAccessibleObjects

> AuthorizedObjectsSearchResult GetAccessibleObjects(ctx, optional)

Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetAccessibleObjectsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetAccessibleObjectsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **objectType** | **optional.String**|  | 
 **permission** | **optional.String**|  | 
 **pagingToken** | **optional.String**|  | 

### Return type

[**AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

