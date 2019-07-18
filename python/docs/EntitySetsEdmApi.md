# openlattice.EntitySetsEdmApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_entity_sets_to_linking_entity_set**](EntitySetsEdmApi.md#add_entity_sets_to_linking_entity_set) | **POST** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
[**add_entity_sets_to_linking_entity_sets**](EntitySetsEdmApi.md#add_entity_sets_to_linking_entity_sets) | **PUT** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
[**create_entity_sets**](EntitySetsEdmApi.md#create_entity_sets) | **POST** /datastore/entity-sets | Create new EntitySet definitions if they don\&quot;t exist.
[**delete_entity_set**](EntitySetsEdmApi.md#delete_entity_set) | **DELETE** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**get_all_entity_set_property_metadata**](EntitySetsEdmApi.md#get_all_entity_set_property_metadata) | **GET** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
[**get_all_entity_sets**](EntitySetsEdmApi.md#get_all_entity_sets) | **GET** /datastore/entity-sets | Get all EntitySet definitions.
[**get_entity_set**](EntitySetsEdmApi.md#get_entity_set) | **GET** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**get_entity_set_id**](EntitySetsEdmApi.md#get_entity_set_id) | **GET** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**get_entity_set_ids**](EntitySetsEdmApi.md#get_entity_set_ids) | **POST** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
[**get_entity_set_property_metadata**](EntitySetsEdmApi.md#get_entity_set_property_metadata) | **GET** /datastore/entity-sets/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**get_property_metadata_for_entity_sets**](EntitySetsEdmApi.md#get_property_metadata_for_entity_sets) | **POST** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
[**get_property_types_for_entity_set**](EntitySetsEdmApi.md#get_property_types_for_entity_set) | **GET** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
[**remove_entity_sets_from_linking_entity_set**](EntitySetsEdmApi.md#remove_entity_sets_from_linking_entity_set) | **DELETE** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
[**remove_entity_sets_from_linking_entity_sets**](EntitySetsEdmApi.md#remove_entity_sets_from_linking_entity_sets) | **DELETE** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
[**update_entity_set_meta_data**](EntitySetsEdmApi.md#update_entity_set_meta_data) | **PATCH** /datastore/entity-sets/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**update_entity_set_property_metadata**](EntitySetsEdmApi.md#update_entity_set_property_metadata) | **POST** /datastore/entity-sets/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.


# **add_entity_sets_to_linking_entity_set**
> int add_entity_sets_to_linking_entity_set(linking_entity_set_id, request_body=request_body)

Adds the entity sets as linked entity sets to the linking entity set

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # list[str] |  (optional)

try:
    # Adds the entity sets as linked entity sets to the linking entity set
    api_response = api_instance.add_entity_sets_to_linking_entity_set(linking_entity_set_id, request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->add_entity_sets_to_linking_entity_set: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # list[str] |  (optional)

try:
    # Adds the entity sets as linked entity sets to the linking entity set
    api_response = api_instance.add_entity_sets_to_linking_entity_set(linking_entity_set_id, request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->add_entity_sets_to_linking_entity_set: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | [**str**](.md)|  | 
 **request_body** | [**list[str]**](list.md)|  | [optional] 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_entity_sets_to_linking_entity_sets**
> int add_entity_sets_to_linking_entity_sets(linking_entity_set_id, request_body)

Adds the entity sets as linked entity sets to the linking entity sets

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Adds the entity sets as linked entity sets to the linking entity sets
    api_response = api_instance.add_entity_sets_to_linking_entity_sets(linking_entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->add_entity_sets_to_linking_entity_sets: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Adds the entity sets as linked entity sets to the linking entity sets
    api_response = api_instance.add_entity_sets_to_linking_entity_sets(linking_entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->add_entity_sets_to_linking_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | **str**|  | 
 **request_body** | [**dict(str, list[str])**](list.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_entity_sets**
> create_entity_sets(entity_set)

Create new EntitySet definitions if they don\"t exist.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set = NULL # list[EntitySet] | 

try:
    # Create new EntitySet definitions if they don\"t exist.
    api_instance.create_entity_sets(entity_set)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->create_entity_sets: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set = NULL # list[EntitySet] | 

try:
    # Create new EntitySet definitions if they don\"t exist.
    api_instance.create_entity_sets(entity_set)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->create_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set** | [**list[EntitySet]**](list.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_entity_set**
> delete_entity_set(entity_set_id)

Deletes the EntitySet definition for the given EntitySet UUID.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Deletes the EntitySet definition for the given EntitySet UUID.
    api_instance.delete_entity_set(entity_set_id)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->delete_entity_set: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Deletes the EntitySet definition for the given EntitySet UUID.
    api_instance.delete_entity_set(entity_set_id)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->delete_entity_set: %s\n" % e)
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

# **get_all_entity_set_property_metadata**
> dict(str, EntitySetPropertyMetaData) get_all_entity_set_property_metadata(entity_set_id)

Get all entity set property metadata.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Get all entity set property metadata.
    api_response = api_instance.get_all_entity_set_property_metadata(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_all_entity_set_property_metadata: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Get all entity set property metadata.
    api_response = api_instance.get_all_entity_set_property_metadata(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_all_entity_set_property_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 

### Return type

[**dict(str, EntitySetPropertyMetaData)**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_entity_sets**
> list[EntitySet] get_all_entity_sets()

Get all EntitySet definitions.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))

try:
    # Get all EntitySet definitions.
    api_response = api_instance.get_all_entity_sets()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_all_entity_sets: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))

try:
    # Get all EntitySet definitions.
    api_response = api_instance.get_all_entity_sets()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_all_entity_sets: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[EntitySet]**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_set**
> EntitySet get_entity_set(entity_set_id)

Get the EntitySet definition for the given EntitySet UUID.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Get the EntitySet definition for the given EntitySet UUID.
    api_response = api_instance.get_entity_set(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Get the EntitySet definition for the given EntitySet UUID.
    api_response = api_instance.get_entity_set(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 

### Return type

[**EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_set_id**
> str get_entity_set_id(entity_set_name)

Gets the EntitySet UUID for the given EntitySet name.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_name = 'entity_set_name_example' # str | 

try:
    # Gets the EntitySet UUID for the given EntitySet name.
    api_response = api_instance.get_entity_set_id(entity_set_name)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set_id: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_name = 'entity_set_name_example' # str | 

try:
    # Gets the EntitySet UUID for the given EntitySet name.
    api_response = api_instance.get_entity_set_id(entity_set_name)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_name** | **str**|  | 

### Return type

**str**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_set_ids**
> dict(str, str) get_entity_set_ids(request_body=request_body)

Get IDs for entity sets given their names.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
request_body = NULL # list[str] |  (optional)

try:
    # Get IDs for entity sets given their names.
    api_response = api_instance.get_entity_set_ids(request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set_ids: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
request_body = NULL # list[str] |  (optional)

try:
    # Get IDs for entity sets given their names.
    api_response = api_instance.get_entity_set_ids(request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set_ids: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**list[str]**](list.md)|  | [optional] 

### Return type

**dict(str, str)**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_set_property_metadata**
> EntitySetPropertyMetaData get_entity_set_property_metadata(entity_set_id, property_type_id)

Get specified property type metadata for an entity set.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
property_type_id = 'property_type_id_example' # str | 

try:
    # Get specified property type metadata for an entity set.
    api_response = api_instance.get_entity_set_property_metadata(entity_set_id, property_type_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set_property_metadata: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
property_type_id = 'property_type_id_example' # str | 

try:
    # Get specified property type metadata for an entity set.
    api_response = api_instance.get_entity_set_property_metadata(entity_set_id, property_type_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_entity_set_property_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **property_type_id** | [**str**](.md)|  | 

### Return type

[**EntitySetPropertyMetaData**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_property_metadata_for_entity_sets**
> dict(str, dict(str, EntitySetPropertyMetaData)) get_property_metadata_for_entity_sets(request_body=request_body)

Get property metadata for entity sets.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
request_body = NULL # list[str] |  (optional)

try:
    # Get property metadata for entity sets.
    api_response = api_instance.get_property_metadata_for_entity_sets(request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_property_metadata_for_entity_sets: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
request_body = NULL # list[str] |  (optional)

try:
    # Get property metadata for entity sets.
    api_response = api_instance.get_property_metadata_for_entity_sets(request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_property_metadata_for_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**list[str]**](list.md)|  | [optional] 

### Return type

**dict(str, dict(str, EntitySetPropertyMetaData))**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_property_types_for_entity_set**
> dict(str, PropertyType) get_property_types_for_entity_set(entity_set_id)

Get all Property Types for entity set

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Get all Property Types for entity set
    api_response = api_instance.get_property_types_for_entity_set(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_property_types_for_entity_set: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 

try:
    # Get all Property Types for entity set
    api_response = api_instance.get_property_types_for_entity_set(entity_set_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->get_property_types_for_entity_set: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 

### Return type

[**dict(str, PropertyType)**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_entity_sets_from_linking_entity_set**
> int remove_entity_sets_from_linking_entity_set(linking_entity_set_id, request_body=request_body)

Removes/unlinks the linked entity sets from the linking entity set

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # list[str] |  (optional)

try:
    # Removes/unlinks the linked entity sets from the linking entity set
    api_response = api_instance.remove_entity_sets_from_linking_entity_set(linking_entity_set_id, request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->remove_entity_sets_from_linking_entity_set: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # list[str] |  (optional)

try:
    # Removes/unlinks the linked entity sets from the linking entity set
    api_response = api_instance.remove_entity_sets_from_linking_entity_set(linking_entity_set_id, request_body=request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->remove_entity_sets_from_linking_entity_set: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | **str**|  | 
 **request_body** | [**list[str]**](list.md)|  | [optional] 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_entity_sets_from_linking_entity_sets**
> int remove_entity_sets_from_linking_entity_sets(linking_entity_set_id, request_body)

Removes/unlinks the linked entity sets from the linking entity set

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Removes/unlinks the linked entity sets from the linking entity set
    api_response = api_instance.remove_entity_sets_from_linking_entity_sets(linking_entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->remove_entity_sets_from_linking_entity_sets: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
linking_entity_set_id = 'linking_entity_set_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Removes/unlinks the linked entity sets from the linking entity set
    api_response = api_instance.remove_entity_sets_from_linking_entity_sets(linking_entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->remove_entity_sets_from_linking_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_entity_set_id** | [**str**](.md)|  | 
 **request_body** | [**dict(str, list[str])**](list.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_entity_set_meta_data**
> int update_entity_set_meta_data(entity_set_id, metadata_update)

Updates the EntitySet definition for the given EntitySet UUID with the given metadata.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

try:
    # Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
    api_response = api_instance.update_entity_set_meta_data(entity_set_id, metadata_update)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->update_entity_set_meta_data: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

try:
    # Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
    api_response = api_instance.update_entity_set_meta_data(entity_set_id, metadata_update)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->update_entity_set_meta_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_entity_set_property_metadata**
> update_entity_set_property_metadata(entity_set_id, property_type_id, metadata_update)

Updates the property type metadata for the given entity set.

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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
property_type_id = 'property_type_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

try:
    # Updates the property type metadata for the given entity set.
    api_instance.update_entity_set_property_metadata(entity_set_id, property_type_id, metadata_update)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->update_entity_set_property_metadata: %s\n" % e)
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
api_instance = openlattice.EntitySetsEdmApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
property_type_id = 'property_type_id_example' # str | 
metadata_update = openlattice.MetadataUpdate() # MetadataUpdate | 

try:
    # Updates the property type metadata for the given entity set.
    api_instance.update_entity_set_property_metadata(entity_set_id, property_type_id, metadata_update)
except ApiException as e:
    print("Exception when calling EntitySetsEdmApi->update_entity_set_property_metadata: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **property_type_id** | [**str**](.md)|  | 
 **metadata_update** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

