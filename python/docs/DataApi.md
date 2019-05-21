# openlattice.DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_assocations**](DataApi.md#create_assocations) | **POST** /datastore/data/associations/ | Creates a new set of associations.
[**delete_all_entities_from_entity_set**](DataApi.md#delete_all_entities_from_entity_set) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**delete_entities**](DataApi.md#delete_entities) | **DELETE** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
[**get_entity_set_size**](DataApi.md#get_entity_set_size) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**load_entity_set_data**](DataApi.md#load_entity_set_data) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**load_filtered_entity_set_data**](DataApi.md#load_filtered_entity_set_data) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUID&#39;s


# **create_assocations**
> dict(str, object) create_assocations(data_edge)

Creates a new set of associations.

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
data_edge = NULL # list[dict] | 

try:
    # Creates a new set of associations.
    api_response = api_instance.create_assocations(data_edge)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->create_assocations: %s\n" % e)
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
data_edge = NULL # list[dict] | 

try:
    # Creates a new set of associations.
    api_response = api_instance.create_assocations(data_edge)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->create_assocations: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_edge** | [**list[dict]**](list.md)|  | 

### Return type

**dict(str, object)**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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

# **delete_entities**
> int delete_entities(entity_set_id, type, request_body)

Deletes multiple entities from an entity set.

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
request_body = NULL # list[str] | 

try:
    # Deletes multiple entities from an entity set.
    api_response = api_instance.delete_entities(entity_set_id, type, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->delete_entities: %s\n" % e)
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
request_body = NULL # list[str] | 

try:
    # Deletes multiple entities from an entity set.
    api_response = api_instance.delete_entities(entity_set_id, type, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->delete_entities: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **type** | **str**|  | 
 **request_body** | [**list[str]**](list.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

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
> list[dict(str, list[str])] load_entity_set_data(entity_set_id)

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

**list[dict(str, list[str])]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **load_filtered_entity_set_data**
> list[dict(str, list[str])] load_filtered_entity_set_data(entity_set_id, entity_set_selection)

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

**list[dict(str, list[str])]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

