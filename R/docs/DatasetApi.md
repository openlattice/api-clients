# DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_external_database_column**](DatasetApi.md#delete_external_database_column) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Deletes an OrganizationExternalDatabaseColumn object, which represents an organization&#39;s column in an external database. This deletes both the object and the column in the database. It is a hard delete.
[**delete_external_database_columns**](DatasetApi.md#delete_external_database_columns) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-column | Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization&#39;s table in an external database. It is a hard delete
[**delete_external_database_table**](DatasetApi.md#delete_external_database_table) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Deletes an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database. This deletes both the object and the table in the database. It is a hard delete.
[**delete_external_database_tables**](DatasetApi.md#delete_external_database_tables) | **DELETE** /datastore/organization-database/{organizationId}/external-database-table | Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
[**get_authorized_external_db_tables_with_column_metadata**](DatasetApi.md#get_authorized_external_db_tables_with_column_metadata) | **GET** /datastore/organization-database/{organizationId}/{permission}/external-database-table/external-database-column/authorized | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**get_external_database_column**](DatasetApi.md#get_external_database_column) | **GET** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization&#39;s table in an external database.
[**get_external_database_table**](DatasetApi.md#get_external_database_table) | **GET** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Gets an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database.
[**get_external_database_table_with_column_metadata**](DatasetApi.md#get_external_database_table_with_column_metadata) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**get_external_database_tables**](DatasetApi.md#get_external_database_tables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**get_external_database_tables_with_column_metadata**](DatasetApi.md#get_external_database_tables_with_column_metadata) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**update_external_database_column**](DatasetApi.md#update_external_database_column) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Updates an OrganizationExternalDatabaseTableColumn object&#39;s fields that are included within the given metadata.
[**update_external_database_table**](DatasetApi.md#update_external_database_table) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Updates an OrganizationExternalDatabaseTable object&#39;s fields that are included within the given metadata.


# **delete_external_database_column**
> delete_external_database_column(organization_id, table_name, column_name)

Deletes an OrganizationExternalDatabaseColumn object, which represents an organization's column in an external database. This deletes both the object and the column in the database. It is a hard delete.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_name <- 'table_name_example' # character | 
var.column_name <- 'column_name_example' # character | 

#Deletes an OrganizationExternalDatabaseColumn object, which represents an organization's column in an external database. This deletes both the object and the column in the database. It is a hard delete.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_external_database_column(var.organization_id, var.table_name, var.column_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_name** | **character**|  | 
 **column_name** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_external_database_columns**
> delete_external_database_columns(organization_id, table_name)

Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_name <- 'table_name_example' # character | 

#Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_external_database_columns(var.organization_id, var.table_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_name** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_external_database_table**
> delete_external_database_table(organization_id, table_name)

Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_name <- 'table_name_example' # character | 

#Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_external_database_table(var.organization_id, var.table_name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_name** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_external_database_tables**
> delete_external_database_tables(organization_id, request_body)

Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.request_body <- list("property_example") # array[character] | 

#Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$delete_external_database_tables(var.organization_id, var.request_body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **request_body** | list( **character** )|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_authorized_external_db_tables_with_column_metadata**
> array[OrganizationExternalDatabaseTableColumnsPair] get_authorized_external_db_tables_with_column_metadata(organization_id, permission)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.permission <- 'permission_example' # character | 

#Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_authorized_external_db_tables_with_column_metadata(var.organization_id, var.permission)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **permission** | Enum [DISCOVER, MATERIALIZE, LINK, READ, WRITE, OWNER] |  | 

### Return type

[**array[OrganizationExternalDatabaseTableColumnsPair]**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_external_database_column**
> OrganizationExternalDatabaseColumn get_external_database_column(organization_id, table_name, column_name)

Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_name <- 'table_name_example' # character | 
var.column_name <- 'column_name_example' # character | 

#Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_column(var.organization_id, var.table_name, var.column_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_name** | **character**|  | 
 **column_name** | **character**|  | 

### Return type

[**OrganizationExternalDatabaseColumn**](OrganizationExternalDatabaseColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_external_database_table**
> OrganizationExternalDatabaseTable get_external_database_table(organization_id, table_name)

Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_name <- 'table_name_example' # character | 

#Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_table(var.organization_id, var.table_name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_name** | **character**|  | 

### Return type

[**OrganizationExternalDatabaseTable**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_external_database_table_with_column_metadata**
> OrganizationExternalDatabaseTableColumnsPair get_external_database_table_with_column_metadata(organization_id, table_id)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_id <- 'table_id_example' # character | 

#Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_table_with_column_metadata(var.organization_id, var.table_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_id** | [**character**](.md)|  | 

### Return type

[**OrganizationExternalDatabaseTableColumnsPair**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_external_database_tables**
> array[OrganizationExternalDatabaseTable] get_external_database_tables(organization_id)

Gets all OrganizationExternalDatabaseTable objects for an organization

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 

#Gets all OrganizationExternalDatabaseTable objects for an organization
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_tables(var.organization_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 

### Return type

[**array[OrganizationExternalDatabaseTable]**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_external_database_tables_with_column_metadata**
> array[OrganizationExternalDatabaseTableColumnsPair] get_external_database_tables_with_column_metadata(organization_id)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 

#Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_tables_with_column_metadata(var.organization_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 

### Return type

[**array[OrganizationExternalDatabaseTableColumnsPair]**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_external_database_column**
> update_external_database_column(organization_id, table_name, column_name, metadata_update)

Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_name <- 'table_name_example' # character | 
var.column_name <- 'column_name_example' # character | 
var.metadata_update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_external_database_column(var.organization_id, var.table_name, var.column_name, var.metadata_update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_name** | **character**|  | 
 **column_name** | **character**|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_external_database_table**
> update_external_database_table(organization_id, table_name, metadata_update)

Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 
var.table_name <- 'table_name_example' # character | 
var.metadata_update <- MetadataUpdate$new("title_example", "description_example", "name_example", list("contacts_example"), FullQualifiedName$new("name_example", "namespace_example"), "pii_example", "defaultShow_example", "url_example", TODO, "indexType_example", "organizationId_example", list(123), list("enumValues_example")) # MetadataUpdate | 

#Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_external_database_table(var.organization_id, var.table_name, var.metadata_update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 
 **table_name** | **character**|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

