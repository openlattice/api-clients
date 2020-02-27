# AdminApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearIndexingQueue**](AdminApi.md#clearIndexingQueue) | **DELETE** /indexer/index/reindex | Clears all the data currently being indexed in the queue.
[**getIndexingState**](AdminApi.md#getIndexingState) | **GET** /indexer/index/reindex | Retrieve the current state of reindexing jobs
[**reindex**](AdminApi.md#reindex) | **POST** /indexer/index/reindex | Merge job descriptions for performing a partial or full reindex of provided entity sets.
[**updateReindex**](AdminApi.md#updateReindex) | **PUT** /indexer/index/reindex | Replaces job descriptions for performing a partial or full reindex of provided entity sets.



## clearIndexingQueue

> Integer clearIndexingQueue()

Clears all the data currently being indexed in the queue.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AdminApi;

AdminApi apiInstance = new AdminApi();
try {
    Integer result = apiInstance.clearIndexingQueue();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AdminApi#clearIndexingQueue");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getIndexingState

> IndexingState getIndexingState()

Retrieve the current state of reindexing jobs

### Example

```java
// Import classes:
//import org.openapitools.client.api.AdminApi;

AdminApi apiInstance = new AdminApi();
try {
    IndexingState result = apiInstance.getIndexingState();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AdminApi#getIndexingState");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reindex

> IndexingState reindex(requestBody)

Merge job descriptions for performing a partial or full reindex of provided entity sets.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AdminApi;

AdminApi apiInstance = new AdminApi();
Map<String, List<UUID>> requestBody = new HashMap(); // Map<String, List<UUID>> | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.
try {
    IndexingState result = apiInstance.reindex(requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AdminApi#reindex");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map&lt;String, List&lt;UUID&gt;&gt;**](List.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. |

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updateReindex

> IndexingState updateReindex(requestBody)

Replaces job descriptions for performing a partial or full reindex of provided entity sets.

### Example

```java
// Import classes:
//import org.openapitools.client.api.AdminApi;

AdminApi apiInstance = new AdminApi();
Map<String, List<UUID>> requestBody = new HashMap(); // Map<String, List<UUID>> | A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing.
try {
    IndexingState result = apiInstance.updateReindex(requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AdminApi#updateReindex");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**Map&lt;String, List&lt;UUID&gt;&gt;**](List.md)| A map of entity set ids to entity key ids that determines what will be reindexed. If no entity key ids are provided then all entities in an entity set are reindexed. If no entity set ids are provided then all entity sets are scheduled for reindexing. |

### Return type

[**IndexingState**](IndexingState.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

