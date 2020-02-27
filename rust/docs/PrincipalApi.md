# \PrincipalApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_users**](PrincipalApi.md#get_all_users) | **Get** /datastore/principals/users/ | Get all users.
[**get_current_roles**](PrincipalApi.md#get_current_roles) | **Get** /datastore/principals/roles/current/ | Get current roles.
[**get_materialized_view_account**](PrincipalApi.md#get_materialized_view_account) | **Get** /datastore/principals/db | Get the db access credentials.
[**get_user**](PrincipalApi.md#get_user) | **Get** /datastore/principals/users/{userId} | Get the user for the given id.
[**search_all_users_by_email**](PrincipalApi.md#search_all_users_by_email) | **Get** /datastore/principals/users/search/email/"{emailAddress}" | Get the user id for the given email address.



## get_all_users

> ::std::collections::HashMap<String, crate::models::Auth0userBasic> get_all_users()
Get all users.

### Parameters

This endpoint does not need any parameter.

### Return type

[**::std::collections::HashMap<String, crate::models::Auth0userBasic>**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_current_roles

> Vec<crate::models::SecurablePrincipal> get_current_roles()
Get current roles.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::SecurablePrincipal>**](SecurablePrincipal.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_materialized_view_account

> crate::models::MaterializedViewAccount get_materialized_view_account()
Get the db access credentials.

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::MaterializedViewAccount**](MaterializedViewAccount.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_user

> crate::models::Auth0userBasic get_user(user_id)
Get the user for the given id.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**user_id** | **String** |  | [required] |

### Return type

[**crate::models::Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_all_users_by_email

> ::std::collections::HashMap<String, crate::models::Auth0userBasic> search_all_users_by_email(email_address)
Get the user id for the given email address.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**email_address** | **String** |  | [required] |

### Return type

[**::std::collections::HashMap<String, crate::models::Auth0userBasic>**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

