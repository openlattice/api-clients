# openlattice.CollectionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_type_to_entity_type_collection_template**](CollectionsApi.md#add_type_to_entity_type_collection_template) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId}/template | Appends type to template of the specified EntityTypeCollection
[**create_entity_set_collection**](CollectionsApi.md#create_entity_set_collection) | **POST** /datastore/collections/entity/set | Creates a new EntitySetCollection
[**create_entity_type_collection**](CollectionsApi.md#create_entity_type_collection) | **POST** /datastore/collections/entity/type | Creates a new EntityTypeCollection
[**delete_entity_set_collection**](CollectionsApi.md#delete_entity_set_collection) | **DELETE** /datastore/collections/entity/set/{entitySetCollectionId} | Deletes the specified EntitySetCollection
[**delete_entity_type_collection**](CollectionsApi.md#delete_entity_type_collection) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId} | Deletes the specified EntityTypeCollection
[**get_all_entity_set_collections**](CollectionsApi.md#get_all_entity_set_collections) | **GET** /datastore/collections/entity/set | Returns all EntitySetCollection objects
[**get_all_entity_type_collections**](CollectionsApi.md#get_all_entity_type_collections) | **GET** /datastore/collections/entity/type | Returns all EntityTypeCollection objects
[**get_entity_set_collection**](CollectionsApi.md#get_entity_set_collection) | **GET** /datastore/collections/entity/set/{entitySetCollectionId} | Returns the EntitySetCollection object for a given id
[**get_entity_set_collections_of_type**](CollectionsApi.md#get_entity_set_collections_of_type) | **GET** /datastore/collections/entity/set/entity/type/{entitySetCollectionId} | Returns all authorized EntitySetCollections for a given EntityTypeCollection id
[**get_entity_type_collection**](CollectionsApi.md#get_entity_type_collection) | **GET** /datastore/collections/entity/type/{entityTypeCollectionId} | Returns the EntityTypeCollection object for a given id
[**remove_type_from_entity_type_collection_template**](CollectionsApi.md#remove_type_from_entity_type_collection_template) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId}/template/{typeId} | Removes a key from an EntityTypeCollection template
[**update_entity_set_collection_metadata**](CollectionsApi.md#update_entity_set_collection_metadata) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId} | Updates metadata of the specified EntitySetCollection
[**update_entity_set_collection_template**](CollectionsApi.md#update_entity_set_collection_template) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId}/template | Updates template of the specified EntitySetCollection
[**update_entity_type_collection_metadata**](CollectionsApi.md#update_entity_type_collection_metadata) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId} | Updates metadata of the specified EntityTypeCollection


# **add_type_to_entity_type_collection_template**
> add_type_to_entity_type_collection_template(entity_type_collection_id, collection_template_type)

Appends type to template of the specified EntityTypeCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 
collection_template_type = openlattice.CollectionTemplateType() # CollectionTemplateType | 

    try:
        # Appends type to template of the specified EntityTypeCollection
        api_instance.add_type_to_entity_type_collection_template(entity_type_collection_id, collection_template_type)
    except ApiException as e:
        print("Exception when calling CollectionsApi->add_type_to_entity_type_collection_template: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 
collection_template_type = openlattice.CollectionTemplateType() # CollectionTemplateType | 

    try:
        # Appends type to template of the specified EntityTypeCollection
        api_instance.add_type_to_entity_type_collection_template(entity_type_collection_id, collection_template_type)
    except ApiException as e:
        print("Exception when calling CollectionsApi->add_type_to_entity_type_collection_template: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**str**](.md)|  | 
 **collection_template_type** | [**CollectionTemplateType**](CollectionTemplateType.md)|  | 

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

# **create_entity_set_collection**
> str create_entity_set_collection(entity_set_collection)

Creates a new EntitySetCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection = openlattice.EntitySetCollection() # EntitySetCollection | 

    try:
        # Creates a new EntitySetCollection
        api_response = api_instance.create_entity_set_collection(entity_set_collection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->create_entity_set_collection: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection = openlattice.EntitySetCollection() # EntitySetCollection | 

    try:
        # Creates a new EntitySetCollection
        api_response = api_instance.create_entity_set_collection(entity_set_collection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->create_entity_set_collection: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection** | [**EntitySetCollection**](EntitySetCollection.md)|  | 

### Return type

**str**

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

# **create_entity_type_collection**
> str create_entity_type_collection(entity_type_collection)

Creates a new EntityTypeCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection = openlattice.EntityTypeCollection() # EntityTypeCollection | 

    try:
        # Creates a new EntityTypeCollection
        api_response = api_instance.create_entity_type_collection(entity_type_collection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->create_entity_type_collection: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection = openlattice.EntityTypeCollection() # EntityTypeCollection | 

    try:
        # Creates a new EntityTypeCollection
        api_response = api_instance.create_entity_type_collection(entity_type_collection)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->create_entity_type_collection: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection** | [**EntityTypeCollection**](EntityTypeCollection.md)|  | 

### Return type

**str**

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

# **delete_entity_set_collection**
> delete_entity_set_collection(entity_set_collection_id)

Deletes the specified EntitySetCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 

    try:
        # Deletes the specified EntitySetCollection
        api_instance.delete_entity_set_collection(entity_set_collection_id)
    except ApiException as e:
        print("Exception when calling CollectionsApi->delete_entity_set_collection: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 

    try:
        # Deletes the specified EntitySetCollection
        api_instance.delete_entity_set_collection(entity_set_collection_id)
    except ApiException as e:
        print("Exception when calling CollectionsApi->delete_entity_set_collection: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**str**](.md)|  | 

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

# **delete_entity_type_collection**
> delete_entity_type_collection(entity_type_collection_id)

Deletes the specified EntityTypeCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 

    try:
        # Deletes the specified EntityTypeCollection
        api_instance.delete_entity_type_collection(entity_type_collection_id)
    except ApiException as e:
        print("Exception when calling CollectionsApi->delete_entity_type_collection: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 

    try:
        # Deletes the specified EntityTypeCollection
        api_instance.delete_entity_type_collection(entity_type_collection_id)
    except ApiException as e:
        print("Exception when calling CollectionsApi->delete_entity_type_collection: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**str**](.md)|  | 

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

# **get_all_entity_set_collections**
> list[EntitySetCollection] get_all_entity_set_collections()

Returns all EntitySetCollection objects

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
    api_instance = openlattice.CollectionsApi(api_client)
    
    try:
        # Returns all EntitySetCollection objects
        api_response = api_instance.get_all_entity_set_collections()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_all_entity_set_collections: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    
    try:
        # Returns all EntitySetCollection objects
        api_response = api_instance.get_all_entity_set_collections()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_all_entity_set_collections: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[EntitySetCollection]**](EntitySetCollection.md)

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

# **get_all_entity_type_collections**
> list[EntityTypeCollection] get_all_entity_type_collections()

Returns all EntityTypeCollection objects

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
    api_instance = openlattice.CollectionsApi(api_client)
    
    try:
        # Returns all EntityTypeCollection objects
        api_response = api_instance.get_all_entity_type_collections()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_all_entity_type_collections: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    
    try:
        # Returns all EntityTypeCollection objects
        api_response = api_instance.get_all_entity_type_collections()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_all_entity_type_collections: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[EntityTypeCollection]**](EntityTypeCollection.md)

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

# **get_entity_set_collection**
> EntitySetCollection get_entity_set_collection(entity_set_collection_id)

Returns the EntitySetCollection object for a given id

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 

    try:
        # Returns the EntitySetCollection object for a given id
        api_response = api_instance.get_entity_set_collection(entity_set_collection_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_entity_set_collection: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 

    try:
        # Returns the EntitySetCollection object for a given id
        api_response = api_instance.get_entity_set_collection(entity_set_collection_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_entity_set_collection: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**str**](.md)|  | 

### Return type

[**EntitySetCollection**](EntitySetCollection.md)

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

# **get_entity_set_collections_of_type**
> list[EntitySetCollection] get_entity_set_collections_of_type(entity_set_collection_id)

Returns all authorized EntitySetCollections for a given EntityTypeCollection id

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 

    try:
        # Returns all authorized EntitySetCollections for a given EntityTypeCollection id
        api_response = api_instance.get_entity_set_collections_of_type(entity_set_collection_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_entity_set_collections_of_type: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 

    try:
        # Returns all authorized EntitySetCollections for a given EntityTypeCollection id
        api_response = api_instance.get_entity_set_collections_of_type(entity_set_collection_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_entity_set_collections_of_type: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**str**](.md)|  | 

### Return type

[**list[EntitySetCollection]**](EntitySetCollection.md)

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

# **get_entity_type_collection**
> EntityTypeCollection get_entity_type_collection(entity_type_collection_id)

Returns the EntityTypeCollection object for a given id

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 

    try:
        # Returns the EntityTypeCollection object for a given id
        api_response = api_instance.get_entity_type_collection(entity_type_collection_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_entity_type_collection: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 

    try:
        # Returns the EntityTypeCollection object for a given id
        api_response = api_instance.get_entity_type_collection(entity_type_collection_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling CollectionsApi->get_entity_type_collection: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**str**](.md)|  | 

### Return type

[**EntityTypeCollection**](EntityTypeCollection.md)

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

# **remove_type_from_entity_type_collection_template**
> remove_type_from_entity_type_collection_template(entity_type_collection_id, type_id)

Removes a key from an EntityTypeCollection template

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 
type_id = 'type_id_example' # str | 

    try:
        # Removes a key from an EntityTypeCollection template
        api_instance.remove_type_from_entity_type_collection_template(entity_type_collection_id, type_id)
    except ApiException as e:
        print("Exception when calling CollectionsApi->remove_type_from_entity_type_collection_template: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 
type_id = 'type_id_example' # str | 

    try:
        # Removes a key from an EntityTypeCollection template
        api_instance.remove_type_from_entity_type_collection_template(entity_type_collection_id, type_id)
    except ApiException as e:
        print("Exception when calling CollectionsApi->remove_type_from_entity_type_collection_template: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**str**](.md)|  | 
 **type_id** | [**str**](.md)|  | 

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

# **update_entity_set_collection_metadata**
> update_entity_set_collection_metadata(entity_set_collection_id, metadata_update)

Updates metadata of the specified EntitySetCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates metadata of the specified EntitySetCollection
        api_instance.update_entity_set_collection_metadata(entity_set_collection_id, metadata_update)
    except ApiException as e:
        print("Exception when calling CollectionsApi->update_entity_set_collection_metadata: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates metadata of the specified EntitySetCollection
        api_instance.update_entity_set_collection_metadata(entity_set_collection_id, metadata_update)
    except ApiException as e:
        print("Exception when calling CollectionsApi->update_entity_set_collection_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**str**](.md)|  | 
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

# **update_entity_set_collection_template**
> update_entity_set_collection_template(entity_set_collection_id, request_body)

Updates template of the specified EntitySetCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 
request_body = {'key': 'request_body_example'} # dict(str, str) | 

    try:
        # Updates template of the specified EntitySetCollection
        api_instance.update_entity_set_collection_template(entity_set_collection_id, request_body)
    except ApiException as e:
        print("Exception when calling CollectionsApi->update_entity_set_collection_template: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_set_collection_id = 'entity_set_collection_id_example' # str | 
request_body = {'key': 'request_body_example'} # dict(str, str) | 

    try:
        # Updates template of the specified EntitySetCollection
        api_instance.update_entity_set_collection_template(entity_set_collection_id, request_body)
    except ApiException as e:
        print("Exception when calling CollectionsApi->update_entity_set_collection_template: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_collection_id** | [**str**](.md)|  | 
 **request_body** | [**dict(str, str)**](str.md)|  | 

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

# **update_entity_type_collection_metadata**
> update_entity_type_collection_metadata(entity_type_collection_id, metadata_update)

Updates metadata of the specified EntityTypeCollection

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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates metadata of the specified EntityTypeCollection
        api_instance.update_entity_type_collection_metadata(entity_type_collection_id, metadata_update)
    except ApiException as e:
        print("Exception when calling CollectionsApi->update_entity_type_collection_metadata: %s\n" % e)
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
    api_instance = openlattice.CollectionsApi(api_client)
    entity_type_collection_id = 'entity_type_collection_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

    try:
        # Updates metadata of the specified EntityTypeCollection
        api_instance.update_entity_type_collection_metadata(entity_type_collection_id, metadata_update)
    except ApiException as e:
        print("Exception when calling CollectionsApi->update_entity_type_collection_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_type_collection_id** | [**str**](.md)|  | 
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

