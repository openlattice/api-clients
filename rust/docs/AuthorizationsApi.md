# \AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_authorizations**](AuthorizationsApi.md#check_authorizations) | **Post** /datastore/authorizations | Check authorizations
[**get_accessible_objects**](AuthorizationsApi.md#get_accessible_objects) | **Get** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.



## check_authorizations

> Vec<crate::models::Authorization> check_authorizations(access_check)
Check authorizations

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**access_check** | [**AccessCheck**](AccessCheck.md) |  | [required] |

### Return type

[**Vec<crate::models::Authorization>**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_accessible_objects

> crate::models::AuthorizedObjectsSearchResult get_accessible_objects(object_type, permission, paging_token)
Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**object_type** | Option<**String**> |  |  |
**permission** | Option<**String**> |  |  |
**paging_token** | Option<**String**> |  |  |

### Return type

[**crate::models::AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

