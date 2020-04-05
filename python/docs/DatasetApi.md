# openlattice.DatasetApi

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

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
column_name = 'column_name_example' # str | 

    try:
        # Deletes an OrganizationExternalDatabaseColumn object, which represents an organization's column in an external database. This deletes both the object and the column in the database. It is a hard delete.
        api_instance.delete_external_database_column(organization_id, table_name, column_name)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_column: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
column_name = 'column_name_example' # str | 

    try:
        # Deletes an OrganizationExternalDatabaseColumn object, which represents an organization's column in an external database. This deletes both the object and the column in the database. It is a hard delete.
        api_instance.delete_external_database_column(organization_id, table_name, column_name)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_column: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_name** | **str**|  | 
 **column_name** | **str**|  | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_external_database_columns**
> delete_external_database_columns(organization_id, table_name)

Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 

    try:
        # Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete
        api_instance.delete_external_database_columns(organization_id, table_name)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_columns: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 

    try:
        # Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization's table in an external database. It is a hard delete
        api_instance.delete_external_database_columns(organization_id, table_name)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_columns: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_name** | **str**|  | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_external_database_table**
> delete_external_database_table(organization_id, table_name)

Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 

    try:
        # Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.
        api_instance.delete_external_database_table(organization_id, table_name)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_table: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 

    try:
        # Deletes an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database. This deletes both the object and the table in the database. It is a hard delete.
        api_instance.delete_external_database_table(organization_id, table_name)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_table: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_name** | **str**|  | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_external_database_tables**
> delete_external_database_tables(organization_id, request_body)

Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
request_body = ['request_body_example'] # list[str] | 

    try:
        # Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
        api_instance.delete_external_database_tables(organization_id, request_body)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_tables: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
request_body = ['request_body_example'] # list[str] | 

    try:
        # Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
        api_instance.delete_external_database_tables(organization_id, request_body)
    except ApiException as e:
        print("Exception when calling DatasetApi->delete_external_database_tables: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **request_body** | [**list[str]**](str.md)|  | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authorized_external_db_tables_with_column_metadata**
> list[OrganizationExternalDatabaseTableColumnsPair] get_authorized_external_db_tables_with_column_metadata(organization_id, permission)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
permission = 'permission_example' # str | 

    try:
        # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
        api_response = api_instance.get_authorized_external_db_tables_with_column_metadata(organization_id, permission)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_authorized_external_db_tables_with_column_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
permission = 'permission_example' # str | 

    try:
        # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
        api_response = api_instance.get_authorized_external_db_tables_with_column_metadata(organization_id, permission)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_authorized_external_db_tables_with_column_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **permission** | **str**|  | 

### Return type

[**list[OrganizationExternalDatabaseTableColumnsPair]**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_external_database_column**
> OrganizationExternalDatabaseColumn get_external_database_column(organization_id, table_name, column_name)

Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
column_name = 'column_name_example' # str | 

    try:
        # Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.
        api_response = api_instance.get_external_database_column(organization_id, table_name, column_name)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_column: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
column_name = 'column_name_example' # str | 

    try:
        # Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization's table in an external database.
        api_response = api_instance.get_external_database_column(organization_id, table_name, column_name)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_column: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_name** | **str**|  | 
 **column_name** | **str**|  | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_external_database_table**
> OrganizationExternalDatabaseTable get_external_database_table(organization_id, table_name)

Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 

    try:
        # Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.
        api_response = api_instance.get_external_database_table(organization_id, table_name)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_table: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 

    try:
        # Gets an OrganizationExternalDatabaseTable object, which represents an organization's table in an external database.
        api_response = api_instance.get_external_database_table(organization_id, table_name)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_table: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_name** | **str**|  | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_external_database_table_with_column_metadata**
> OrganizationExternalDatabaseTableColumnsPair get_external_database_table_with_column_metadata(organization_id, table_id)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_id = 'table_id_example' # str | 

    try:
        # Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
        api_response = api_instance.get_external_database_table_with_column_metadata(organization_id, table_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_table_with_column_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_id = 'table_id_example' # str | 

    try:
        # Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
        api_response = api_instance.get_external_database_table_with_column_metadata(organization_id, table_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_table_with_column_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_id** | [**str**](.md)|  | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_external_database_tables**
> list[OrganizationExternalDatabaseTable] get_external_database_tables(organization_id)

Gets all OrganizationExternalDatabaseTable objects for an organization

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 

    try:
        # Gets all OrganizationExternalDatabaseTable objects for an organization
        api_response = api_instance.get_external_database_tables(organization_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_tables: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 

    try:
        # Gets all OrganizationExternalDatabaseTable objects for an organization
        api_response = api_instance.get_external_database_tables(organization_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_tables: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

[**list[OrganizationExternalDatabaseTable]**](OrganizationExternalDatabaseTable.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_external_database_tables_with_column_metadata**
> list[OrganizationExternalDatabaseTableColumnsPair] get_external_database_tables_with_column_metadata(organization_id)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 

    try:
        # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
        api_response = api_instance.get_external_database_tables_with_column_metadata(organization_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_tables_with_column_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 

    try:
        # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
        api_response = api_instance.get_external_database_tables_with_column_metadata(organization_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DatasetApi->get_external_database_tables_with_column_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

[**list[OrganizationExternalDatabaseTableColumnsPair]**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_external_database_column**
> update_external_database_column(organization_id, table_name, column_name, metadata_update)

Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
column_name = 'column_name_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.
        api_instance.update_external_database_column(organization_id, table_name, column_name, metadata_update)
    except ApiException as e:
        print("Exception when calling DatasetApi->update_external_database_column: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
column_name = 'column_name_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates an OrganizationExternalDatabaseTableColumn object's fields that are included within the given metadata.
        api_instance.update_external_database_column(organization_id, table_name, column_name, metadata_update)
    except ApiException as e:
        print("Exception when calling DatasetApi->update_external_database_column: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_name** | **str**|  | 
 **column_name** | **str**|  | 
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_external_database_table**
> update_external_database_table(organization_id, table_name, metadata_update)

Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.
        api_instance.update_external_database_table(organization_id, table_name, metadata_update)
    except ApiException as e:
        print("Exception when calling DatasetApi->update_external_database_table: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.DatasetApi(api_client)
    organization_id = 'organization_id_example' # str | 
table_name = 'table_name_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates an OrganizationExternalDatabaseTable object's fields that are included within the given metadata.
        api_instance.update_external_database_table(organization_id, table_name, metadata_update)
    except ApiException as e:
        print("Exception when calling DatasetApi->update_external_database_table: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_name** | **str**|  | 
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

