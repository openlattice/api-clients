# \PrincipalApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAllUsers**](PrincipalApi.md#GetAllUsers) | **Get** /datastore/principals/users/ | Get all users.
[**GetCurrentRoles**](PrincipalApi.md#GetCurrentRoles) | **Get** /datastore/principals/roles/current/ | Get current roles.
[**GetMaterializedViewAccount**](PrincipalApi.md#GetMaterializedViewAccount) | **Get** /datastore/principals/db | Get the db access credentials.
[**GetUser**](PrincipalApi.md#GetUser) | **Get** /datastore/principals/users/{userId} | Get the user for the given id.
[**SearchAllUsersByEmail**](PrincipalApi.md#SearchAllUsersByEmail) | **Get** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.



## GetAllUsers

> map[string]Auth0userBasic GetAllUsers(ctx, )

Get all users.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**map[string]Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetCurrentRoles

> []SecurablePrincipal GetCurrentRoles(ctx, )

Get current roles.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]SecurablePrincipal**](SecurablePrincipal.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMaterializedViewAccount

> MaterializedViewAccount GetMaterializedViewAccount(ctx, )

Get the db access credentials.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**MaterializedViewAccount**](MaterializedViewAccount.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetUser

> Auth0userBasic GetUser(ctx, userId)

Get the user for the given id.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**userId** | **string**|  | 

### Return type

[**Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchAllUsersByEmail

> map[string]Auth0userBasic SearchAllUsersByEmail(ctx, emailAddress)

Get the user id for the given email address.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**emailAddress** | **string**|  | 

### Return type

[**map[string]Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

