# OpenapiClient::DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_external_database_column**](DatasetApi.md#delete_external_database_column) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Deletes an OrganizationExternalDatabaseColumn object, which represents an organization&#39;s column in an external database. This deletes both the object and the column in the database. It is a hard delete.
[**delete_external_database_columns**](DatasetApi.md#delete_external_database_columns) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-column | Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization&#39;s table in an external database. It is a hard delete
[**delete_external_database_table**](DatasetApi.md#delete_external_database_table) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Deletes an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database. This deletes both the object and the table in the database. It is a hard delete.
[**delete_external_database_tables**](DatasetApi.md#delete_external_database_tables) | **DELETE** /datastore/organization-database/{organizationId}/external-database-table | Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
[**get_authorized_external_db_tables_with_column_metadata**](DatasetApi.md#get_authorized_external_db_tables_with_column_metadata) | **GET** /datastore/organization-database/{organizationId}/{permission}/external-database-table/external-database-column/authorized | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**get_external_database_column**](DatasetApi.md#get_external_database_column) | **GET** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization&#39;s table in an external database.
[**get_external_database_table**](DatasetApi.md#get_external_database_table) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table | Gets an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database.
[**get_external_database_table_data**](DatasetApi.md#get_external_database_table_data) | **GET** /datastore/organization-database/{organizationId}/{tableId}/{rowCount}/data | Gets an OrganizationExternalDatabaseTable object with user specified number of rows of raw data for an organization
[**get_external_database_table_with_column_metadata**](DatasetApi.md#get_external_database_table_with_column_metadata) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**get_external_database_tables**](DatasetApi.md#get_external_database_tables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**get_external_database_tables_with_column_metadata**](DatasetApi.md#get_external_database_tables_with_column_metadata) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
[**update_external_database_column**](DatasetApi.md#update_external_database_column) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Updates an OrganizationExternalDatabaseTableColumn object&#39;s fields that are included within the given metadata.
[**update_external_database_table**](DatasetApi.md#update_external_database_table) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Updates an OrganizationExternalDatabaseTable object&#39;s fields that are included within the given metadata.



## delete_external_database_column

> delete_external_database_column(organization_id, table_name, column_name)

Deletes an OrganizationExternalDatabaseColumn object, which represents an organization's column in an external database. This deletes both the object and the column in the database. It is a hard delete.

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
table_name = 'table_name_example' # String | 
column_name = 'column_name_example' # String | 

begin
  #Deletes an OrganizationExternalDatabaseColumn object, which represents an organization's column in an external database. This deletes both the object and the column in the database. It is a hard delete.
  api_instance.delete_external_database_column(organization_id, table_name, column_name)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->delete_external_database_column: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_name** | **String**|  | 
 **column_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_external_database_columns

> delete_external_database_columns(organization_id, table_name)

Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete

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
table_name = 'table_name_example' # String | 

begin
  #Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete
  api_instance.delete_external_database_columns(organization_id, table_name)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->delete_external_database_columns: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_external_database_table

> delete_external_database_table(organization_id, table_name)

Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.

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
table_name = 'table_name_example' # String | 

begin
  #Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.
  api_instance.delete_external_database_table(organization_id, table_name)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->delete_external_database_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_name** | **String**|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_external_database_tables

> delete_external_database_tables(organization_id, request_body)

Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.

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
request_body = ['request_body_example'] # Array<String> | 

begin
  #Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
  api_instance.delete_external_database_tables(organization_id, request_body)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->delete_external_database_tables: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **request_body** | [**Array&lt;String&gt;**](String.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## get_authorized_external_db_tables_with_column_metadata

> Array&lt;OrganizationExternalDatabaseTableColumnsPair&gt; get_authorized_external_db_tables_with_column_metadata(organization_id, permission)

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
permission = 'permission_example' # String | 

begin
  #Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
  result = api_instance.get_authorized_external_db_tables_with_column_metadata(organization_id, permission)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_authorized_external_db_tables_with_column_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **permission** | **String**|  | 

### Return type

[**Array&lt;OrganizationExternalDatabaseTableColumnsPair&gt;**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_database_column

> OrganizationExternalDatabaseColumn get_external_database_column(organization_id, table_name, column_name)

Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.

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
table_name = 'table_name_example' # String | 
column_name = 'column_name_example' # String | 

begin
  #Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.
  result = api_instance.get_external_database_column(organization_id, table_name, column_name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_column: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_name** | **String**|  | 
 **column_name** | **String**|  | 

### Return type

[**OrganizationExternalDatabaseColumn**](OrganizationExternalDatabaseColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_database_table

> OrganizationExternalDatabaseTable get_external_database_table(organization_id, table_id)

Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.

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
  #Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.
  result = api_instance.get_external_database_table(organization_id, table_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_id** | [**String**](.md)|  | 

### Return type

[**OrganizationExternalDatabaseTable**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_database_table_data

> Hash&lt;String, Object&gt; get_external_database_table_data(organization_id, table_id, row_count)

Gets an OrganizationExternalDatabaseTable object with user specified number of rows of raw data for an organization

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
row_count = 56 # Integer | 

begin
  #Gets an OrganizationExternalDatabaseTable object with user specified number of rows of raw data for an organization
  result = api_instance.get_external_database_table_data(organization_id, table_id, row_count)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_table_data: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_id** | [**String**](.md)|  | 
 **row_count** | **Integer**|  | 

### Return type

**Hash&lt;String, Object&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_database_table_with_column_metadata

> OrganizationExternalDatabaseTableColumnsPair get_external_database_table_with_column_metadata(organization_id, table_id)

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
  result = api_instance.get_external_database_table_with_column_metadata(organization_id, table_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_table_with_column_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_id** | [**String**](.md)|  | 

### Return type

[**OrganizationExternalDatabaseTableColumnsPair**](OrganizationExternalDatabaseTableColumnsPair.md)

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


## get_external_database_tables_with_column_metadata

> Array&lt;OrganizationExternalDatabaseTableColumnsPair&gt; get_external_database_tables_with_column_metadata(organization_id)

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
  result = api_instance.get_external_database_tables_with_column_metadata(organization_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->get_external_database_tables_with_column_metadata: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 

### Return type

[**Array&lt;OrganizationExternalDatabaseTableColumnsPair&gt;**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_external_database_column

> update_external_database_column(organization_id, table_name, column_name, metadata_update)

Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.

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
table_name = 'table_name_example' # String | 
column_name = 'column_name_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.
  api_instance.update_external_database_column(organization_id, table_name, column_name, metadata_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->update_external_database_column: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_name** | **String**|  | 
 **column_name** | **String**|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_external_database_table

> update_external_database_table(organization_id, table_name, metadata_update)

Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.

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
table_name = 'table_name_example' # String | 
metadata_update = OpenapiClient::MetadataUpdate.new # MetadataUpdate | 

begin
  #Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.
  api_instance.update_external_database_table(organization_id, table_name, metadata_update)
rescue OpenapiClient::ApiError => e
  puts "Exception when calling DatasetApi->update_external_database_table: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**String**](.md)|  | 
 **table_name** | **String**|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

nil (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

