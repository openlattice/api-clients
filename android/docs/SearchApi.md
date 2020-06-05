# SearchApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**executeAdvancedEntitySetDataQuery**](SearchApi.md#executeAdvancedEntitySetDataQuery) | **POST** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**executeAppSearch**](SearchApi.md#executeAppSearch) | **POST** /datastore/search/app | Executes a search over all apps to find ones that match the given search term
[**executeAppTypeSearch**](SearchApi.md#executeAppTypeSearch) | **POST** /datastore/search/app_types | Executes a search over all app types to find ones that match the given search term
[**executeAssociationTypeSearch**](SearchApi.md#executeAssociationTypeSearch) | **POST** /datastore/search/association_types | Executes a search over all association types to find ones that match the given search term
[**executeEntityNeighborSearch**](SearchApi.md#executeEntityNeighborSearch) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
[**executeEntityNeighborSearchBulk**](SearchApi.md#executeEntityNeighborSearchBulk) | **POST** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**executeEntitySetCollectionSearch**](SearchApi.md#executeEntitySetCollectionSearch) | **POST** /datastore/search/entity_sets/collections | Executes a search over all EntitySetCollections to find ones that match the given search term
[**executeEntitySetDataQuery**](SearchApi.md#executeEntitySetDataQuery) | **POST** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
[**executeEntitySetKeywordQuery**](SearchApi.md#executeEntitySetKeywordQuery) | **POST** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
[**executeEntityTypeCollectionSearch**](SearchApi.md#executeEntityTypeCollectionSearch) | **POST** /datastore/search/entity_types/collections | Executes a search over all EntityTypeCollections to find ones that match the given search term
[**executeEntityTypeSearch**](SearchApi.md#executeEntityTypeSearch) | **POST** /datastore/search/entity_types | Executes a search over all entity types to find ones that match the given search term
[**executeFQNPropertyTypeSearch**](SearchApi.md#executeFQNPropertyTypeSearch) | **POST** /datastore/search/property_types/fqn | Executes a search over all property types to find ones that match the given name and namespace, including partial matches
[**executeFilteredEntityNeighborIdSearch**](SearchApi.md#executeFilteredEntityNeighborIdSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
[**executeFilteredEntityNeighborSearch**](SearchApi.md#executeFilteredEntityNeighborSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
[**executeOrganizationSearch**](SearchApi.md#executeOrganizationSearch) | **POST** /datastore/search/organizations | Executes a search over all organizations to find ones that match the given search term
[**executePropertyTypeSearch**](SearchApi.md#executePropertyTypeSearch) | **POST** /datastore/search/property_types | Executes a search over all property types to find ones that match the given search term
[**getEntitySets**](SearchApi.md#getEntitySets) | **GET** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
[**getPopularEntitySet**](SearchApi.md#getPopularEntitySet) | **GET** /datastore/search/popular | Get the most popular entity sets.
[**searchEntitySetData**](SearchApi.md#searchEntitySetData) | **PATCH** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term



## executeAdvancedEntitySetDataQuery

> DataSearchResult executeAdvancedEntitySetDataQuery(entitySetId, advancedSearch)

Executes a search over the data of a given entity set to find rows that match the search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
UUID entitySetId = null; // UUID | 
AdvancedSearch advancedSearch = new AdvancedSearch(); // AdvancedSearch | 
try {
    DataSearchResult result = apiInstance.executeAdvancedEntitySetDataQuery(entitySetId, advancedSearch);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeAdvancedEntitySetDataQuery");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **advancedSearch** | [**AdvancedSearch**](AdvancedSearch.md)|  |

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeAppSearch

> SearchResult executeAppSearch(searchTerm)

Executes a search over all apps to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeAppSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeAppSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeAppTypeSearch

> SearchResult executeAppTypeSearch(searchTerm)

Executes a search over all app types to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeAppTypeSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeAppTypeSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeAssociationTypeSearch

> SearchResult executeAssociationTypeSearch(searchTerm)

Executes a search over all association types to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeAssociationTypeSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeAssociationTypeSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntityNeighborSearch

> List&lt;NeighborEntityDetails&gt; executeEntityNeighborSearch(entitySetId, entityKeyId)

Executes a search for all neighbors of an entity that are connected by an association

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
UUID entitySetId = null; // UUID | 
UUID entityKeyId = null; // UUID | 
try {
    List<NeighborEntityDetails> result = apiInstance.executeEntityNeighborSearch(entitySetId, entityKeyId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeEntityNeighborSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **entityKeyId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;NeighborEntityDetails&gt;**](NeighborEntityDetails.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## executeEntityNeighborSearchBulk

> Map&lt;String, List&lt;NeighborEntityDetails&gt;&gt; executeEntityNeighborSearchBulk(entitySetId, UUID)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
UUID entitySetId = null; // UUID | 
List<UUID> UUID = Arrays.asList(new UUID()); // List<UUID> | 
try {
    Map<String, List<NeighborEntityDetails>> result = apiInstance.executeEntityNeighborSearchBulk(entitySetId, UUID);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeEntityNeighborSearchBulk");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **UUID** | [**List&lt;UUID&gt;**](UUID.md)|  |

### Return type

[**Map&lt;String, List&lt;NeighborEntityDetails&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntitySetCollectionSearch

> SearchResult executeEntitySetCollectionSearch(searchTerm)

Executes a search over all EntitySetCollections to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeEntitySetCollectionSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeEntitySetCollectionSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntitySetDataQuery

> DataSearchResult executeEntitySetDataQuery(entitySetId, searchTerm)

Executes a search over the data of a given entity set to find rows that match the search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
UUID entitySetId = null; // UUID | 
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | A JSON object that contains three parameters, \"start\", which specifies the hit number to start returning results on for paging, \"maxHits\", which specifies the maximum number of hits to return, and \"searchTerm\", which is the search term results will match on.
try {
    DataSearchResult result = apiInstance.executeEntitySetDataQuery(entitySetId, searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeEntitySetDataQuery");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **searchTerm** | [**SearchTerm**](SearchTerm.md)| A JSON object that contains three parameters, \&quot;start\&quot;, which specifies the hit number to start returning results on for paging, \&quot;maxHits\&quot;, which specifies the maximum number of hits to return, and \&quot;searchTerm\&quot;, which is the search term results will match on. |

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntitySetKeywordQuery

> SearchResult executeEntitySetKeywordQuery(search)

The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
Search search = new Search(); // Search | 
try {
    SearchResult result = apiInstance.executeEntitySetKeywordQuery(search);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeEntitySetKeywordQuery");
    e.printStackTrace();
}
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


## executeEntityTypeCollectionSearch

> SearchResult executeEntityTypeCollectionSearch(searchTerm)

Executes a search over all EntityTypeCollections to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeEntityTypeCollectionSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeEntityTypeCollectionSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeEntityTypeSearch

> SearchResult executeEntityTypeSearch(searchTerm)

Executes a search over all entity types to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeEntityTypeSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeEntityTypeSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeFQNPropertyTypeSearch

> SearchResult executeFQNPropertyTypeSearch(searchTerm)

Executes a search over all property types to find ones that match the given name and namespace, including partial matches

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeFQNPropertyTypeSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeFQNPropertyTypeSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeFilteredEntityNeighborIdSearch

> Map&lt;String, Map&lt;String, Map&lt;String, List&lt;NeighborEntityIds&gt;&gt;&gt;&gt; executeFilteredEntityNeighborIdSearch(entitySetId, neighborSearchFilter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
UUID entitySetId = null; // UUID | 
NeighborSearchFilter neighborSearchFilter = new NeighborSearchFilter(); // NeighborSearchFilter | 
try {
    Map<String, Map<String, Map<String, List<NeighborEntityIds>>>> result = apiInstance.executeFilteredEntityNeighborIdSearch(entitySetId, neighborSearchFilter);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeFilteredEntityNeighborIdSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **neighborSearchFilter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  |

### Return type

[**Map&lt;String, Map&lt;String, Map&lt;String, List&lt;NeighborEntityIds&gt;&gt;&gt;&gt;**](Map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeFilteredEntityNeighborSearch

> Map&lt;String, List&lt;NeighborEntityDetails&gt;&gt; executeFilteredEntityNeighborSearch(entitySetId, neighborSearchFilter)

Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
UUID entitySetId = null; // UUID | 
NeighborSearchFilter neighborSearchFilter = new NeighborSearchFilter(); // NeighborSearchFilter | 
try {
    Map<String, List<NeighborEntityDetails>> result = apiInstance.executeFilteredEntityNeighborSearch(entitySetId, neighborSearchFilter);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeFilteredEntityNeighborSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **neighborSearchFilter** | [**NeighborSearchFilter**](NeighborSearchFilter.md)|  |

### Return type

[**Map&lt;String, List&lt;NeighborEntityDetails&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executeOrganizationSearch

> SearchResult executeOrganizationSearch(searchTerm)

Executes a search over all organizations to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executeOrganizationSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executeOrganizationSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## executePropertyTypeSearch

> SearchResult executePropertyTypeSearch(searchTerm)

Executes a search over all property types to find ones that match the given search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchTerm searchTerm = new SearchTerm(); // SearchTerm | 
try {
    SearchResult result = apiInstance.executePropertyTypeSearch(searchTerm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#executePropertyTypeSearch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchTerm** | [**SearchTerm**](SearchTerm.md)|  |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getEntitySets

> List&lt;SearchResult&gt; getEntitySets(start, numResults)

Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
Integer start = null; // Integer | The first result number to return
Integer numResults = null; // Integer | The total number of results to return
try {
    List<SearchResult> result = apiInstance.getEntitySets(start, numResults);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#getEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| The first result number to return | [default to null]
 **numResults** | **Integer**| The total number of results to return | [default to null]

### Return type

[**List&lt;SearchResult&gt;**](SearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPopularEntitySet

> List&lt;EntitySet&gt; getPopularEntitySet()

Get the most popular entity sets.

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
try {
    List<EntitySet> result = apiInstance.getPopularEntitySet();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#getPopularEntitySet");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;EntitySet&gt;**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchEntitySetData

> DataSearchResult searchEntitySetData(searchConstraints)

Executes a search over the data of a given entity set to find rows that match the search term

### Example

```java
// Import classes:
//import org.openapitools.client.api.SearchApi;

SearchApi apiInstance = new SearchApi();
SearchConstraints searchConstraints = new SearchConstraints(); // SearchConstraints | 
try {
    DataSearchResult result = apiInstance.searchEntitySetData(searchConstraints);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SearchApi#searchEntitySetData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchConstraints** | [**SearchConstraints**](SearchConstraints.md)|  |

### Return type

[**DataSearchResult**](DataSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

