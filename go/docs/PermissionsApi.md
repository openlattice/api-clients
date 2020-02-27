# \PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAcl**](PermissionsApi.md#GetAcl) | **Post** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**UpdateAcl**](PermissionsApi.md#UpdateAcl) | **Patch** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.



## GetAcl

> Acl GetAcl(ctx, requestBody)

Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**requestBody** | [**[]string**](string.md)|  | 

### Return type

[**Acl**](Acl.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAcl

> UpdateAcl(ctx, aclData)

Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**aclData** | [**AclData**](AclData.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

