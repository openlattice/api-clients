# openlattice.MetadataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_data_set_column_metadata**](MetadataApi.md#get_data_set_column_metadata) | **GET** /datastore/metadata/columns/{dataId}/{columnId} | Gets the dataset column metadata objects using data ID and column ID
[**get_data_set_columns_metadata**](MetadataApi.md#get_data_set_columns_metadata) | **POST** /datastore/metadata/columns | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**get_data_set_metadata**](MetadataApi.md#get_data_set_metadata) | **GET** /datastore/metadata/datasets/{dataId} | Gets dataset metadata object with given data set ID
[**get_data_sets_metadata**](MetadataApi.md#get_data_sets_metadata) | **POST** /datastore/metadata/datasets | Gets the dataset metadata objects given data set ids the caller has READ permissions on
[**get_organization_data_sets_metadata**](MetadataApi.md#get_organization_data_sets_metadata) | **GET** /datastore/metadata/datasets/organizations/{organizationId} | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**update_data_set_column_metadata**](MetadataApi.md#update_data_set_column_metadata) | **PATCH** /datastore/metadata/update/{dataId}/{columnId} | Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
[**update_data_set_metadata**](MetadataApi.md#update_data_set_metadata) | **PATCH** /datastore/metadata/update/{dataId} | Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.


# **get_data_set_column_metadata**
> DataSetColumnMetadata get_data_set_column_metadata(data_id, column_id)

Gets the dataset column metadata objects using data ID and column ID

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 
column_id = 'column_id_example' # str | 

    try:
        # Gets the dataset column metadata objects using data ID and column ID
        api_response = api_instance.get_data_set_column_metadata(data_id, column_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_set_column_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 
column_id = 'column_id_example' # str | 

    try:
        # Gets the dataset column metadata objects using data ID and column ID
        api_response = api_instance.get_data_set_column_metadata(data_id, column_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_set_column_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**str**](.md)|  | 
 **column_id** | [**str**](.md)|  | 

### Return type

[**DataSetColumnMetadata**](DataSetColumnMetadata.md)

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

# **get_data_set_columns_metadata**
> dict(str, list[DataSetColumnMetadata]) get_data_set_columns_metadata(request_body=request_body)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    request_body = ['request_body_example'] # list[str] |  (optional)

    try:
        # Gets all data set column metadata objects that caller has READ on that belong to given data set ids
        api_response = api_instance.get_data_set_columns_metadata(request_body=request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_set_columns_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    request_body = ['request_body_example'] # list[str] |  (optional)

    try:
        # Gets all data set column metadata objects that caller has READ on that belong to given data set ids
        api_response = api_instance.get_data_set_columns_metadata(request_body=request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_set_columns_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**list[str]**](str.md)|  | [optional] 

### Return type

**dict(str, list[DataSetColumnMetadata])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_data_set_metadata**
> DataSetMetadata get_data_set_metadata(data_id)

Gets dataset metadata object with given data set ID

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 

    try:
        # Gets dataset metadata object with given data set ID
        api_response = api_instance.get_data_set_metadata(data_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_set_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 

    try:
        # Gets dataset metadata object with given data set ID
        api_response = api_instance.get_data_set_metadata(data_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_set_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**str**](.md)|  | 

### Return type

[**DataSetMetadata**](DataSetMetadata.md)

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

# **get_data_sets_metadata**
> dict(str, DataSetMetadata) get_data_sets_metadata(request_body=request_body)

Gets the dataset metadata objects given data set ids the caller has READ permissions on

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    request_body = ['request_body_example'] # list[str] |  (optional)

    try:
        # Gets the dataset metadata objects given data set ids the caller has READ permissions on
        api_response = api_instance.get_data_sets_metadata(request_body=request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_sets_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    request_body = ['request_body_example'] # list[str] |  (optional)

    try:
        # Gets the dataset metadata objects given data set ids the caller has READ permissions on
        api_response = api_instance.get_data_sets_metadata(request_body=request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_data_sets_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**list[str]**](str.md)|  | [optional] 

### Return type

[**dict(str, DataSetMetadata)**](DataSetMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organization_data_sets_metadata**
> dict(str, DataSetMetadata) get_organization_data_sets_metadata(organization_id)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    organization_id = 'organization_id_example' # str | 

    try:
        # Gets all data set column metadata objects that caller has READ on that belong to given data set ids
        api_response = api_instance.get_organization_data_sets_metadata(organization_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_organization_data_sets_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    organization_id = 'organization_id_example' # str | 

    try:
        # Gets all data set column metadata objects that caller has READ on that belong to given data set ids
        api_response = api_instance.get_organization_data_sets_metadata(organization_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling MetadataApi->get_organization_data_sets_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

[**dict(str, DataSetMetadata)**](DataSetMetadata.md)

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

# **update_data_set_column_metadata**
> update_data_set_column_metadata(data_id, column_id, data_metadata=data_metadata)

Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 
column_id = 'column_id_example' # str | 
data_metadata = openlattice.DataMetadata() # DataMetadata |  (optional)

    try:
        # Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
        api_instance.update_data_set_column_metadata(data_id, column_id, data_metadata=data_metadata)
    except ApiException as e:
        print("Exception when calling MetadataApi->update_data_set_column_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 
column_id = 'column_id_example' # str | 
data_metadata = openlattice.DataMetadata() # DataMetadata |  (optional)

    try:
        # Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
        api_instance.update_data_set_column_metadata(data_id, column_id, data_metadata=data_metadata)
    except ApiException as e:
        print("Exception when calling MetadataApi->update_data_set_column_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**str**](.md)|  | 
 **column_id** | [**str**](.md)|  | 
 **data_metadata** | [**DataMetadata**](DataMetadata.md)|  | [optional] 

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

# **update_data_set_metadata**
> update_data_set_metadata(data_id, data_metadata=data_metadata)

Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 
data_metadata = openlattice.DataMetadata() # DataMetadata |  (optional)

    try:
        # Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
        api_instance.update_data_set_metadata(data_id, data_metadata=data_metadata)
    except ApiException as e:
        print("Exception when calling MetadataApi->update_data_set_metadata: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
# Defining the host is optional and defaults to https://api.openlattice.com
# See configuration.py for a list of all supported configuration parameters.
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): http_auth
configuration = openlattice.Configuration(
    access_token = 'YOUR_BEARER_TOKEN'
)

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration(
    host = "https://api.openlattice.com",
    api_key = {
        'openlattice_auth': 'YOUR_API_KEY'
    }
)
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['openlattice_auth'] = 'Bearer'

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.MetadataApi(api_client)
    data_id = 'data_id_example' # str | 
data_metadata = openlattice.DataMetadata() # DataMetadata |  (optional)

    try:
        # Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
        api_instance.update_data_set_metadata(data_id, data_metadata=data_metadata)
    except ApiException as e:
        print("Exception when calling MetadataApi->update_data_set_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**str**](.md)|  | 
 **data_metadata** | [**DataMetadata**](DataMetadata.md)|  | [optional] 

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

