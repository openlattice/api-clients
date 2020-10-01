# EntitySetsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addEntitySetsToLinkingEntitySet**](EntitySetsApi.md#addEntitySetsToLinkingEntitySet) | **POST** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
[**addEntitySetsToLinkingEntitySets**](EntitySetsApi.md#addEntitySetsToLinkingEntitySets) | **PUT** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
[**createEntitySets**](EntitySetsApi.md#createEntitySets) | **POST** /datastore/entity-sets | Creates new EntitySet definitions if they don&#39;t exist.
[**deleteEntitySet**](EntitySetsApi.md#deleteEntitySet) | **DELETE** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**getAllEntitySetPropertyMetadata**](EntitySetsApi.md#getAllEntitySetPropertyMetadata) | **GET** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
[**getAllEntitySets**](EntitySetsApi.md#getAllEntitySets) | **GET** /datastore/entity-sets | Get all EntitySet definitions.
[**getEntitySet**](EntitySetsApi.md#getEntitySet) | **GET** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**getEntitySetId**](EntitySetsApi.md#getEntitySetId) | **GET** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**getEntitySetIds**](EntitySetsApi.md#getEntitySetIds) | **POST** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
[**getEntitySetPropertyMetadata**](EntitySetsApi.md#getEntitySetPropertyMetadata) | **GET** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**getPropertyMetadataForEntitySets**](EntitySetsApi.md#getPropertyMetadataForEntitySets) | **POST** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
[**getPropertyTypesForEntitySet**](EntitySetsApi.md#getPropertyTypesForEntitySet) | **GET** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
[**removeEntitySetsFromLinkingEntitySet**](EntitySetsApi.md#removeEntitySetsFromLinkingEntitySet) | **DELETE** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
[**removeEntitySetsFromLinkingEntitySets**](EntitySetsApi.md#removeEntitySetsFromLinkingEntitySets) | **DELETE** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
[**repartitionEntitySet**](EntitySetsApi.md#repartitionEntitySet) | **PUT** /datastore/entity-sets/{entitySetId}/partitions | Used to repartition an entity set. This will shuffle corresponding ids, edges, and data table rows for the entity set.
[**updateEntitySetMetaData**](EntitySetsApi.md#updateEntitySetMetaData) | **PATCH** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**updateEntitySetPropertyMetadata**](EntitySetsApi.md#updateEntitySetPropertyMetadata) | **POST** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.



## addEntitySetsToLinkingEntitySet

> Integer addEntitySetsToLinkingEntitySet(linkingEntitySetId, UUID)

Adds the entity sets as linked entity sets to the linking entity set

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID linkingEntitySetId = null; // UUID | 
List<UUID> UUID = Arrays.asList(new UUID()); // List<UUID> | 
try {
    Integer result = apiInstance.addEntitySetsToLinkingEntitySet(linkingEntitySetId, UUID);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#addEntitySetsToLinkingEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkingEntitySetId** | [**UUID**](.md)|  | [default to null]
 **UUID** | [**List&lt;UUID&gt;**](UUID.md)|  | [optional]

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## addEntitySetsToLinkingEntitySets

> Integer addEntitySetsToLinkingEntitySets(linkingEntitySetId, requestBody)

Adds the entity sets as linked entity sets to the linking entity sets

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
String linkingEntitySetId = null; // String | 
Map<String, List<UUID>> requestBody = new HashMap(); // Map<String, List<UUID>> | 
try {
    Integer result = apiInstance.addEntitySetsToLinkingEntitySets(linkingEntitySetId, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#addEntitySetsToLinkingEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkingEntitySetId** | **String**|  | [default to null]
 **requestBody** | [**Map&lt;String, List&lt;UUID&gt;&gt;**](List.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createEntitySets

> createEntitySets(entitySet)

Creates new EntitySet definitions if they don&#39;t exist.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
List<EntitySet> entitySet = Arrays.asList(new EntitySet()); // List<EntitySet> | 
try {
    apiInstance.createEntitySets(entitySet);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#createEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySet** | [**List&lt;EntitySet&gt;**](EntitySet.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## deleteEntitySet

> deleteEntitySet(entitySetId)

Deletes the EntitySet definition for the given EntitySet UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
try {
    apiInstance.deleteEntitySet(entitySetId);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#deleteEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getAllEntitySetPropertyMetadata

> Map&lt;String, EntitySetPropertyMetaData&gt; getAllEntitySetPropertyMetadata(entitySetId)

Get all entity set property metadata.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
try {
    Map<String, EntitySetPropertyMetaData> result = apiInstance.getAllEntitySetPropertyMetadata(entitySetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getAllEntitySetPropertyMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, EntitySetPropertyMetaData&gt;**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllEntitySets

> List&lt;EntitySet&gt; getAllEntitySets()

Get all EntitySet definitions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
try {
    List<EntitySet> result = apiInstance.getAllEntitySets();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getAllEntitySets");
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


## getEntitySet

> EntitySet getEntitySet(entitySetId)

Get the EntitySet definition for the given EntitySet UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
try {
    EntitySet result = apiInstance.getEntitySet(entitySetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

[**EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntitySetId

> UUID getEntitySetId(entitySetName)

Gets the EntitySet UUID for the given EntitySet name.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
String entitySetName = null; // String | 
try {
    UUID result = apiInstance.getEntitySetId(entitySetName);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getEntitySetId");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetName** | **String**|  | [default to null]

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntitySetIds

> Map&lt;String, UUID&gt; getEntitySetIds(requestBody)

Get IDs for entity sets given their names.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    Map<String, UUID> result = apiInstance.getEntitySetIds(requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getEntitySetIds");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List&lt;String&gt;**](String.md)|  | [optional]

### Return type

[**Map&lt;String, UUID&gt;**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getEntitySetPropertyMetadata

> EntitySetPropertyMetaData getEntitySetPropertyMetadata(entitySetId, propertyTypeId)

Get specified property type metadata for an entity set.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    EntitySetPropertyMetaData result = apiInstance.getEntitySetPropertyMetadata(entitySetId, propertyTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getEntitySetPropertyMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**EntitySetPropertyMetaData**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPropertyMetadataForEntitySets

> Map&lt;String, Map&lt;String, EntitySetPropertyMetaData&gt;&gt; getPropertyMetadataForEntitySets(requestBody)

Get property metadata for entity sets.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    Map<String, Map<String, EntitySetPropertyMetaData>> result = apiInstance.getPropertyMetadataForEntitySets(requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getPropertyMetadataForEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List&lt;String&gt;**](String.md)|  | [optional]

### Return type

[**Map&lt;String, Map&lt;String, EntitySetPropertyMetaData&gt;&gt;**](Map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getPropertyTypesForEntitySet

> Map&lt;String, PropertyType&gt; getPropertyTypesForEntitySet(entitySetId)

Get all Property Types for entity set

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
try {
    Map<String, PropertyType> result = apiInstance.getPropertyTypesForEntitySet(entitySetId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#getPropertyTypesForEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, PropertyType&gt;**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## removeEntitySetsFromLinkingEntitySet

> Integer removeEntitySetsFromLinkingEntitySet(linkingEntitySetId, UUID)

Removes/unlinks the linked entity sets from the linking entity set

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
String linkingEntitySetId = null; // String | 
List<UUID> UUID = Arrays.asList(new UUID()); // List<UUID> | 
try {
    Integer result = apiInstance.removeEntitySetsFromLinkingEntitySet(linkingEntitySetId, UUID);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#removeEntitySetsFromLinkingEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkingEntitySetId** | **String**|  | [default to null]
 **UUID** | [**List&lt;UUID&gt;**](UUID.md)|  | [optional]

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## removeEntitySetsFromLinkingEntitySets

> Integer removeEntitySetsFromLinkingEntitySets(linkingEntitySetId, requestBody)

Removes/unlinks the linked entity sets from the linking entity set

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID linkingEntitySetId = null; // UUID | 
Map<String, List<UUID>> requestBody = new HashMap(); // Map<String, List<UUID>> | 
try {
    Integer result = apiInstance.removeEntitySetsFromLinkingEntitySets(linkingEntitySetId, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#removeEntitySetsFromLinkingEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkingEntitySetId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**Map&lt;String, List&lt;UUID&gt;&gt;**](List.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## repartitionEntitySet

> repartitionEntitySet(entitySetId, requestBody)

Used to repartition an entity set. This will shuffle corresponding ids, edges, and data table rows for the entity set.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
List<Integer> requestBody = Arrays.asList(56); // List<Integer> | 
try {
    apiInstance.repartitionEntitySet(entitySetId, requestBody);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#repartitionEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**List&lt;Integer&gt;**](Integer.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateEntitySetMetaData

> Integer updateEntitySetMetaData(entitySetId, metadataUpdate)

Updates the EntitySet definition for the given EntitySet UUID with the given metadata.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    Integer result = apiInstance.updateEntitySetMetaData(entitySetId, metadataUpdate);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#updateEntitySetMetaData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## updateEntitySetPropertyMetadata

> updateEntitySetPropertyMetadata(entitySetId, propertyTypeId, metadataUpdate)

Updates the property type metadata for the given entity set.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EntitySetsApi;

EntitySetsApi apiInstance = new EntitySetsApi();
UUID entitySetId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    apiInstance.updateEntitySetPropertyMetadata(entitySetId, propertyTypeId, metadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling EntitySetsApi#updateEntitySetPropertyMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

