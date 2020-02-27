# \SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execute_advanced_entity_set_data_query**](SearchApi.md#execute_advanced_entity_set_data_query) | **Post** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_entity_neighbor_search**](SearchApi.md#execute_entity_neighbor_search) | **Get** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**execute_entity_neighbor_search_bulk**](SearchApi.md#execute_entity_neighbor_search_bulk) | **Post** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**execute_entity_set_data_query**](SearchApi.md#execute_entity_set_data_query) | **Post** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**execute_entity_set_keyword_query**](SearchApi.md#execute_entity_set_keyword_query) | **Post** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
[**execute_filtered_entity_neighbor_id_search**](SearchApi.md#execute_filtered_entity_neighbor_id_search) | **Post** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**execute_filtered_entity_neighbor_search**](SearchApi.md#execute_filtered_entity_neighbor_search) | **Post** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**get_entity_sets**](SearchApi.md#get_entity_sets) | **Get** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
[**get_popular_entity_set**](SearchApi.md#get_popular_entity_set) | **Get** /datastore/search/popular | Get the most popular entity sets.
[**search_entity_set_data**](SearchApi.md#search_entity_set_data) | **Patch** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term



## execute_advanced_entity_set_data_query

> crate::models::DataSearchResult execute_advanced_entity_set_data_query(entity_set_id, advanced_search)
Executes a search over the data of a given entity set to find rows that match the search term

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**advanced_search** | [**AdvancedSearch**](AdvancedSearch.md) |  | [required] |

### Return type

[**crate::models::DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## execute_entity_neighbor_search

> Vec<crate::models::NeighborEntityDetails> execute_entity_neighbor_search(entity_set_id, entity_key_id)
Executes a search for all neighbors of an entity that are connected by an association

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**entity_key_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<crate::models::NeighborEntityDetails>**](NeighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## execute_entity_neighbor_search_bulk

> ::std::collections::HashMap<String, Vec<crate::models::NeighborEntityDetails>> execute_entity_neighbor_search_bulk(entity_set_id, request_body)
Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**request_body** | [**Vec<String>**](String.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, Vec<crate::models::NeighborEntityDetails>>**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## execute_entity_set_data_query

> crate::models::DataSearchResult execute_entity_set_data_query(entity_set_id, search_term)
Executes a search over the data of a given entity set to find rows that match the search term

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**search_term** | [**SearchTerm**](SearchTerm.md) | A JSON object that contains three parameters, \"start\", which specifies the hit number to start returning results on for paging, \"maxHits\", which specifies the maximum number of hits to return, and \"searchTerm\", which is the search term results will match on. | [required] |

### Return type

[**crate::models::DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## execute_entity_set_keyword_query

> ::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<crate::models::NeighborEntityIds>>>> execute_entity_set_keyword_query(search)
The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**search** | [**Search**](Search.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<crate::models::NeighborEntityIds>>>>**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## execute_filtered_entity_neighbor_id_search

> ::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<crate::models::NeighborEntityIds>>>> execute_filtered_entity_neighbor_id_search(entity_set_id, neighbor_search_filter)
Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<crate::models::NeighborEntityIds>>>>**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## execute_filtered_entity_neighbor_search

> ::std::collections::HashMap<String, Vec<crate::models::NeighborEntityDetails>> execute_filtered_entity_neighbor_search(entity_set_id, neighbor_search_filter)
Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**neighbor_search_filter** | [**NeighborSearchFilter**](NeighborSearchFilter.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, Vec<crate::models::NeighborEntityDetails>>**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_sets

> Vec<crate::models::SearchResult> get_entity_sets(start, num_results)
Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**start** | **i32** | The first result number to return | [required] |
**num_results** | **i32** | The total number of results to return | [required] |

### Return type

[**Vec<crate::models::SearchResult>**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_popular_entity_set

> Vec<crate::models::EntitySet> get_popular_entity_set()
Get the most popular entity sets.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::EntitySet>**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## search_entity_set_data

> crate::models::DataSearchResult search_entity_set_data(search_constraints)
Executes a search over the data of a given entity set to find rows that match the search term

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**search_constraints** | [**SearchConstraints**](SearchConstraints.md) |  | [required] |

### Return type

[**crate::models::DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

