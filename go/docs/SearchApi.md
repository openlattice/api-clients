# \SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ExecuteAdvancedEntitySetDataQuery**](SearchApi.md#ExecuteAdvancedEntitySetDataQuery) | **Post** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**ExecuteEntityNeighborSearch**](SearchApi.md#ExecuteEntityNeighborSearch) | **Get** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**ExecuteEntityNeighborSearchBulk**](SearchApi.md#ExecuteEntityNeighborSearchBulk) | **Post** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**ExecuteEntitySetDataQuery**](SearchApi.md#ExecuteEntitySetDataQuery) | **Post** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**ExecuteEntitySetKeywordQuery**](SearchApi.md#ExecuteEntitySetKeywordQuery) | **Post** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
[**ExecuteFilteredEntityNeighborIdSearch**](SearchApi.md#ExecuteFilteredEntityNeighborIdSearch) | **Post** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**ExecuteFilteredEntityNeighborSearch**](SearchApi.md#ExecuteFilteredEntityNeighborSearch) | **Post** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**GetEntitySets**](SearchApi.md#GetEntitySets) | **Get** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
[**GetPopularEntitySet**](SearchApi.md#GetPopularEntitySet) | **Get** /datastore/search/popular | Get the most popular entity sets.
[**SearchEntitySetData**](SearchApi.md#SearchEntitySetData) | **Patch** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term



## ExecuteAdvancedEntitySetDataQuery

> DataSearchResult ExecuteAdvancedEntitySetDataQuery(ctx, entitySetId, advancedSearch)

Executes a search over the data of a given entity set to find rows that match the search term

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**advancedSearch** | [**AdvancedSearch**](AdvancedSearch.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExecuteEntityNeighborSearch

> []NeighborEntityDetails ExecuteEntityNeighborSearch(ctx, entitySetId, entityKeyId)

Executes a search for all neighbors of an entity that are connected by an association

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**entityKeyId** | [**string**](.md)|  | 

### Return type

[**[]NeighborEntityDetails**](NeighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExecuteEntityNeighborSearchBulk

> map[string][]NeighborEntityDetails ExecuteEntityNeighborSearchBulk(ctx, entitySetId, requestBody)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**requestBody** | [**[]string**](string.md)|  | 

### Return type

[**map[string][]NeighborEntityDetails**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExecuteEntitySetDataQuery

> DataSearchResult ExecuteEntitySetDataQuery(ctx, entitySetId, searchTerm)

Executes a search over the data of a given entity set to find rows that match the search term

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**searchTerm** | [**SearchTerm**](SearchTerm.md)| A JSON object that contains three parameters, \&quot;start\&quot;, which specifies the hit number to start returning results on for paging, \&quot;maxHits\&quot;, which specifies the maximum number of hits to return, and \&quot;searchTerm\&quot;, which is the search term results will match on. | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExecuteEntitySetKeywordQuery

> map[string]map[string]map[string][]NeighborEntityIds ExecuteEntitySetKeywordQuery(ctx, search)

The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**search** | [**Search**](Search.md)|  | 

### Return type

[**map[string]map[string]map[string][]NeighborEntityIds**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExecuteFilteredEntityNeighborIdSearch

> map[string]map[string]map[string][]NeighborEntityIds ExecuteFilteredEntityNeighborIdSearch(ctx, entitySetId, neighborSearchFilter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**neighborSearchFilter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

[**map[string]map[string]map[string][]NeighborEntityIds**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ExecuteFilteredEntityNeighborSearch

> map[string][]NeighborEntityDetails ExecuteFilteredEntityNeighborSearch(ctx, entitySetId, neighborSearchFilter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**neighborSearchFilter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  | 

### Return type

[**map[string][]NeighborEntityDetails**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySets

> []SearchResult GetEntitySets(ctx, start, numResults)

Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**start** | **int32**| The first result number to return | 
**numResults** | **int32**| The total number of results to return | 

### Return type

[**[]SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPopularEntitySet

> []EntitySet GetPopularEntitySet(ctx, )

Get the most popular entity sets.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SearchEntitySetData

> DataSearchResult SearchEntitySetData(ctx, searchConstraints)

Executes a search over the data of a given entity set to find rows that match the search term

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**searchConstraints** | [**SearchConstraints**](SearchConstraints.md)|  | 

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

