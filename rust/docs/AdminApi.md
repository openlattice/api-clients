# \AdminApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clear_indexing_queue**](AdminApi.md#clear_indexing_queue) | **Delete** /indexer/index/reindex | Clears all the data currently being indexed in the queue.
[**get_indexing_state**](AdminApi.md#get_indexing_state) | **Get** /indexer/index/reindex | Retrieve the current state of reindexing jobs
[**reindex**](AdminApi.md#reindex) | **Post** /indexer/index/reindex | Merge job descriptions for performing a partial or full reindex of provided entity sets.
[**update_reindex**](AdminApi.md#update_reindex) | **Put** /indexer/index/reindex | Replaces job descriptions for performing a partial or full reindex of provided entity sets.



## clear_indexing_queue

> i32 clear_indexing_queue()
Clears all the data currently being indexed in the queue.

### Parameters

This endpoint does not need any parameter.

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_indexing_state

> crate::models::IndexingState get_indexing_state()
Retrieve the current state of reindexing jobs

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## reindex

> crate::models::IndexingState reindex(request_body)
Merge job descriptions for performing a partial or full reindex of provided entity sets.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**request_body** | [**::std::collections::HashMap<String, Vec<String>>**](array.md) | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | [required] |

### Return type

[**crate::models::IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_reindex

> crate::models::IndexingState update_reindex(request_body)
Replaces job descriptions for performing a partial or full reindex of provided entity sets.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**request_body** | [**::std::collections::HashMap<String, Vec<String>>**](array.md) | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | [required] |

### Return type

[**crate::models::IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

