# \DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_external_database_table_with_columns**](DatasetApi.md#get_external_database_table_with_columns) | **Get** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**get_external_database_tables**](DatasetApi.md#get_external_database_tables) | **Get** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**get_external_database_tables_with_columns**](DatasetApi.md#get_external_database_tables_with_columns) | **Get** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.



## get_external_database_table_with_columns

> ::std::collections::HashMap<String, crate::models::OrganizationExternalDatabaseTableColumnsPair> get_external_database_table_with_columns(organization_id, table_id)
Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**table_id** | [**String**](.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, crate::models::OrganizationExternalDatabaseTableColumnsPair>**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_external_database_tables

> Vec<crate::models::OrganizationExternalDatabaseTable> get_external_database_tables(organization_id)
Gets all OrganizationExternalDatabaseTable objects for an organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<crate::models::OrganizationExternalDatabaseTable>**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_external_database_tables_with_columns

> ::std::collections::HashMap<String, Vec<crate::models::OrganizationExternalDatabaseColumn>> get_external_database_tables_with_columns(organization_id)
Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, Vec<crate::models::OrganizationExternalDatabaseColumn>>**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

