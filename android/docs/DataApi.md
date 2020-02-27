# DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAssociations**](DataApi.md#createAssociations) | **POST** /datastore/data/association | Creates a new set of associations.
[**createEdges**](DataApi.md#createEdges) | **PUT** /datastore/data/association | Creates a new set of associations.
[**createEntities**](DataApi.md#createEntities) | **POST** /datastore/data/set/ | Creates a new set of entities.
[**createEntityAndAssociationData**](DataApi.md#createEntityAndAssociationData) | **POST** /datastore/data | Creates entities and assocations
[**deleteAllEntitiesFromEntitySet**](DataApi.md#deleteAllEntitiesFromEntitySet) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**deleteEntities**](DataApi.md#deleteEntities) | **DELETE** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
[**deleteEntitiesAndNeighbors**](DataApi.md#deleteEntitiesAndNeighbors) | **POST** /datastore/data/set/{entitySetId}/neighbors | Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
[**deleteEntity**](DataApi.md#deleteEntity) | **DELETE** /datastore/data/{entitySetId}/{entityKeyId} | Deletes a single entity from an entity set.
[**deleteEntityProperties**](DataApi.md#deleteEntityProperties) | **DELETE** /datastore/data/{entitySetId}/{entityKeyId}/properties | Deletes properties from an entity.
[**getEntity**](DataApi.md#getEntity) | **GET** /datastore/data/{entitySetId}/{entityKeyId} | Loads a single entity by its entityKeyId and entitySetId
[**getEntityPropertyValues**](DataApi.md#getEntityPropertyValues) | **GET** /datastore/data/{entitySetId}/{entityKeyId}/{propertyTypeId} | Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
[**getEntitySetSize**](DataApi.md#getEntitySetSize) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**loadEntitySetData**](DataApi.md#loadEntitySetData) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**loadLinkedEntitySetBreakdown**](DataApi.md#loadLinkedEntitySetBreakdown) | **POST** /datastore/data/set/{linkedEntitySetId}/detailed | Loads a linked entity set breakdown with the selected linked entities and properties.
[**loadSelectedEntitySetData**](DataApi.md#loadSelectedEntitySetData) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUIDs
[**replaceAssociationData**](DataApi.md#replaceAssociationData) | **PATCH** /datastore/data/association | Replaces Association Data
[**replaceEntityProperties**](DataApi.md#replaceEntityProperties) | **PATCH** /datastore/data/set/{entitySetId} | Replaces Entity Properties
[**updateEntitiesInEntitySet**](DataApi.md#updateEntitiesInEntitySet) | **PUT** /datastore/data/set/{entitySetId} | Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.



## createAssociations

> Map&lt;String, List&lt;UUID&gt;&gt; createAssociations(inlineObject)

Creates a new set of associations.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
InlineObject inlineObject = new InlineObject(); // InlineObject | 
try {
    Map<String, List<UUID>> result = apiInstance.createAssociations(inlineObject);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#createAssociations");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  |

### Return type

[**Map&lt;String, List&lt;UUID&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createEdges

> Integer createEdges(dataEdgeKey)

Creates a new set of associations.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
List<DataEdgeKey> dataEdgeKey = Arrays.asList(new DataEdgeKey()); // List<DataEdgeKey> | 
try {
    Integer result = apiInstance.createEdges(dataEdgeKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#createEdges");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataEdgeKey** | [**List&lt;DataEdgeKey&gt;**](DataEdgeKey.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createEntities

> List&lt;UUID&gt; createEntities(setId, requestBody)

Creates a new set of entities.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID setId = null; // UUID | 
List<Map<String, List<String>>> requestBody = Arrays.asList(new Map()); // List<Map<String, List<String>>> | 
try {
    List<UUID> result = apiInstance.createEntities(setId, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#createEntities");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt;**](Map.md)|  |

### Return type

[**List&lt;UUID&gt;**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createEntityAndAssociationData

> DataGraphIds createEntityAndAssociationData(dataGraph)

Creates entities and assocations

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
DataGraph dataGraph = new DataGraph(); // DataGraph | 
try {
    DataGraphIds result = apiInstance.createEntityAndAssociationData(dataGraph);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#createEntityAndAssociationData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataGraph** | [**DataGraph**](DataGraph.md)|  |

### Return type

[**DataGraphIds**](DataGraphIds.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteAllEntitiesFromEntitySet

> deleteAllEntitiesFromEntitySet(entitySetId, type)

Clears the Entity matching the given Entity id and all of its neighbor Entities

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
String type = null; // String | 
try {
    apiInstance.deleteAllEntitiesFromEntitySet(entitySetId, type);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#deleteAllEntitiesFromEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **type** | **String**|  | [default to null] [enum: Soft, Hard]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteEntities

> Integer deleteEntities(entitySetId, type, UUID)

Deletes multiple entities from an entity set.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
String type = null; // String | 
List<UUID> UUID = Arrays.asList(new UUID()); // List<UUID> | 
try {
    Integer result = apiInstance.deleteEntities(entitySetId, type, UUID);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#deleteEntities");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **type** | **String**|  | [default to null] [enum: Soft, Hard]
 **UUID** | [**List&lt;UUID&gt;**](UUID.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteEntitiesAndNeighbors

> Integer deleteEntitiesAndNeighbors(entitySetId, type, entityNeighborsFilter)

Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
String type = null; // String | 
List<EntityNeighborsFilter> entityNeighborsFilter = Arrays.asList(new EntityNeighborsFilter()); // List<EntityNeighborsFilter> | 
try {
    Integer result = apiInstance.deleteEntitiesAndNeighbors(entitySetId, type, entityNeighborsFilter);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#deleteEntitiesAndNeighbors");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **type** | **String**|  | [default to null] [enum: Soft, Hard]
 **entityNeighborsFilter** | [**List&lt;EntityNeighborsFilter&gt;**](EntityNeighborsFilter.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteEntity

> deleteEntity(entitySetId, entityKeyId, type)

Deletes a single entity from an entity set.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
UUID entityKeyId = null; // UUID | 
String type = null; // String | 
try {
    apiInstance.deleteEntity(entitySetId, entityKeyId, type);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#deleteEntity");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **entityKeyId** | [**UUID**](.md)|  | [default to null]
 **type** | **String**|  | [default to null] [enum: Soft, Hard]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteEntityProperties

> deleteEntityProperties(entitySetId, entityKeyId, type, UUID)

Deletes properties from an entity.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
UUID entityKeyId = null; // UUID | 
String type = null; // String | 
List<UUID> UUID = Arrays.asList(new UUID()); // List<UUID> | 
try {
    apiInstance.deleteEntityProperties(entitySetId, entityKeyId, type, UUID);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#deleteEntityProperties");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **entityKeyId** | [**UUID**](.md)|  | [default to null]
 **type** | **String**|  | [default to null] [enum: Soft, Hard]
 **UUID** | [**List&lt;UUID&gt;**](UUID.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## getEntity

> Map&lt;String, List&lt;String&gt;&gt; getEntity(entitySetId, entityKeyId)

Loads a single entity by its entityKeyId and entitySetId

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
UUID entityKeyId = null; // UUID | 
try {
    Map<String, List<String>> result = apiInstance.getEntity(entitySetId, entityKeyId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#getEntity");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **entityKeyId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, List&lt;String&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntityPropertyValues

> List&lt;String&gt; getEntityPropertyValues(entitySetId, entityKeyId, propertyTypeId)

Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
UUID entityKeyId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    List<String> result = apiInstance.getEntityPropertyValues(entitySetId, entityKeyId, propertyTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#getEntityPropertyValues");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **entityKeyId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

**List&lt;String&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntitySetSize

> Integer getEntitySetSize(entitySetId)

Gets the number of entities in an entity set.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
try {
    Integer result = apiInstance.getEntitySetSize(entitySetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#getEntitySetSize");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## loadEntitySetData

> List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt; loadEntitySetData(entitySetId)

Gets an iterable containing the entity data, using property type FQNs as key

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
try {
    List<Map<String, List<String>>> result = apiInstance.loadEntitySetData(entitySetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#loadEntitySetData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt;**](Map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## loadLinkedEntitySetBreakdown

> Map&lt;String, Map&lt;String, Map&lt;String, Map&lt;String, List&lt;String&gt;&gt;&gt;&gt;&gt; loadLinkedEntitySetBreakdown(linkedEntitySetId, entitySetSelection)

Loads a linked entity set breakdown with the selected linked entities and properties.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID linkedEntitySetId = null; // UUID | 
List<EntitySetSelection> entitySetSelection = Arrays.asList(new EntitySetSelection()); // List<EntitySetSelection> | 
try {
    Map<String, Map<String, Map<String, Map<String, List<String>>>>> result = apiInstance.loadLinkedEntitySetBreakdown(linkedEntitySetId, entitySetSelection);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#loadLinkedEntitySetBreakdown");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkedEntitySetId** | [**UUID**](.md)|  | [default to null]
 **entitySetSelection** | [**List&lt;EntitySetSelection&gt;**](EntitySetSelection.md)|  |

### Return type

[**Map&lt;String, Map&lt;String, Map&lt;String, Map&lt;String, List&lt;String&gt;&gt;&gt;&gt;&gt;**](Map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## loadSelectedEntitySetData

> List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt; loadSelectedEntitySetData(entitySetId, entitySetSelection)

Gets a list of entities by UUIDs

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
List<EntitySetSelection> entitySetSelection = Arrays.asList(new EntitySetSelection()); // List<EntitySetSelection> | 
try {
    List<Map<String, List<String>>> result = apiInstance.loadSelectedEntitySetData(entitySetId, entitySetSelection);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#loadSelectedEntitySetData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **entitySetSelection** | [**List&lt;EntitySetSelection&gt;**](EntitySetSelection.md)|  |

### Return type

[**List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt;**](Map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replaceAssociationData

> Integer replaceAssociationData(partial, requestBody)

Replaces Association Data

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
Boolean partial = null; // Boolean | 
Map<String, Map<String, DataEdge>> requestBody = new HashMap(); // Map<String, Map<String, DataEdge>> | 
try {
    Integer result = apiInstance.replaceAssociationData(partial, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#replaceAssociationData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partial** | **Boolean**|  | [default to null]
 **requestBody** | [**Map&lt;String, Map&lt;String, DataEdge&gt;&gt;**](Map.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replaceEntityProperties

> Integer replaceEntityProperties(entitySetId, requestBody)

Replaces Entity Properties

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
Map<String, Map<String, List<Map<String, String>>>> requestBody = new HashMap(); // Map<String, Map<String, List<Map<String, String>>>> | 
try {
    Integer result = apiInstance.replaceEntityProperties(entitySetId, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#replaceEntityProperties");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**Map&lt;String, Map&lt;String, List&lt;Map&lt;String, String&gt;&gt;&gt;&gt;**](Map.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updateEntitiesInEntitySet

> Integer updateEntitiesInEntitySet(entitySetId, type, requestBody)

Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataApi;

DataApi apiInstance = new DataApi();
UUID entitySetId = null; // UUID | 
String type = null; // String | 
Map<String, Map<String, List<String>>> requestBody = new HashMap(); // Map<String, Map<String, List<String>>> | 
try {
    Integer result = apiInstance.updateEntitiesInEntitySet(entitySetId, type, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataApi#updateEntitiesInEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **type** | **String**|  | [default to null] [enum: Merge, Replace, PartialReplace]
 **requestBody** | [**Map&lt;String, Map&lt;String, List&lt;String&gt;&gt;&gt;**](Map.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

