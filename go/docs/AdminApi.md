# \AdminApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ClearIndexingQueue**](AdminApi.md#ClearIndexingQueue) | **Delete** /indexer/index/reindex | Clears all the data currently being indexed in the queue.
[**GetIndexingState**](AdminApi.md#GetIndexingState) | **Get** /indexer/index/reindex | Retrieve the current state of reindexing jobs
[**Reindex**](AdminApi.md#Reindex) | **Post** /indexer/index/reindex | Merge job descriptions for performing a partial or full reindex of provided entity sets.
[**UpdateReindex**](AdminApi.md#UpdateReindex) | **Put** /indexer/index/reindex | Replaces job descriptions for performing a partial or full reindex of provided entity sets.



## ClearIndexingQueue

> int32 ClearIndexingQueue(ctx, )

Clears all the data currently being indexed in the queue.

### Required Parameters

This endpoint does not need any parameter.

### Return type

**int32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetIndexingState

> IndexingState GetIndexingState(ctx, )

Retrieve the current state of reindexing jobs

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## Reindex

> IndexingState Reindex(ctx, requestBody)

Merge job descriptions for performing a partial or full reindex of provided entity sets.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**requestBody** | [**map[string][]string**](array.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateReindex

> IndexingState UpdateReindex(ctx, requestBody)

Replaces job descriptions for performing a partial or full reindex of provided entity sets.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**requestBody** | [**map[string][]string**](array.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. | 

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

