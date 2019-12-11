# openlattice.DatasetApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_external_database_table_with_columns**](DatasetApi.md#get_external_database_table_with_columns) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
[**get_external_database_tables**](DatasetApi.md#get_external_database_tables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
[**get_external_database_tables_with_columns**](DatasetApi.md#get_external_database_tables_with_columns) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.


# **get_external_database_table_with_columns**
> dict(str, OrganizationExternalDatabaseTableColumnsPair) get_external_database_table_with_columns(organization_id, table_id)

Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.DatasetApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
table_id = 'table_id_example' # str | 

try:
    # Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
    api_response = api_instance.get_external_database_table_with_columns(organization_id, table_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DatasetApi->get_external_database_table_with_columns: %s\n" % e)
```


* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DatasetApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
table_id = 'table_id_example' # str | 

try:
    # Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
    api_response = api_instance.get_external_database_table_with_columns(organization_id, table_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DatasetApi->get_external_database_table_with_columns: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **table_id** | [**str**](.md)|  | 

### Return type

[**dict(str, OrganizationExternalDatabaseTableColumnsPair)**](OrganizationExternalDatabaseTableColumnsPair.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_external_database_tables**
> list[OrganizationExternalDatabaseTable] get_external_database_tables(organization_id)

Gets all OrganizationExternalDatabaseTable objects for an organization

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.DatasetApi(openlattice.ApiClient(configuration))
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
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DatasetApi(openlattice.ApiClient(configuration))
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_external_database_tables_with_columns**
> dict(str, list[OrganizationExternalDatabaseColumn]) get_external_database_tables_with_columns(organization_id)

Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.DatasetApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
    api_response = api_instance.get_external_database_tables_with_columns(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DatasetApi->get_external_database_tables_with_columns: %s\n" % e)
```


* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DatasetApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
    api_response = api_instance.get_external_database_tables_with_columns(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DatasetApi->get_external_database_tables_with_columns: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

**dict(str, list[OrganizationExternalDatabaseColumn])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

