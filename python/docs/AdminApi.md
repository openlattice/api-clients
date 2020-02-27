# openlattice.AdminApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clear_indexing_queue**](AdminApi.md#clear_indexing_queue) | **DELETE** /indexer/index/reindex | Clears all the data currently being indexed in the queue.
[**get_indexing_state**](AdminApi.md#get_indexing_state) | **GET** /indexer/index/reindex | Retrieve the current state of reindexing jobs
[**reindex**](AdminApi.md#reindex) | **POST** /indexer/index/reindex | Merge job descriptions for performing a partial or full reindex of provided entity sets.
[**update_reindex**](AdminApi.md#update_reindex) | **PUT** /indexer/index/reindex | Replaces job descriptions for performing a partial or full reindex of provided entity sets.


# **clear_indexing_queue**
> int clear_indexing_queue()

Clears all the data currently being indexed in the queue.

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
    api_instance = openlattice.AdminApi(api_client)
    
    try:
        # Clears all the data currently being indexed in the queue.
        api_response = api_instance.clear_indexing_queue()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->clear_indexing_queue: %s\n" % e)
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
    api_instance = openlattice.AdminApi(api_client)
    
    try:
        # Clears all the data currently being indexed in the queue.
        api_response = api_instance.clear_indexing_queue()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->clear_indexing_queue: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The number of items in the queue before being cleared. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_indexing_state**
> IndexingState get_indexing_state()

Retrieve the current state of reindexing jobs

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
    api_instance = openlattice.AdminApi(api_client)
    
    try:
        # Retrieve the current state of reindexing jobs
        api_response = api_instance.get_indexing_state()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->get_indexing_state: %s\n" % e)
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
    api_instance = openlattice.AdminApi(api_client)
    
    try:
        # Retrieve the current state of reindexing jobs
        api_response = api_instance.get_indexing_state()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->get_indexing_state: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**IndexingState**](IndexingState.md)

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

# **reindex**
> IndexingState reindex(request_body)

Merge job descriptions for performing a partial or full reindex of provided entity sets.

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
    api_instance = openlattice.AdminApi(api_client)
    request_body = None # dict(str, list[str]) | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.

    try:
        # Merge job descriptions for performing a partial or full reindex of provided entity sets.
        api_response = api_instance.reindex(request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->reindex: %s\n" % e)
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
    api_instance = openlattice.AdminApi(api_client)
    request_body = None # dict(str, list[str]) | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.

    try:
        # Merge job descriptions for performing a partial or full reindex of provided entity sets.
        api_response = api_instance.reindex(request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->reindex: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**dict(str, list[str])**](list.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

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

# **update_reindex**
> IndexingState update_reindex(request_body)

Replaces job descriptions for performing a partial or full reindex of provided entity sets.

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
    api_instance = openlattice.AdminApi(api_client)
    request_body = None # dict(str, list[str]) | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.

    try:
        # Replaces job descriptions for performing a partial or full reindex of provided entity sets.
        api_response = api_instance.update_reindex(request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->update_reindex: %s\n" % e)
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
    api_instance = openlattice.AdminApi(api_client)
    request_body = None # dict(str, list[str]) | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.

    try:
        # Replaces job descriptions for performing a partial or full reindex of provided entity sets.
        api_response = api_instance.update_reindex(request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling AdminApi->update_reindex: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**dict(str, list[str])**](list.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

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

