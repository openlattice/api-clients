# CollectionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addTypeToEntityTypeCollectionTemplate**](CollectionsApi.md#addTypeToEntityTypeCollectionTemplate) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId}/template | Appends type to template of the specified EntityTypeCollection
[**createEntitySetCollection**](CollectionsApi.md#createEntitySetCollection) | **POST** /datastore/collections/entity/set | Creates a new EntitySetCollection
[**createEntityTypeCollection**](CollectionsApi.md#createEntityTypeCollection) | **POST** /datastore/collections/entity/type | Creates a new EntityTypeCollection
[**deleteEntitySetCollection**](CollectionsApi.md#deleteEntitySetCollection) | **DELETE** /datastore/collections/entity/set/{entitySetCollectionId} | Deletes the specified EntitySetCollection
[**deleteEntityTypeCollection**](CollectionsApi.md#deleteEntityTypeCollection) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId} | Deletes the specified EntityTypeCollection
[**getAllEntitySetCollections**](CollectionsApi.md#getAllEntitySetCollections) | **GET** /datastore/collections/entity/set | Returns all EntitySetCollection objects
[**getAllEntityTypeCollections**](CollectionsApi.md#getAllEntityTypeCollections) | **GET** /datastore/collections/entity/type | Returns all EntityTypeCollection objects
[**getEntitySetCollection**](CollectionsApi.md#getEntitySetCollection) | **GET** /datastore/collections/entity/set/{entitySetCollectionId} | Returns the EntitySetCollection object for a given id
[**getEntitySetCollectionsOfType**](CollectionsApi.md#getEntitySetCollectionsOfType) | **GET** /datastore/collections/entity/set/entity/type/{entitySetCollectionId} | Returns all authorized EntitySetCollections for a given EntityTypeCollection id
[**getEntityTypeCollection**](CollectionsApi.md#getEntityTypeCollection) | **GET** /datastore/collections/entity/type/{entityTypeCollectionId} | Returns the EntityTypeCollection object for a given id
[**removeTypeFromEntityTypeCollectionTemplate**](CollectionsApi.md#removeTypeFromEntityTypeCollectionTemplate) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId}/template/{typeId} | Removes a key from an EntityTypeCollection template
[**updateEntitySetCollectionMetadata**](CollectionsApi.md#updateEntitySetCollectionMetadata) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId} | Updates metadata of the specified EntitySetCollection
[**updateEntitySetCollectionTemplate**](CollectionsApi.md#updateEntitySetCollectionTemplate) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId}/template | Updates template of the specified EntitySetCollection
[**updateEntityTypeCollectionMetadata**](CollectionsApi.md#updateEntityTypeCollectionMetadata) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId} | Updates metadata of the specified EntityTypeCollection



## addTypeToEntityTypeCollectionTemplate

> addTypeToEntityTypeCollectionTemplate(entityTypeCollectionId, collectionTemplateType)

Appends type to template of the specified EntityTypeCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entityTypeCollectionId = null; // UUID | 
CollectionTemplateType collectionTemplateType = new CollectionTemplateType(); // CollectionTemplateType | 
try {
    apiInstance.addTypeToEntityTypeCollectionTemplate(entityTypeCollectionId, collectionTemplateType);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#addTypeToEntityTypeCollectionTemplate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeCollectionId** | [**UUID**](.md)|  | [default to null]
 **collectionTemplateType** | [**CollectionTemplateType**](CollectionTemplateType.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## createEntitySetCollection

> UUID createEntitySetCollection(entitySetCollection)

Creates a new EntitySetCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
EntitySetCollection entitySetCollection = new EntitySetCollection(); // EntitySetCollection | 
try {
    UUID result = apiInstance.createEntitySetCollection(entitySetCollection);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#createEntitySetCollection");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetCollection** | [**EntitySetCollection**](EntitySetCollection.md)|  |

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createEntityTypeCollection

> UUID createEntityTypeCollection(entityTypeCollection)

Creates a new EntityTypeCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
EntityTypeCollection entityTypeCollection = new EntityTypeCollection(); // EntityTypeCollection | 
try {
    UUID result = apiInstance.createEntityTypeCollection(entityTypeCollection);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#createEntityTypeCollection");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeCollection** | [**EntityTypeCollection**](EntityTypeCollection.md)|  |

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteEntitySetCollection

> deleteEntitySetCollection(entitySetCollectionId)

Deletes the specified EntitySetCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entitySetCollectionId = null; // UUID | 
try {
    apiInstance.deleteEntitySetCollection(entitySetCollectionId);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#deleteEntitySetCollection");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetCollectionId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteEntityTypeCollection

> deleteEntityTypeCollection(entityTypeCollectionId)

Deletes the specified EntityTypeCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entityTypeCollectionId = null; // UUID | 
try {
    apiInstance.deleteEntityTypeCollection(entityTypeCollectionId);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#deleteEntityTypeCollection");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeCollectionId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getAllEntitySetCollections

> List&lt;EntitySetCollection&gt; getAllEntitySetCollections()

Returns all EntitySetCollection objects

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
try {
    List<EntitySetCollection> result = apiInstance.getAllEntitySetCollections();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#getAllEntitySetCollections");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;EntitySetCollection&gt;**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllEntityTypeCollections

> List&lt;EntityTypeCollection&gt; getAllEntityTypeCollections()

Returns all EntityTypeCollection objects

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
try {
    List<EntityTypeCollection> result = apiInstance.getAllEntityTypeCollections();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#getAllEntityTypeCollections");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;EntityTypeCollection&gt;**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntitySetCollection

> EntitySetCollection getEntitySetCollection(entitySetCollectionId)

Returns the EntitySetCollection object for a given id

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entitySetCollectionId = null; // UUID | 
try {
    EntitySetCollection result = apiInstance.getEntitySetCollection(entitySetCollectionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#getEntitySetCollection");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetCollectionId** | [**UUID**](.md)|  | [default to null]

### Return type

[**EntitySetCollection**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntitySetCollectionsOfType

> List&lt;EntitySetCollection&gt; getEntitySetCollectionsOfType(entitySetCollectionId)

Returns all authorized EntitySetCollections for a given EntityTypeCollection id

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entitySetCollectionId = null; // UUID | 
try {
    List<EntitySetCollection> result = apiInstance.getEntitySetCollectionsOfType(entitySetCollectionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#getEntitySetCollectionsOfType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetCollectionId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;EntitySetCollection&gt;**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntityTypeCollection

> EntityTypeCollection getEntityTypeCollection(entityTypeCollectionId)

Returns the EntityTypeCollection object for a given id

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entityTypeCollectionId = null; // UUID | 
try {
    EntityTypeCollection result = apiInstance.getEntityTypeCollection(entityTypeCollectionId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#getEntityTypeCollection");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeCollectionId** | [**UUID**](.md)|  | [default to null]

### Return type

[**EntityTypeCollection**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## removeTypeFromEntityTypeCollectionTemplate

> removeTypeFromEntityTypeCollectionTemplate(entityTypeCollectionId, typeId)

Removes a key from an EntityTypeCollection template

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entityTypeCollectionId = null; // UUID | 
UUID typeId = null; // UUID | 
try {
    apiInstance.removeTypeFromEntityTypeCollectionTemplate(entityTypeCollectionId, typeId);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#removeTypeFromEntityTypeCollectionTemplate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeCollectionId** | [**UUID**](.md)|  | [default to null]
 **typeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## updateEntitySetCollectionMetadata

> updateEntitySetCollectionMetadata(entitySetCollectionId, metadataUpdate)

Updates metadata of the specified EntitySetCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entitySetCollectionId = null; // UUID | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    apiInstance.updateEntitySetCollectionMetadata(entitySetCollectionId, metadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#updateEntitySetCollectionMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetCollectionId** | [**UUID**](.md)|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateEntitySetCollectionTemplate

> updateEntitySetCollectionTemplate(entitySetCollectionId, requestBody)

Updates template of the specified EntitySetCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entitySetCollectionId = null; // UUID | 
Map<String, UUID> requestBody = new HashMap(); // Map<String, UUID> | 
try {
    apiInstance.updateEntitySetCollectionTemplate(entitySetCollectionId, requestBody);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#updateEntitySetCollectionTemplate");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetCollectionId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**Map&lt;String, UUID&gt;**](UUID.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateEntityTypeCollectionMetadata

> updateEntityTypeCollectionMetadata(entityTypeCollectionId, metadataUpdate)

Updates metadata of the specified EntityTypeCollection

### Example

```java
// Import classes:
//import org.openapitools.client.api.CollectionsApi;

CollectionsApi apiInstance = new CollectionsApi();
UUID entityTypeCollectionId = null; // UUID | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    apiInstance.updateEntityTypeCollectionMetadata(entityTypeCollectionId, metadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling CollectionsApi#updateEntityTypeCollectionMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeCollectionId** | [**UUID**](.md)|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

