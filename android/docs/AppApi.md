# AppApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createApp**](AppApi.md#createApp) | **POST** /datastore/app | Create an app if it doesn&#39;t exist.
[**createAppRole**](AppApi.md#createAppRole) | **POST** /datastore/app/update/{appId}/role | Create an app role
[**deleteApp**](AppApi.md#deleteApp) | **DELETE** /datastore/app/{appId} | Delete an app
[**deleteRoleFromApp**](AppApi.md#deleteRoleFromApp) | **DELETE** /datastore/app/update/{appId}/role/{roleId} | Delete an app role
[**getApp**](AppApi.md#getApp) | **GET** /datastore/app/{appId} | Get an app based on the ID
[**getAppByName**](AppApi.md#getAppByName) | **GET** /datastore/app/lookup/{name} | Get an app based on the name
[**getApps**](AppApi.md#getApps) | **GET** /datastore/app | Get all apps
[**getAvailableAppConfigs**](AppApi.md#getAvailableAppConfigs) | **GET** /datastore/app/config | Get available app configurations
[**getAvailableAppConfigsOld**](AppApi.md#getAvailableAppConfigsOld) | **GET** /datastore/app/config/{appId} | Get historical app configurations for an app



## createApp

> UUID createApp(app)

Create an app if it doesn&#39;t exist.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
App app = new App(); // App | 
try {
    UUID result = apiInstance.createApp(app);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#createApp");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **app** | [**App**](App.md)|  |

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createAppRole

> UUID createAppRole(appId, appRole)

Create an app role

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
UUID appId = null; // UUID | 
AppRole appRole = new AppRole(); // AppRole | 
try {
    UUID result = apiInstance.createAppRole(appId, appRole);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#createAppRole");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | [**UUID**](.md)|  | [default to null]
 **appRole** | [**AppRole**](AppRole.md)|  |

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteApp

> deleteApp(appId)

Delete an app

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
UUID appId = null; // UUID | 
try {
    apiInstance.deleteApp(appId);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#deleteApp");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteRoleFromApp

> deleteRoleFromApp(appId, roleId)

Delete an app role

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
UUID appId = null; // UUID | 
UUID roleId = null; // UUID | 
try {
    apiInstance.deleteRoleFromApp(appId, roleId);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#deleteRoleFromApp");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getApp

> App getApp(appId)

Get an app based on the ID

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
UUID appId = null; // UUID | 
try {
    App result = apiInstance.getApp(appId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#getApp");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | [**UUID**](.md)|  | [default to null]

### Return type

[**App**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAppByName

> App getAppByName(name)

Get an app based on the name

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
String name = null; // String | 
try {
    App result = apiInstance.getAppByName(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#getAppByName");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | [default to null]

### Return type

[**App**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getApps

> List&lt;App&gt; getApps()

Get all apps

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
try {
    List<App> result = apiInstance.getApps();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#getApps");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;App&gt;**](App.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAvailableAppConfigs

> List&lt;UserAppConfig&gt; getAvailableAppConfigs(appId)

Get available app configurations

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
UUID appId = null; // UUID | 
try {
    List<UserAppConfig> result = apiInstance.getAvailableAppConfigs(appId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#getAvailableAppConfigs");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;UserAppConfig&gt;**](UserAppConfig.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAvailableAppConfigsOld

> List&lt;HistoricalAppConfig&gt; getAvailableAppConfigsOld(appId)

Get historical app configurations for an app

### Example

```java
// Import classes:
//import org.openapitools.client.api.AppApi;

AppApi apiInstance = new AppApi();
UUID appId = null; // UUID | 
try {
    List<HistoricalAppConfig> result = apiInstance.getAvailableAppConfigsOld(appId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AppApi#getAvailableAppConfigsOld");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;HistoricalAppConfig&gt;**](HistoricalAppConfig.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

