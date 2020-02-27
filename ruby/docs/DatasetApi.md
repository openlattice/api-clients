# OpenapiClient::DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_external_database_table_with_columns**](DatasetApi.md#get_external_database_table_with_columns) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**get_external_database_tables**](DatasetApi.md#get_external_database_tables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**get_external_database_tables_with_columns**](DatasetApi.md#get_external_database_tables_with_columns) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.



## get_external_database_table_with_columns

> Hash&lt;String, OrganizationExternalDatabaseTableColumnsPair&gt; get_external_database_table_with_columns(organization_id, table_id)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::DatasetApi.new
organization_id = 'organization_id_example' # String | 
table_id = 'table_id_example' # String | 

begin
  #Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
  result = api_instance.get_external_database_table_with_columns(organization_id, table_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_table_with_columns: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_id** | [**String**](.md)|  | 

### Return type

[**Hash&lt;String, OrganizationExternalDatabaseTableColumnsPair&gt;**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_database_tables

> Array&lt;OrganizationExternalDatabaseTable&gt; get_external_database_tables(organization_id)

Gets all OrganizationExternalDatabaseTable objects for an organization

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::DatasetApi.new
organization_id = 'organization_id_example' # String | 

begin
  #Gets all OrganizationExternalDatabaseTable objects for an organization
  result = api_instance.get_external_database_tables(organization_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_tables: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;OrganizationExternalDatabaseTable&gt;**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_database_tables_with_columns

> Hash&lt;String, Array&lt;OrganizationExternalDatabaseColumn&gt;&gt; get_external_database_tables_with_columns(organization_id)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::DatasetApi.new
organization_id = 'organization_id_example' # String | 

begin
  #Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
  result = api_instance.get_external_database_tables_with_columns(organization_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_tables_with_columns: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 

### Return type

**Hash&lt;String, Array&lt;OrganizationExternalDatabaseColumn&gt;&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

