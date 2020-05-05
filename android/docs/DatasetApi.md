# DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteExternalDatabaseColumn**](DatasetApi.md#deleteExternalDatabaseColumn) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Deletes an OrganizationExternalDatabaseColumn object, which represents an organization&#39;s column in an external database. This deletes both the object and the column in the database. It is a hard delete.
[**deleteExternalDatabaseColumns**](DatasetApi.md#deleteExternalDatabaseColumns) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-column | Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization&#39;s table in an external database. It is a hard delete
[**deleteExternalDatabaseTable**](DatasetApi.md#deleteExternalDatabaseTable) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Deletes an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database. This deletes both the object and the table in the database. It is a hard delete.
[**deleteExternalDatabaseTables**](DatasetApi.md#deleteExternalDatabaseTables) | **DELETE** /datastore/organization-database/{organizationId}/external-database-table | Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
[**getAuthorizedExternalDbTablesWithColumnMetadata**](DatasetApi.md#getAuthorizedExternalDbTablesWithColumnMetadata) | **GET** /datastore/organization-database/{organizationId}/{permission}/external-database-table/external-database-column/authorized | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**getExternalDatabaseColumn**](DatasetApi.md#getExternalDatabaseColumn) | **GET** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization&#39;s table in an external database.
[**getExternalDatabaseTable**](DatasetApi.md#getExternalDatabaseTable) | **GET** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Gets an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database.
[**getExternalDatabaseTableWithColumnMetadata**](DatasetApi.md#getExternalDatabaseTableWithColumnMetadata) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**getExternalDatabaseTables**](DatasetApi.md#getExternalDatabaseTables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**getExternalDatabaseTablesWithColumnMetadata**](DatasetApi.md#getExternalDatabaseTablesWithColumnMetadata) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**updateExternalDatabaseColumn**](DatasetApi.md#updateExternalDatabaseColumn) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Updates an OrganizationExternalDatabaseTableColumn object&#39;s fields that are included within the given metadata.
[**updateExternalDatabaseTable**](DatasetApi.md#updateExternalDatabaseTable) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Updates an OrganizationExternalDatabaseTable object&#39;s fields that are included within the given metadata.



## deleteExternalDatabaseColumn

> deleteExternalDatabaseColumn(organizationId, tableName, columnName)

Deletes an OrganizationExternalDatabaseColumn object, which represents an organization&#39;s column in an external database. This deletes both the object and the column in the database. It is a hard delete.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String tableName = null; // String | 
String columnName = null; // String | 
try {
    apiInstance.deleteExternalDatabaseColumn(organizationId, tableName, columnName);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#deleteExternalDatabaseColumn");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableName** | **String**|  | [default to null]
 **columnName** | **String**|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteExternalDatabaseColumns

> deleteExternalDatabaseColumns(organizationId, tableName)

Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization&#39;s table in an external database. It is a hard delete

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String tableName = null; // String | 
try {
    apiInstance.deleteExternalDatabaseColumns(organizationId, tableName);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#deleteExternalDatabaseColumns");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableName** | **String**|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteExternalDatabaseTable

> deleteExternalDatabaseTable(organizationId, tableName)

Deletes an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database. This deletes both the object and the table in the database. It is a hard delete.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String tableName = null; // String | 
try {
    apiInstance.deleteExternalDatabaseTable(organizationId, tableName);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#deleteExternalDatabaseTable");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableName** | **String**|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteExternalDatabaseTables

> deleteExternalDatabaseTables(organizationId, requestBody)

Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    apiInstance.deleteExternalDatabaseTables(organizationId, requestBody);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#deleteExternalDatabaseTables");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**List&lt;String&gt;**](String.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## getAuthorizedExternalDbTablesWithColumnMetadata

> List&lt;OrganizationExternalDatabaseTableColumnsPair&gt; getAuthorizedExternalDbTablesWithColumnMetadata(organizationId, permission)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String permission = null; // String | 
try {
    List<OrganizationExternalDatabaseTableColumnsPair> result = apiInstance.getAuthorizedExternalDbTablesWithColumnMetadata(organizationId, permission);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getAuthorizedExternalDbTablesWithColumnMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **permission** | **String**|  | [default to null] [enum: DISCOVER, MATERIALIZE, LINK, READ, WRITE, OWNER]

### Return type

[**List&lt;OrganizationExternalDatabaseTableColumnsPair&gt;**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getExternalDatabaseColumn

> OrganizationExternalDatabaseColumn getExternalDatabaseColumn(organizationId, tableName, columnName)

Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization&#39;s table in an external database.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String tableName = null; // String | 
String columnName = null; // String | 
try {
    OrganizationExternalDatabaseColumn result = apiInstance.getExternalDatabaseColumn(organizationId, tableName, columnName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getExternalDatabaseColumn");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableName** | **String**|  | [default to null]
 **columnName** | **String**|  | [default to null]

### Return type

[**OrganizationExternalDatabaseColumn**](OrganizationExternalDatabaseColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getExternalDatabaseTable

> OrganizationExternalDatabaseTable getExternalDatabaseTable(organizationId, tableName)

Gets an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String tableName = null; // String | 
try {
    OrganizationExternalDatabaseTable result = apiInstance.getExternalDatabaseTable(organizationId, tableName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getExternalDatabaseTable");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableName** | **String**|  | [default to null]

### Return type

[**OrganizationExternalDatabaseTable**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getExternalDatabaseTableWithColumnMetadata

> OrganizationExternalDatabaseTableColumnsPair getExternalDatabaseTableWithColumnMetadata(organizationId, tableId)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
UUID tableId = null; // UUID | 
try {
    OrganizationExternalDatabaseTableColumnsPair result = apiInstance.getExternalDatabaseTableWithColumnMetadata(organizationId, tableId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getExternalDatabaseTableWithColumnMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableId** | [**UUID**](.md)|  | [default to null]

### Return type

[**OrganizationExternalDatabaseTableColumnsPair**](OrganizationExternalDatabaseTableColumnsPair.md)

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


## getExternalDatabaseTablesWithColumnMetadata

> List&lt;OrganizationExternalDatabaseTableColumnsPair&gt; getExternalDatabaseTablesWithColumnMetadata(organizationId)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
try {
    List<OrganizationExternalDatabaseTableColumnsPair> result = apiInstance.getExternalDatabaseTablesWithColumnMetadata(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#getExternalDatabaseTablesWithColumnMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;OrganizationExternalDatabaseTableColumnsPair&gt;**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateExternalDatabaseColumn

> updateExternalDatabaseColumn(organizationId, tableName, columnName, metadataUpdate)

Updates an OrganizationExternalDatabaseTableColumn object&#39;s fields that are included within the given metadata.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String tableName = null; // String | 
String columnName = null; // String | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    apiInstance.updateExternalDatabaseColumn(organizationId, tableName, columnName, metadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#updateExternalDatabaseColumn");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableName** | **String**|  | [default to null]
 **columnName** | **String**|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateExternalDatabaseTable

> updateExternalDatabaseTable(organizationId, tableName, metadataUpdate)

Updates an OrganizationExternalDatabaseTable object&#39;s fields that are included within the given metadata.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DatasetApi;

DatasetApi apiInstance = new DatasetApi();
UUID organizationId = null; // UUID | 
String tableName = null; // String | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    apiInstance.updateExternalDatabaseTable(organizationId, tableName, metadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling DatasetApi#updateExternalDatabaseTable");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **tableName** | **String**|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

