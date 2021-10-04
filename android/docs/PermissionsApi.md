# PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAcl**](PermissionsApi.md#getAcl) | **POST** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**updateAcl**](PermissionsApi.md#updateAcl) | **PATCH** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
[**updateAcls**](PermissionsApi.md#updateAcls) | **PATCH** /datastore/permissions/update | Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.



## getAcl

> Acl getAcl(requestBody)

Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PermissionsApi;

PermissionsApi apiInstance = new PermissionsApi();
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    Acl result = apiInstance.getAcl(requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PermissionsApi#getAcl");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List&lt;String&gt;**](String.md)|  |

### Return type

[**Acl**](Acl.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updateAcl

> updateAcl(aclData)

Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PermissionsApi;

PermissionsApi apiInstance = new PermissionsApi();
AclData aclData = new AclData(); // AclData | 
try {
    apiInstance.updateAcl(aclData);
} catch (ApiException e) {
    System.err.println("Exception when calling PermissionsApi#updateAcl");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aclData** | [**AclData**](AclData.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateAcls

> updateAcls(aclData)

Adds, removes, or sets the ace for a particular set of acl keys. Successful only if user is the owner of all acl keys.

### Example

```java
// Import classes:
//import org.openapitools.client.api.PermissionsApi;

PermissionsApi apiInstance = new PermissionsApi();
List<AclData> aclData = Arrays.asList(new AclData()); // List<AclData> | 
try {
    apiInstance.updateAcls(aclData);
} catch (ApiException e) {
    System.err.println("Exception when calling PermissionsApi#updateAcls");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **aclData** | [**List&lt;AclData&gt;**](AclData.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

