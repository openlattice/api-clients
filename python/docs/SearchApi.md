# openlattice.SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execute_advanced_entity_set_data_query**](SearchApi.md#execute_advanced_entity_set_data_query) | **POST** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_entity_neighbor_search**](SearchApi.md#execute_entity_neighbor_search) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**execute_entity_neighbor_search_bulk**](SearchApi.md#execute_entity_neighbor_search_bulk) | **POST** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**execute_entity_set_data_query**](SearchApi.md#execute_entity_set_data_query) | **POST** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_entity_set_keyword_query**](SearchApi.md#execute_entity_set_keyword_query) | **POST** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
[**execute_filtered_entity_neighbor_id_search**](SearchApi.md#execute_filtered_entity_neighbor_id_search) | **POST** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**execute_filtered_entity_neighbor_search**](SearchApi.md#execute_filtered_entity_neighbor_search) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**get_entity_sets**](SearchApi.md#get_entity_sets) | **GET** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
[**get_popular_entity_set**](SearchApi.md#get_popular_entity_set) | **GET** /datastore/search/popular | Get the most popular entity sets.
[**search_entity_set_data**](SearchApi.md#search_entity_set_data) | **PATCH** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term


# **execute_advanced_entity_set_data_query**
> DataSearchResult execute_advanced_entity_set_data_query(entity_set_id, advanced_search)

Executes a search over the data of a given entity set to find rows that match the search term

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
advanced_search = openlattice.AdvancedSearch() # AdvancedSearch | 

try:
    # Executes a search over the data of a given entity set to find rows that match the search term
    api_response = api_instance.execute_advanced_entity_set_data_query(entity_set_id, advanced_search)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_advanced_entity_set_data_query: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
advanced_search = openlattice.AdvancedSearch() # AdvancedSearch | 

try:
    # Executes a search over the data of a given entity set to find rows that match the search term
    api_response = api_instance.execute_advanced_entity_set_data_query(entity_set_id, advanced_search)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_advanced_entity_set_data_query: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **advanced_search** | [**AdvancedSearch**](AdvancedSearch.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execute_entity_neighbor_search**
> list[NeighborEntityDetails] execute_entity_neighbor_search(entity_set_id, entity_key_id)

Executes a search for all neighbors of an entity that are connected by an association

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 

try:
    # Executes a search for all neighbors of an entity that are connected by an association
    api_response = api_instance.execute_entity_neighbor_search(entity_set_id, entity_key_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_neighbor_search: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
entity_key_id = 'entity_key_id_example' # str | 

try:
    # Executes a search for all neighbors of an entity that are connected by an association
    api_response = api_instance.execute_entity_neighbor_search(entity_set_id, entity_key_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_neighbor_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **entity_key_id** | [**str**](.md)|  | 

### Return type

[**list[NeighborEntityDetails]**](NeighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execute_entity_neighbor_search_bulk**
> dict(str, list[NeighborEntityDetails]) execute_entity_neighbor_search_bulk(entity_set_id, request_body)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
request_body = NULL # list[str] | 

try:
    # Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
    api_response = api_instance.execute_entity_neighbor_search_bulk(entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_neighbor_search_bulk: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
request_body = NULL # list[str] | 

try:
    # Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
    api_response = api_instance.execute_entity_neighbor_search_bulk(entity_set_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_neighbor_search_bulk: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **request_body** | [**list[str]**](list.md)|  | 

### Return type

**dict(str, list[NeighborEntityDetails])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execute_entity_set_data_query**
> DataSearchResult execute_entity_set_data_query(entity_set_id, search_term)

Executes a search over the data of a given entity set to find rows that match the search term

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
search_term = openlattice.SearchTerm() # SearchTerm | A JSON object that contains three parameters, \"start\", which specifies the hit number to start returning results on for paging, \"maxHits\", which specifies the maximum number of hits to return, and \"searchTerm\", which is the search term results will match on.

try:
    # Executes a search over the data of a given entity set to find rows that match the search term
    api_response = api_instance.execute_entity_set_data_query(entity_set_id, search_term)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_set_data_query: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
search_term = openlattice.SearchTerm() # SearchTerm | A JSON object that contains three parameters, \"start\", which specifies the hit number to start returning results on for paging, \"maxHits\", which specifies the maximum number of hits to return, and \"searchTerm\", which is the search term results will match on.

try:
    # Executes a search over the data of a given entity set to find rows that match the search term
    api_response = api_instance.execute_entity_set_data_query(entity_set_id, search_term)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_set_data_query: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **search_term** | [**SearchTerm**](SearchTerm.md)| A JSON object that contains three parameters, \&quot;start\&quot;, which specifies the hit number to start returning results on for paging, \&quot;maxHits\&quot;, which specifies the maximum number of hits to return, and \&quot;searchTerm\&quot;, which is the search term results will match on. | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execute_entity_set_keyword_query**
> dict(str, dict(str, dict(str, list[NeighborEntityIds]))) execute_entity_set_keyword_query(search)

The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
search = openlattice.Search() # Search | 

try:
    # The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
    api_response = api_instance.execute_entity_set_keyword_query(search)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_set_keyword_query: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
search = openlattice.Search() # Search | 

try:
    # The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
    api_response = api_instance.execute_entity_set_keyword_query(search)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_entity_set_keyword_query: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**Search**](Search.md)|  | 

### Return type

**dict(str, dict(str, dict(str, list[NeighborEntityIds])))**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execute_filtered_entity_neighbor_id_search**
> dict(str, dict(str, dict(str, list[NeighborEntityIds]))) execute_filtered_entity_neighbor_id_search(entity_set_id, neighbor_search_filter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
neighbor_search_filter = openlattice.NeighborSearchFilter() # NeighborSearchFilter | 

try:
    # Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
    api_response = api_instance.execute_filtered_entity_neighbor_id_search(entity_set_id, neighbor_search_filter)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_filtered_entity_neighbor_id_search: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
neighbor_search_filter = openlattice.NeighborSearchFilter() # NeighborSearchFilter | 

try:
    # Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
    api_response = api_instance.execute_filtered_entity_neighbor_id_search(entity_set_id, neighbor_search_filter)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_filtered_entity_neighbor_id_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**dict(str, dict(str, dict(str, list[NeighborEntityIds])))**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execute_filtered_entity_neighbor_search**
> dict(str, list[NeighborEntityDetails]) execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
neighbor_search_filter = openlattice.NeighborSearchFilter() # NeighborSearchFilter | 

try:
    # Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
    api_response = api_instance.execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_filtered_entity_neighbor_search: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
entity_set_id = 'entity_set_id_example' # str | 
neighbor_search_filter = openlattice.NeighborSearchFilter() # NeighborSearchFilter | 

try:
    # Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
    api_response = api_instance.execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->execute_filtered_entity_neighbor_search: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**str**](.md)|  | 
 **neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**dict(str, list[NeighborEntityDetails])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_sets**
> list[SearchResult] get_entity_sets(start, num_results)

Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
start = 56 # int | The first result number to return
num_results = 56 # int | The total number of results to return

try:
    # Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
    api_response = api_instance.get_entity_sets(start, num_results)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->get_entity_sets: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
start = 56 # int | The first result number to return
num_results = 56 # int | The total number of results to return

try:
    # Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
    api_response = api_instance.get_entity_sets(start, num_results)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->get_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **int**| The first result number to return | 
 **num_results** | **int**| The total number of results to return | 

### Return type

[**list[SearchResult]**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_popular_entity_set**
> list[EntitySet] get_popular_entity_set()

Get the most popular entity sets.

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))

try:
    # Get the most popular entity sets.
    api_response = api_instance.get_popular_entity_set()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->get_popular_entity_set: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))

try:
    # Get the most popular entity sets.
    api_response = api_instance.get_popular_entity_set()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->get_popular_entity_set: %s\n" % e)
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

# **search_entity_set_data**
> DataSearchResult search_entity_set_data(search_constraints)

Executes a search over the data of a given entity set to find rows that match the search term

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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
search_constraints = openlattice.SearchConstraints() # SearchConstraints | 

try:
    # Executes a search over the data of a given entity set to find rows that match the search term
    api_response = api_instance.search_entity_set_data(search_constraints)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->search_entity_set_data: %s\n" % e)
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
api_instance = openlattice.SearchApi(openlattice.ApiClient(configuration))
search_constraints = openlattice.SearchConstraints() # SearchConstraints | 

try:
    # Executes a search over the data of a given entity set to find rows that match the search term
    api_response = api_instance.search_entity_set_data(search_constraints)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SearchApi->search_entity_set_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_constraints** | [**SearchConstraints**](SearchConstraints.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

