# openlattice.DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_associations**](DataApi.md#create_associations) | **POST** /datastore/data/associations/ | Creates a new set of associations.
[**create_entities**](DataApi.md#create_entities) | **POST** /datastore/data/set | Creates a new set of entities.
[**delete_all_entities_from_entity_set**](DataApi.md#delete_all_entities_from_entity_set) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**delete_entities**](DataApi.md#delete_entities) | **DELETE** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
[**get_entity**](DataApi.md#get_entity) | **GET** /datastore/data/{entitySetId}/{entityKeyId} | Loads a single entity by its entityKeyId and entitySetId
[**get_entity_set_size**](DataApi.md#get_entity_set_size) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**load_entity_set_data**](DataApi.md#load_entity_set_data) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**load_filtered_entity_set_data**](DataApi.md#load_filtered_entity_set_data) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUIDs
[**update_entities_in_entity_set**](DataApi.md#update_entities_in_entity_set) | **PUT** /datastore/data/set/{entitySetId} | Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.


# **create_associations**
> dict(str, object) create_associations(data_edge)

Creates a new set of associations.

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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
data_edge = NULL # list[dict] | 

try:
    # Creates a new set of associations.
    api_response = api_instance.create_associations(data_edge)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->create_associations: %s\n" % e)
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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
data_edge = NULL # list[dict] | 

try:
    # Creates a new set of associations.
    api_response = api_instance.create_associations(data_edge)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->create_associations: %s\n" % e)
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

# **create_entities**
> list[str] create_entities(entity_set_id, request_body)

Creates a new set of entities.

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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Creates a new set of entities.
    api_response = api_instance.create_entities(entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->create_entities: %s\n" % e)
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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Creates a new set of entities.
    api_response = api_instance.create_entities(entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->create_entities: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **request_body** | [**dict(str, list[str])**](list.md)|  | 

### Return type

**list[str]**

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

# **get_entity**
> dict(str, list[str]) get_entity(entity_set_id, entity_key_id)

Loads a single entity by its entityKeyId and entitySetId

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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 

try:
    # Loads a single entity by its entityKeyId and entitySetId
    api_response = api_instance.get_entity(entity_set_id, entity_key_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_entity: %s\n" % e)
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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 

try:
    # Loads a single entity by its entityKeyId and entitySetId
    api_response = api_instance.get_entity(entity_set_id, entity_key_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->get_entity: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **entity_key_id** | [**str**](.md)|  | 

### Return type

**dict(str, list[str])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_set_size**
> int get_entity_set_size(entity_set_id)

Gets the number of entities in an entity set.

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

Gets a list of entities by UUIDs

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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_set_selection = NULL # list[EntitySetSelection] | 

try:
    # Gets a list of entities by UUIDs
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
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_set_selection = NULL # list[EntitySetSelection] | 

try:
    # Gets a list of entities by UUIDs
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

# **update_entities_in_entity_set**
> int update_entities_in_entity_set(entity_set_id, type, request_body)

Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.

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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
request_body = NULL # dict(str, dict(str, list[str])) | 

try:
    # Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.
    api_response = api_instance.update_entities_in_entity_set(entity_set_id, type, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->update_entities_in_entity_set: %s\n" % e)
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
api_instance = openlattice.DataApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
request_body = NULL # dict(str, dict(str, list[str])) | 

try:
    # Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.
    api_response = api_instance.update_entities_in_entity_set(entity_set_id, type, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataApi->update_entities_in_entity_set: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **type** | **str**|  | 
 **request_body** | [**dict(str, dict(str, list[str]))**](dict.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

