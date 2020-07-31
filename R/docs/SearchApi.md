# SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execute_advanced_entity_set_data_query**](SearchApi.md#execute_advanced_entity_set_data_query) | **POST** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_app_search**](SearchApi.md#execute_app_search) | **POST** /datastore/search/app | Executes a search over all apps to find ones that match the given search term
[**execute_app_type_search**](SearchApi.md#execute_app_type_search) | **POST** /datastore/search/app_types | Executes a search over all app types to find ones that match the given search term
[**execute_association_type_search**](SearchApi.md#execute_association_type_search) | **POST** /datastore/search/association_types | Executes a search over all association types to find ones that match the given search term
[**execute_entity_neighbor_search**](SearchApi.md#execute_entity_neighbor_search) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**execute_entity_neighbor_search_bulk**](SearchApi.md#execute_entity_neighbor_search_bulk) | **POST** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**execute_entity_set_collection_search**](SearchApi.md#execute_entity_set_collection_search) | **POST** /datastore/search/entity_sets/collections | Executes a search over all EntitySetCollections to find ones that match the given search term
[**execute_entity_set_data_query**](SearchApi.md#execute_entity_set_data_query) | **POST** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_entity_set_keyword_query**](SearchApi.md#execute_entity_set_keyword_query) | **POST** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
[**execute_entity_type_collection_search**](SearchApi.md#execute_entity_type_collection_search) | **POST** /datastore/search/entity_types/collections | Executes a search over all EntityTypeCollections to find ones that match the given search term
[**execute_entity_type_search**](SearchApi.md#execute_entity_type_search) | **POST** /datastore/search/entity_types | Executes a search over all entity types to find ones that match the given search term
[**execute_filtered_entity_neighbor_id_search**](SearchApi.md#execute_filtered_entity_neighbor_id_search) | **POST** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**execute_filtered_entity_neighbor_search**](SearchApi.md#execute_filtered_entity_neighbor_search) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**execute_fqn_property_type_search**](SearchApi.md#execute_fqn_property_type_search) | **POST** /datastore/search/property_types/fqn | Executes a search over all property types to find ones that match the given name and namespace, including partial matches
[**execute_organization_search**](SearchApi.md#execute_organization_search) | **POST** /datastore/search/organizations | Executes a search over all organizations to find ones that match the given search term
[**execute_property_type_search**](SearchApi.md#execute_property_type_search) | **POST** /datastore/search/property_types | Executes a search over all property types to find ones that match the given search term
[**get_entity_sets**](SearchApi.md#get_entity_sets) | **GET** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
[**get_popular_entity_set**](SearchApi.md#get_popular_entity_set) | **GET** /datastore/search/popular | Get the most popular entity sets.
[**search_entity_set_data**](SearchApi.md#search_entity_set_data) | **PATCH** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term


# **execute_advanced_entity_set_data_query**
> DataSearchResult execute_advanced_entity_set_data_query(entity_set_id, advanced_search)

Executes a search over the data of a given entity set to find rows that match the search term

### Example
```R
library(openlattice)

var.entity_set_id <- 'entity_set_id_example' # character | 
var.advanced_search <- AdvancedSearch$new(list(SearchDetails$new("searchTerm_example", "property_example", "exact_example")), 123, 123) # AdvancedSearch | 

#Executes a search over the data of a given entity set to find rows that match the search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_advanced_entity_set_data_query(var.entity_set_id, var.advanced_search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**character**](.md)|  | 
 **advanced_search** | [**AdvancedSearch**](AdvancedSearch.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A data search result object, containing the total number of hits for the given query, and the hits themselves |  -  |

# **execute_app_search**
> SearchResult execute_app_search(search_term)

Executes a search over all apps to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all apps to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_app_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_app_type_search**
> SearchResult execute_app_type_search(search_term)

Executes a search over all app types to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all app types to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_app_type_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_association_type_search**
> SearchResult execute_association_type_search(search_term)

Executes a search over all association types to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all association types to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_association_type_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_entity_neighbor_search**
> array[NeighborEntityDetails] execute_entity_neighbor_search(entity_set_id, entity_key_id)

Executes a search for all neighbors of an entity that are connected by an association

### Example
```R
library(openlattice)

var.entity_set_id <- 'entity_set_id_example' # character | 
var.entity_key_id <- 'entity_key_id_example' # character | 

#Executes a search for all neighbors of an entity that are connected by an association
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_entity_neighbor_search(var.entity_set_id, var.entity_key_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**character**](.md)|  | 
 **entity_key_id** | [**character**](.md)|  | 

### Return type

[**array[NeighborEntityDetails]**](NeighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of objects containing information about the neighbor and association. |  -  |

# **execute_entity_neighbor_search_bulk**
> list(array[NeighborEntityDetails]) execute_entity_neighbor_search_bulk(entity_set_id, request_body)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Example
```R
library(openlattice)

var.entity_set_id <- 'entity_set_id_example' # character | 
var.request_body <- list("property_example") # array[character] | 

#Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_entity_neighbor_search_bulk(var.entity_set_id, var.request_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**character**](.md)|  | 
 **request_body** | list( **character** )|  | 

### Return type

**list(array[NeighborEntityDetails])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of objects containing information about the neighbor and association. |  -  |

# **execute_entity_set_collection_search**
> SearchResult execute_entity_set_collection_search(search_term)

Executes a search over all EntitySetCollections to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all EntitySetCollections to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_entity_set_collection_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_entity_set_data_query**
> DataSearchResult execute_entity_set_data_query(entity_set_id, search_term)

Executes a search over the data of a given entity set to find rows that match the search term

### Example
```R
library(openlattice)

var.entity_set_id <- 'entity_set_id_example' # character | 
var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | A JSON object that contains three parameters, \"start\", which specifies the hit number to start returning results on for paging, \"maxHits\", which specifies the maximum number of hits to return, and \"searchTerm\", which is the search term results will match on.

#Executes a search over the data of a given entity set to find rows that match the search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_entity_set_data_query(var.entity_set_id, var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**character**](.md)|  | 
 **search_term** | [**SearchTerm**](SearchTerm.md)| A JSON object that contains three parameters, \&quot;start\&quot;, which specifies the hit number to start returning results on for paging, \&quot;maxHits\&quot;, which specifies the maximum number of hits to return, and \&quot;searchTerm\&quot;, which is the search term results will match on. | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A  data search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_entity_set_keyword_query**
> SearchResult execute_entity_set_keyword_query(search)

The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.

### Example
```R
library(openlattice)

var.search <- Search$new("keyword_example", "entityTypeId_example", list("propertyTypeIds_example"), 123, 123) # Search | 

#The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_entity_set_keyword_query(var.search)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | [**Search**](Search.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_entity_type_collection_search**
> SearchResult execute_entity_type_collection_search(search_term)

Executes a search over all EntityTypeCollections to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all EntityTypeCollections to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_entity_type_collection_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_entity_type_search**
> SearchResult execute_entity_type_search(search_term)

Executes a search over all entity types to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all entity types to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_entity_type_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_filtered_entity_neighbor_id_search**
> list(list(list(array[NeighborEntityIds]))) execute_filtered_entity_neighbor_id_search(entity_set_id, neighbor_search_filter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails

### Example
```R
library(openlattice)

var.entity_set_id <- 'entity_set_id_example' # character | 
var.neighbor_search_filter <- NeighborSearchFilter$new(list("entityKeyIds_example"), list("src_example"), list("dst_example"), list("edge_example")) # NeighborSearchFilter | 

#Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_filtered_entity_neighbor_id_search(var.entity_set_id, var.neighbor_search_filter)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**character**](.md)|  | 
 **neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**list(list(list(array[NeighborEntityIds])))**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of objects containing information about the neighbor and association. |  -  |

# **execute_filtered_entity_neighbor_search**
> list(array[NeighborEntityDetails]) execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Example
```R
library(openlattice)

var.entity_set_id <- 'entity_set_id_example' # character | 
var.neighbor_search_filter <- NeighborSearchFilter$new(list("entityKeyIds_example"), list("src_example"), list("dst_example"), list("edge_example")) # NeighborSearchFilter | 

#Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_filtered_entity_neighbor_search(var.entity_set_id, var.neighbor_search_filter)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_set_id** | [**character**](.md)|  | 
 **neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

**list(array[NeighborEntityDetails])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A list of objects containing information about the neighbor and association. |  -  |

# **execute_fqn_property_type_search**
> SearchResult execute_fqn_property_type_search(search_term)

Executes a search over all property types to find ones that match the given name and namespace, including partial matches

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all property types to find ones that match the given name and namespace, including partial matches
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_fqn_property_type_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_organization_search**
> SearchResult execute_organization_search(search_term)

Executes a search over all organizations to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all organizations to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_organization_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **execute_property_type_search**
> SearchResult execute_property_type_search(search_term)

Executes a search over all property types to find ones that match the given search term

### Example
```R
library(openlattice)

var.search_term <- SearchTerm$new("searchTerm_example", 123, 123, "fuzzy_example") # SearchTerm | 

#Executes a search over all property types to find ones that match the given search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$execute_property_type_search(var.search_term)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_term** | [**SearchTerm**](SearchTerm.md)|  | 

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **get_entity_sets**
> array[SearchResult] get_entity_sets(start, num_results)

Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.

### Example
```R
library(openlattice)

var.start <- 56 # integer | The first result number to return
var.num_results <- 56 # integer | The total number of results to return

#Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_sets(var.start, var.num_results)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **integer**| The first result number to return | 
 **num_results** | **integer**| The total number of results to return | 

### Return type

[**array[SearchResult]**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_popular_entity_set**
> array[EntitySet] get_popular_entity_set()

Get the most popular entity sets.

### Example
```R
library(openlattice)


#Get the most popular entity sets.
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_popular_entity_set()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EntitySet]**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A  data search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

# **search_entity_set_data**
> DataSearchResult search_entity_set_data(search_constraints)

Executes a search over the data of a given entity set to find rows that match the search term

### Example
```R
library(openlattice)

var.search_constraints <- SearchConstraints$new(list("entitySetIds_example"), 123, 123, list(ConstraintGroup$new(123, list(Constraint$new("type_example", "searchTerm_example", "fuzzy_example", list(SearchDetails$new("searchTerm_example", "property_example", "exact_example")), "propertyTypeId_example", 123, 123, 123, "unit_example", list(list(list(123))), "start_example", "end_example")))), SortDefinition$new("type_example", "descending_example", "propertyTypeId_example", 123, 123)) # SearchConstraints | 

#Executes a search over the data of a given entity set to find rows that match the search term
api.instance <- SearchApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$search_entity_set_data(var.search_constraints)
dput(result)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A  data search result object, containing the total number of hits for the given query, and the hits themselves. |  -  |

