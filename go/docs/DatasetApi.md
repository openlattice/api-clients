# \DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeleteExternalDatabaseColumn**](DatasetApi.md#DeleteExternalDatabaseColumn) | **Delete** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Deletes an OrganizationExternalDatabaseColumn object, which represents an organization&#39;s column in an external database. This deletes both the object and the column in the database. It is a hard delete.
[**DeleteExternalDatabaseColumns**](DatasetApi.md#DeleteExternalDatabaseColumns) | **Delete** /datastore/organization-database/{organizationId}/{tableName}/external-database-column | Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization&#39;s table in an external database. It is a hard delete
[**DeleteExternalDatabaseTable**](DatasetApi.md#DeleteExternalDatabaseTable) | **Delete** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Deletes an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database. This deletes both the object and the table in the database. It is a hard delete.
[**DeleteExternalDatabaseTables**](DatasetApi.md#DeleteExternalDatabaseTables) | **Delete** /datastore/organization-database/{organizationId}/external-database-table | Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
[**GetAuthorizedExternalDbTablesWithColumnMetadata**](DatasetApi.md#GetAuthorizedExternalDbTablesWithColumnMetadata) | **Get** /datastore/organization-database/{organizationId}/{permission}/external-database-table/external-database-column/authorized | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**GetExternalDatabaseColumn**](DatasetApi.md#GetExternalDatabaseColumn) | **Get** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization&#39;s table in an external database.
[**GetExternalDatabaseTable**](DatasetApi.md#GetExternalDatabaseTable) | **Get** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Gets an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database.
[**GetExternalDatabaseTableWithColumnMetadata**](DatasetApi.md#GetExternalDatabaseTableWithColumnMetadata) | **Get** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**GetExternalDatabaseTables**](DatasetApi.md#GetExternalDatabaseTables) | **Get** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**GetExternalDatabaseTablesWithColumnMetadata**](DatasetApi.md#GetExternalDatabaseTablesWithColumnMetadata) | **Get** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**UpdateExternalDatabaseColumn**](DatasetApi.md#UpdateExternalDatabaseColumn) | **Patch** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Updates an OrganizationExternalDatabaseTableColumn object&#39;s fields that are included within the given metadata.
[**UpdateExternalDatabaseTable**](DatasetApi.md#UpdateExternalDatabaseTable) | **Patch** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Updates an OrganizationExternalDatabaseTable object&#39;s fields that are included within the given metadata.



## DeleteExternalDatabaseColumn

> DeleteExternalDatabaseColumn(ctx, organizationId, tableName, columnName)

Deletes an OrganizationExternalDatabaseColumn object, which represents an organization's column in an external database. This deletes both the object and the column in the database. It is a hard delete.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableName** | **string**|  | 
**columnName** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteExternalDatabaseColumns

> DeleteExternalDatabaseColumns(ctx, organizationId, tableName)

Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableName** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteExternalDatabaseTable

> DeleteExternalDatabaseTable(ctx, organizationId, tableName)

Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableName** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteExternalDatabaseTables

> DeleteExternalDatabaseTables(ctx, organizationId, requestBody)

Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**requestBody** | [**[]string**](string.md)|  | 

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


## GetAuthorizedExternalDbTablesWithColumnMetadata

> []OrganizationExternalDatabaseTableColumnsPair GetAuthorizedExternalDbTablesWithColumnMetadata(ctx, organizationId, permission)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**permission** | **string**|  | 

### Return type

[**[]OrganizationExternalDatabaseTableColumnsPair**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetExternalDatabaseColumn

> OrganizationExternalDatabaseColumn GetExternalDatabaseColumn(ctx, organizationId, tableName, columnName)

Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableName** | **string**|  | 
**columnName** | **string**|  | 

### Return type

[**OrganizationExternalDatabaseColumn**](OrganizationExternalDatabaseColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetExternalDatabaseTable

> OrganizationExternalDatabaseTable GetExternalDatabaseTable(ctx, organizationId, tableName)

Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableName** | **string**|  | 

### Return type

[**OrganizationExternalDatabaseTable**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetExternalDatabaseTableWithColumnMetadata

> OrganizationExternalDatabaseTableColumnsPair GetExternalDatabaseTableWithColumnMetadata(ctx, organizationId, tableId)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableId** | [**string**](.md)|  | 

### Return type

[**OrganizationExternalDatabaseTableColumnsPair**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetExternalDatabaseTables

> []OrganizationExternalDatabaseTable GetExternalDatabaseTables(ctx, organizationId)

Gets all OrganizationExternalDatabaseTable objects for an organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**[]OrganizationExternalDatabaseTable**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetExternalDatabaseTablesWithColumnMetadata

> []OrganizationExternalDatabaseTableColumnsPair GetExternalDatabaseTablesWithColumnMetadata(ctx, organizationId)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**[]OrganizationExternalDatabaseTableColumnsPair**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateExternalDatabaseColumn

> UpdateExternalDatabaseColumn(ctx, organizationId, tableName, columnName, metadataUpdate)

Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableName** | **string**|  | 
**columnName** | **string**|  | 
**metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

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


## UpdateExternalDatabaseTable

> UpdateExternalDatabaseTable(ctx, organizationId, tableName, metadataUpdate)

Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**tableName** | **string**|  | 
**metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

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

