# \PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_acl**](PermissionsApi.md#get_acl) | **Post** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**update_acl**](PermissionsApi.md#update_acl) | **Patch** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.



## get_acl

> crate::models::Acl get_acl(request_body)
Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**request_body** | [**Vec<String>**](String.md) |  | [required] |

### Return type

[**crate::models::Acl**](Acl.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_acl

> update_acl(acl_data)
Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**acl_data** | [**AclData**](AclData.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

