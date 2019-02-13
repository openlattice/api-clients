# openlattice.DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clear_entity_set**](DataApi.md#clear_entity_set) | **DELETE** /datastore/data/set/{entitySetId} | Clears the data from a single entity set.
[**delete_all_entities_from_entity_set**](DataApi.md#delete_all_entities_from_entity_set) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**get_entity_set_size**](DataApi.md#get_entity_set_size) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**load_entity_set_data**](DataApi.md#load_entity_set_data) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**load_filtered_entity_set_data**](DataApi.md#load_filtered_entity_set_data) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUID&#39;s


# **clear_entity_set**
> clear_entity_set(entity_set_id)

Clears the data from a single entity set.

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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Clears the data from a single entity set.
    api_instance.clear_entity_set(entity_set_id)
except ApiException as e:
    print("Exception when calling DataApi->clear_entity_set: %s\n" % e)
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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Clears the data from a single entity set.
    api_instance.clear_entity_set(entity_set_id)
except ApiException as e:
    print("Exception when calling DataApi->clear_entity_set: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_all_entities_from_entity_set**
> delete_all_entities_from_entity_set(entity_set_id, type)

Clears the Entity matching the given Entity id and all of its neighbor Entities

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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 

try:
    # Clears the Entity matching the given Entity id and all of its neighbor Entities
    api_instance.delete_all_entities_from_entity_set(entity_set_id, type)
except ApiException as e:
    print("Exception when calling DataApi->delete_all_entities_from_entity_set: %s\n" % e)
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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 

try:
    # Clears the Entity matching the given Entity id and all of its neighbor Entities
    api_instance.delete_all_entities_from_entity_set(entity_set_id, type)
except ApiException as e:
    print("Exception when calling DataApi->delete_all_entities_from_entity_set: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **type** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_set_size**
> int get_entity_set_size(entity_set_id)

Gets the number of entities in an entity set.

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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Gets the number of entities in an entity set.
    api_response = api_instance.get_entity_set_size(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_entity_set_size: %s\n" % e)
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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Gets the number of entities in an entity set.
    api_response = api_instance.get_entity_set_size(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_entity_set_size: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **load_entity_set_data**
> list[dict(str, str)] load_entity_set_data(entity_set_id)

Gets an iterable containing the entity data, using property type FQNs as key

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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Gets an iterable containing the entity data, using property type FQNs as key
    api_response = api_instance.load_entity_set_data(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->load_entity_set_data: %s\n" % e)
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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Gets an iterable containing the entity data, using property type FQNs as key
    api_response = api_instance.load_entity_set_data(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->load_entity_set_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 

### Return type

**list[dict(str, str)]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **load_filtered_entity_set_data**
> list[dict(str, str)] load_filtered_entity_set_data(entity_set_id, entity_set_selection)

Gets a list of entities by UUID's

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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_set_selection = NULL # list[EntitySetSelection] | 

try:
    # Gets a list of entities by UUID's
    api_response = api_instance.load_filtered_entity_set_data(entity_set_id, entity_set_selection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->load_filtered_entity_set_data: %s\n" % e)
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

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_set_selection = NULL # list[EntitySetSelection] | 

try:
    # Gets a list of entities by UUID's
    api_response = api_instance.load_filtered_entity_set_data(entity_set_id, entity_set_selection)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->load_filtered_entity_set_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **entity_set_selection** | [**list[EntitySetSelection]**](list.md)|  | 

### Return type

**list[dict(str, str)]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

