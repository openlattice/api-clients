# DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_external_database_table_with_columns**](DatasetApi.md#get_external_database_table_with_columns) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**get_external_database_tables**](DatasetApi.md#get_external_database_tables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**get_external_database_tables_with_columns**](DatasetApi.md#get_external_database_tables_with_columns) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.


# **get_external_database_table_with_columns**
> map(OrganizationExternalDatabaseTableColumnsPair) get_external_database_table_with_columns(organization.id, table.id)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.table.id <- 'table.id_example' # character | 

#Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_table_with_columns(var.organization.id, var.table.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **table.id** | [**character**](.md)|  | 

### Return type

[**map(OrganizationExternalDatabaseTableColumnsPair)**](OrganizationExternalDatabaseTableColumnsPair.md)

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
> array[OrganizationExternalDatabaseTable] get_external_database_tables(organization.id)

Gets all OrganizationExternalDatabaseTable objects for an organization

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Gets all OrganizationExternalDatabaseTable objects for an organization
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_tables(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

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

# **get_external_database_tables_with_columns**
> map(array[OrganizationExternalDatabaseColumn]) get_external_database_tables_with_columns(organization.id)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
api.instance <- DatasetApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_external_database_tables_with_columns(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

### Return type

[**map(array[OrganizationExternalDatabaseColumn])**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

