# openlattice.DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_associations**](DataApi.md#create_associations) | **POST** /datastore/data/association | Creates a new set of associations.
[**create_edges**](DataApi.md#create_edges) | **PUT** /datastore/data/association | Creates a new set of associations.
[**create_entities**](DataApi.md#create_entities) | **POST** /datastore/data/set/ | Creates a new set of entities.
[**create_entity_and_association_data**](DataApi.md#create_entity_and_association_data) | **POST** /datastore/data | Creates entities and assocations
[**delete_all_entities_from_entity_set**](DataApi.md#delete_all_entities_from_entity_set) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**delete_entities**](DataApi.md#delete_entities) | **DELETE** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
[**delete_entities_and_neighbors**](DataApi.md#delete_entities_and_neighbors) | **POST** /datastore/data/set/{entitySetId}/neighbors | Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
[**delete_entity**](DataApi.md#delete_entity) | **DELETE** /datastore/data/set/{entitySetId}/{entityKeyId} | Deletes a single entity from an entity set.
[**delete_entity_properties**](DataApi.md#delete_entity_properties) | **DELETE** /datastore/data/{entitySetId}/{entityKeyId}/properties | Deletes properties from an entity.
[**get_entity**](DataApi.md#get_entity) | **GET** /datastore/data/{entitySetId}/{entityKeyId} | Loads a single entity by its entityKeyId and entitySetId
[**get_entity_property_values**](DataApi.md#get_entity_property_values) | **GET** /datastore/data/{entitySetId}/{entityKeyId}/{propertyTypeId} | Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
[**get_entity_set_size**](DataApi.md#get_entity_set_size) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**load_entity_set_data**](DataApi.md#load_entity_set_data) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**load_linked_entity_set_breakdown**](DataApi.md#load_linked_entity_set_breakdown) | **POST** /datastore/data/set/{linkedEntitySetId}/detailed | Loads a linked entity set breakdown with the selected linked entities and properties.
[**load_selected_entity_set_data**](DataApi.md#load_selected_entity_set_data) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUIDs
[**replace_association_data**](DataApi.md#replace_association_data) | **PATCH** /datastore/data/association | Replaces Association Data
[**replace_entity_properties**](DataApi.md#replace_entity_properties) | **PATCH** /datastore/data/set/{entitySetId} | Replaces Entity Properties
[**update_entities_in_entity_set**](DataApi.md#update_entities_in_entity_set) | **PUT** /datastore/data/set/{entitySetId} | Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.


# **create_associations**
> dict(str, list[str]) create_associations(inline_object)

Creates a new set of associations.

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
    api_instance = openlattice.DataApi(api_client)
    inline_object = openlattice.InlineObject() # InlineObject | 

    try:
        # Creates a new set of associations.
        api_response = api_instance.create_associations(inline_object)
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
    api_instance = openlattice.DataApi(api_client)
    inline_object = openlattice.InlineObject() # InlineObject | 

    try:
        # Creates a new set of associations.
        api_response = api_instance.create_associations(inline_object)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->create_associations: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | 

### Return type

**dict(str, list[str])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Edges |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_edges**
> int create_edges(data_edge_key)

Creates a new set of associations.

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
    api_instance = openlattice.DataApi(api_client)
    data_edge_key = [openlattice.DataEdgeKey()] # list[DataEdgeKey] | 

    try:
        # Creates a new set of associations.
        api_response = api_instance.create_edges(data_edge_key)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->create_edges: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    data_edge_key = [openlattice.DataEdgeKey()] # list[DataEdgeKey] | 

    try:
        # Creates a new set of associations.
        api_response = api_instance.create_edges(data_edge_key)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->create_edges: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_edge_key** | [**list[DataEdgeKey]**](DataEdgeKey.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An Entity Set definition |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_entities**
> list[str] create_entities(set_id, request_body)

Creates a new set of entities.

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
    api_instance = openlattice.DataApi(api_client)
    set_id = 'set_id_example' # str | 
request_body = None # list[dict(str, list[str])] | 

    try:
        # Creates a new set of entities.
        api_response = api_instance.create_entities(set_id, request_body)
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
    api_instance = openlattice.DataApi(api_client)
    set_id = 'set_id_example' # str | 
request_body = None # list[dict(str, list[str])] | 

    try:
        # Creates a new set of entities.
        api_response = api_instance.create_entities(set_id, request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->create_entities: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_id** | [**str**](.md)|  | 
 **request_body** | [**list[dict(str, list[str])]**](dict.md)|  | 

### Return type

**list[str]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Edges |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_entity_and_association_data**
> DataGraphIds create_entity_and_association_data(data_graph)

Creates entities and assocations

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
    api_instance = openlattice.DataApi(api_client)
    data_graph = openlattice.DataGraph() # DataGraph | 

    try:
        # Creates entities and assocations
        api_response = api_instance.create_entity_and_association_data(data_graph)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->create_entity_and_association_data: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    data_graph = openlattice.DataGraph() # DataGraph | 

    try:
        # Creates entities and assocations
        api_response = api_instance.create_entity_and_association_data(data_graph)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->create_entity_and_association_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_graph** | [**DataGraph**](DataGraph.md)|  | 

### Return type

[**DataGraphIds**](DataGraphIds.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | DataGraphIds |  -  |

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
    api_instance = openlattice.DataApi(api_client)
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
    api_instance = openlattice.DataApi(api_client)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
request_body = ['request_body_example'] # list[str] | 

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
request_body = ['request_body_example'] # list[str] | 

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
 **request_body** | [**list[str]**](str.md)|  | 

### Return type

**int**

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

# **delete_entities_and_neighbors**
> int delete_entities_and_neighbors(entity_set_id, type, entity_neighbors_filter)

Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
entity_neighbors_filter = [openlattice.EntityNeighborsFilter()] # list[EntityNeighborsFilter] | 

    try:
        # Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
        api_response = api_instance.delete_entities_and_neighbors(entity_set_id, type, entity_neighbors_filter)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->delete_entities_and_neighbors: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
entity_neighbors_filter = [openlattice.EntityNeighborsFilter()] # list[EntityNeighborsFilter] | 

    try:
        # Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
        api_response = api_instance.delete_entities_and_neighbors(entity_set_id, type, entity_neighbors_filter)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->delete_entities_and_neighbors: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **type** | **str**|  | 
 **entity_neighbors_filter** | [**list[EntityNeighborsFilter]**](EntityNeighborsFilter.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A long |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_entity**
> delete_entity(entity_set_id, entity_key_id, type)

Deletes a single entity from an entity set.

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 
type = 'type_example' # str | 

    try:
        # Deletes a single entity from an entity set.
        api_instance.delete_entity(entity_set_id, entity_key_id, type)
    except ApiException as e:
        print("Exception when calling DataApi->delete_entity: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 
type = 'type_example' # str | 

    try:
        # Deletes a single entity from an entity set.
        api_instance.delete_entity(entity_set_id, entity_key_id, type)
    except ApiException as e:
        print("Exception when calling DataApi->delete_entity: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **entity_key_id** | [**str**](.md)|  | 
 **type** | **str**|  | 

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

# **delete_entity_properties**
> delete_entity_properties(entity_set_id, entity_key_id, type, request_body)

Deletes properties from an entity.

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 
type = 'type_example' # str | 
request_body = ['request_body_example'] # list[str] | 

    try:
        # Deletes properties from an entity.
        api_instance.delete_entity_properties(entity_set_id, entity_key_id, type, request_body)
    except ApiException as e:
        print("Exception when calling DataApi->delete_entity_properties: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 
type = 'type_example' # str | 
request_body = ['request_body_example'] # list[str] | 

    try:
        # Deletes properties from an entity.
        api_instance.delete_entity_properties(entity_set_id, entity_key_id, type, request_body)
    except ApiException as e:
        print("Exception when calling DataApi->delete_entity_properties: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **entity_key_id** | [**str**](.md)|  | 
 **type** | **str**|  | 
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

# **get_entity**
> dict(str, list[str]) get_entity(entity_set_id, entity_key_id)

Loads a single entity by its entityKeyId and entitySetId

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
    api_instance = openlattice.DataApi(api_client)
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
    api_instance = openlattice.DataApi(api_client)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An entity details object, with property type FQNs as keys. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_property_values**
> list[str] get_entity_property_values(entity_set_id, entity_key_id, property_type_id)

Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 
property_type_id = 'property_type_id_example' # str | 

    try:
        # Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
        api_response = api_instance.get_entity_property_values(entity_set_id, entity_key_id, property_type_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->get_entity_property_values: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 
property_type_id = 'property_type_id_example' # str | 

    try:
        # Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
        api_response = api_instance.get_entity_property_values(entity_set_id, entity_key_id, property_type_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->get_entity_property_values: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **entity_key_id** | [**str**](.md)|  | 
 **property_type_id** | [**str**](.md)|  | 

### Return type

**list[str]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A set of values |  -  |

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
    api_instance = openlattice.DataApi(api_client)
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
    api_instance = openlattice.DataApi(api_client)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The number of entities in an entity set. |  -  |

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
    api_instance = openlattice.DataApi(api_client)
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
    api_instance = openlattice.DataApi(api_client)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An Entity Set definition |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **load_linked_entity_set_breakdown**
> dict(str, dict(str, dict(str, dict(str, list[str])))) load_linked_entity_set_breakdown(linked_entity_set_id, entity_set_selection)

Loads a linked entity set breakdown with the selected linked entities and properties.

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
    api_instance = openlattice.DataApi(api_client)
    linked_entity_set_id = 'linked_entity_set_id_example' # str | 
entity_set_selection = [openlattice.EntitySetSelection()] # list[EntitySetSelection] | 

    try:
        # Loads a linked entity set breakdown with the selected linked entities and properties.
        api_response = api_instance.load_linked_entity_set_breakdown(linked_entity_set_id, entity_set_selection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->load_linked_entity_set_breakdown: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    linked_entity_set_id = 'linked_entity_set_id_example' # str | 
entity_set_selection = [openlattice.EntitySetSelection()] # list[EntitySetSelection] | 

    try:
        # Loads a linked entity set breakdown with the selected linked entities and properties.
        api_response = api_instance.load_linked_entity_set_breakdown(linked_entity_set_id, entity_set_selection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->load_linked_entity_set_breakdown: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linked_entity_set_id** | [**str**](.md)|  | 
 **entity_set_selection** | [**list[EntitySetSelection]**](EntitySetSelection.md)|  | 

### Return type

**dict(str, dict(str, dict(str, dict(str, list[str]))))**

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

# **load_selected_entity_set_data**
> list[dict(str, list[str])] load_selected_entity_set_data(entity_set_id, entity_set_selection)

Gets a list of entities by UUIDs

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_set_selection = [openlattice.EntitySetSelection()] # list[EntitySetSelection] | 

    try:
        # Gets a list of entities by UUIDs
        api_response = api_instance.load_selected_entity_set_data(entity_set_id, entity_set_selection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->load_selected_entity_set_data: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
entity_set_selection = [openlattice.EntitySetSelection()] # list[EntitySetSelection] | 

    try:
        # Gets a list of entities by UUIDs
        api_response = api_instance.load_selected_entity_set_data(entity_set_id, entity_set_selection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->load_selected_entity_set_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **entity_set_selection** | [**list[EntitySetSelection]**](EntitySetSelection.md)|  | 

### Return type

**list[dict(str, list[str])]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of entity keys that were generated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace_association_data**
> int replace_association_data(partial, request_body)

Replaces Association Data

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
    api_instance = openlattice.DataApi(api_client)
    partial = True # bool | 
request_body = None # dict(str, dict(str, DataEdge)) | 

    try:
        # Replaces Association Data
        api_response = api_instance.replace_association_data(partial, request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->replace_association_data: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    partial = True # bool | 
request_body = None # dict(str, dict(str, DataEdge)) | 

    try:
        # Replaces Association Data
        api_response = api_instance.replace_association_data(partial, request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->replace_association_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partial** | **bool**|  | 
 **request_body** | [**dict(str, dict(str, DataEdge))**](dict.md)|  | 

### Return type

**int**

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

# **replace_entity_properties**
> int replace_entity_properties(entity_set_id, request_body)

Replaces Entity Properties

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
request_body = None # dict(str, dict(str, list[dict(str, str)])) | 

    try:
        # Replaces Entity Properties
        api_response = api_instance.replace_entity_properties(entity_set_id, request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->replace_entity_properties: %s\n" % e)
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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
request_body = None # dict(str, dict(str, list[dict(str, str)])) | 

    try:
        # Replaces Entity Properties
        api_response = api_instance.replace_entity_properties(entity_set_id, request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling DataApi->replace_entity_properties: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **request_body** | [**dict(str, dict(str, list[dict(str, str)]))**](dict.md)|  | 

### Return type

**int**

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

# **update_entities_in_entity_set**
> int update_entities_in_entity_set(entity_set_id, type, request_body)

Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
request_body = None # dict(str, dict(str, list[str])) | 

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
    api_instance = openlattice.DataApi(api_client)
    entity_set_id = 'entity_set_id_example' # str | 
type = 'type_example' # str | 
request_body = None # dict(str, dict(str, list[str])) | 

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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

