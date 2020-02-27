# DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getExternalDatabaseTableWithColumns**](DatasetApi.md#getExternalDatabaseTableWithColumns) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**getExternalDatabaseTables**](DatasetApi.md#getExternalDatabaseTables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**getExternalDatabaseTablesWithColumns**](DatasetApi.md#getExternalDatabaseTablesWithColumns) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.



## getExternalDatabaseTableWithColumns

> Map&lt;String, OrganizationExternalDatabaseTableColumnsPair&gt; getExternalDatabaseTableWithColumns(organizationId, tableId)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
UUID tableId = null; // UUID | 
try {
    Map<String, OrganizationExternalDatabaseTableColumnsPair> result = apiInstance.getExternalDatabaseTableWithColumns(organizationId, tableId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getExternalDatabaseTableWithColumns");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, OrganizationExternalDatabaseTableColumnsPair&gt;**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getExternalDatabaseTables

> List&lt;OrganizationExternalDatabaseTable&gt; getExternalDatabaseTables(organizationId)

Gets all OrganizationExternalDatabaseTable objects for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
try {
    List<OrganizationExternalDatabaseTable> result = apiInstance.getExternalDatabaseTables(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getExternalDatabaseTables");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;OrganizationExternalDatabaseTable&gt;**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getExternalDatabaseTablesWithColumns

> Map&lt;String, List&lt;OrganizationExternalDatabaseColumn&gt;&gt; getExternalDatabaseTablesWithColumns(organizationId)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
try {
    Map<String, List<OrganizationExternalDatabaseColumn>> result = apiInstance.getExternalDatabaseTablesWithColumns(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getExternalDatabaseTablesWithColumns");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, List&lt;OrganizationExternalDatabaseColumn&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

