# PrincipalApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllUsers**](PrincipalApi.md#getAllUsers) | **GET** /datastore/principals/users/ | Get all users.
[**getCurrentRoles**](PrincipalApi.md#getCurrentRoles) | **GET** /datastore/principals/roles/current/ | Get current roles.
[**getMaterializedViewAccount**](PrincipalApi.md#getMaterializedViewAccount) | **GET** /datastore/principals/db | Get the db access credentials.
[**getUser**](PrincipalApi.md#getUser) | **GET** /datastore/principals/users/{userId} | Get the user for the given id.
[**searchAllUsers**](PrincipalApi.md#searchAllUsers) | **GET** /datastore/principals/users/search/&quot;{searchQuery}&quot; | Get the user id for the given search.
[**searchAllUsersByEmail**](PrincipalApi.md#searchAllUsersByEmail) | **GET** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.
[**syncCallingUser**](PrincipalApi.md#syncCallingUser) | **GET** /datastore/principals/sync/ | Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.



## getAllUsers

> Map&lt;String, Auth0userBasic&gt; getAllUsers()

Get all users.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PrincipalApi;

PrincipalApi apiInstance = new PrincipalApi();
try {
    Map<String, Auth0userBasic> result = apiInstance.getAllUsers();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PrincipalApi#getAllUsers");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Map&lt;String, Auth0userBasic&gt;**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getCurrentRoles

> List&lt;SecurablePrincipal&gt; getCurrentRoles()

Get current roles.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PrincipalApi;

PrincipalApi apiInstance = new PrincipalApi();
try {
    List<SecurablePrincipal> result = apiInstance.getCurrentRoles();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PrincipalApi#getCurrentRoles");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;SecurablePrincipal&gt;**](SecurablePrincipal.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getMaterializedViewAccount

> MaterializedViewAccount getMaterializedViewAccount()

Get the db access credentials.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PrincipalApi;

PrincipalApi apiInstance = new PrincipalApi();
try {
    MaterializedViewAccount result = apiInstance.getMaterializedViewAccount();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PrincipalApi#getMaterializedViewAccount");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**MaterializedViewAccount**](MaterializedViewAccount.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getUser

> Auth0userBasic getUser(userId)

Get the user for the given id.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PrincipalApi;

PrincipalApi apiInstance = new PrincipalApi();
String userId = null; // String | 
try {
    Auth0userBasic result = apiInstance.getUser(userId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PrincipalApi#getUser");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [default to null]

### Return type

[**Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchAllUsers

> Map&lt;String, Auth0userBasic&gt; searchAllUsers(searchQuery)

Get the user id for the given search.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PrincipalApi;

PrincipalApi apiInstance = new PrincipalApi();
String searchQuery = null; // String | 
try {
    Map<String, Auth0userBasic> result = apiInstance.searchAllUsers(searchQuery);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PrincipalApi#searchAllUsers");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchQuery** | **String**|  | [default to null]

### Return type

[**Map&lt;String, Auth0userBasic&gt;**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchAllUsersByEmail

> Map&lt;String, Auth0userBasic&gt; searchAllUsersByEmail(emailAddress)

Get the user id for the given email address.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PrincipalApi;

PrincipalApi apiInstance = new PrincipalApi();
String emailAddress = null; // String | 
try {
    Map<String, Auth0userBasic> result = apiInstance.searchAllUsersByEmail(emailAddress);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PrincipalApi#searchAllUsersByEmail");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailAddress** | **String**|  | [default to null]

### Return type

[**Map&lt;String, Auth0userBasic&gt;**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## syncCallingUser

> syncCallingUser()

Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PrincipalApi;

PrincipalApi apiInstance = new PrincipalApi();
try {
    apiInstance.syncCallingUser();
} catch (ApiException e) {
    System.err.println("Exception when calling PrincipalApi#syncCallingUser");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

