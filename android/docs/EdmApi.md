# EdmApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDstEntityTypeToAssociationType**](EdmApi.md#addDstEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**addPrimaryKeyToEntityType**](EdmApi.md#addPrimaryKeyToEntityType) | **PUT** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Adds a primary key with a given ID to an entity type with a given ID.
[**addPropertyTypeToEntityType**](EdmApi.md#addPropertyTypeToEntityType) | **PUT** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
[**addSrcEntityTypeToAssociationType**](EdmApi.md#addSrcEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**createAssociationType**](EdmApi.md#createAssociationType) | **POST** /datastore/edm/association/type/ | Creates a new AssociationType definition, if it doesn&#39;t exist.
[**createEmptySchema**](EdmApi.md#createEmptySchema) | **PUT** /datastore/edm/schema/{namespace}/{name} | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**createEntityType**](EdmApi.md#createEntityType) | **POST** /datastore/edm/entity/type/ | Creates a new EntityType definition, if it doesn&#39;t exist.
[**createPropertyType**](EdmApi.md#createPropertyType) | **POST** /datastore/edm/property/type/ | Creates a new PropertyType definition, if it doesn\&quot;t exist.
[**createSchemaIfNotExists**](EdmApi.md#createSchemaIfNotExists) | **POST** /datastore/edm/schema | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**deleteAssociationType**](EdmApi.md#deleteAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId} | Deletes the AssociationType definition for the given AssociationType UUID.
[**deleteEntityType**](EdmApi.md#deleteEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId} | Deletes the EntityType definition for the given EntityType UUID.
[**deletePropertyType**](EdmApi.md#deletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId} | Deletes the PropertyType definition for the given PropertyType UUID.
[**forceDeletePropertyType**](EdmApi.md#forceDeletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId}/force | Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
[**forceRemovePropertyTypeFromEntityType**](EdmApi.md#forceRemovePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId}/force | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
[**getAllAssociationEntityTypes**](EdmApi.md#getAllAssociationEntityTypes) | **GET** /datastore/edm/association/type/ | Gets all association EntityType definitions.
[**getAllAvailableAssociationTypes**](EdmApi.md#getAllAvailableAssociationTypes) | **GET** /datastore/edm/association/type/{associationTypeId}/available | Get all available associations for the given AssociationType UUID.
[**getAllEntityTypePropertyMetadata**](EdmApi.md#getAllEntityTypePropertyMetadata) | **GET** /datastore/edm/entity/type/{entityTypeId}/property/type | Get all EntityType propertyType metadata
[**getAllEntityTypes**](EdmApi.md#getAllEntityTypes) | **GET** /datastore/edm/entity/type/ | Gets all EntityType definitions.
[**getAllPropertyTypes**](EdmApi.md#getAllPropertyTypes) | **GET** /datastore/edm/property/type/ | Gets all PropertyType definitions.
[**getAllPropertyTypesInNamespace**](EdmApi.md#getAllPropertyTypesInNamespace) | **GET** /datastore/edm/property/type/namespace/{namespace} | Gets all PropertyType definitions under the given namespace.
[**getAllPropertyUsageSummaries**](EdmApi.md#getAllPropertyUsageSummaries) | **GET** /datastore/edm/summary | Get Property Usage Summary for all properties.
[**getAssociationType**](EdmApi.md#getAssociationType) | **GET** /datastore/edm/association/type/{associationTypeId} | Get the AssociationType definition for the given AssociationType UUID.
[**getAssociationTypeDetails**](EdmApi.md#getAssociationTypeDetails) | **GET** /datastore/edm/association/type/{associationTypeId}/detailed | Get details about the AssociationType for the given AssociationType UUID.
[**getEntityDataModel**](EdmApi.md#getEntityDataModel) | **GET** /datastore/edm/ | Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
[**getEntityDataModelDiff**](EdmApi.md#getEntityDataModelDiff) | **POST** /datastore/edm/diff/ | Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
[**getEntityType**](EdmApi.md#getEntityType) | **GET** /datastore/edm/entity/type/{entityTypeId} | Gets the EntityType definition for the given EntityType UUID.
[**getEntityTypeHierarchy**](EdmApi.md#getEntityTypeHierarchy) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/hierarchy | Get the EntityType hierarchy for the given EntityType UUID.
[**getEntityTypeId**](EdmApi.md#getEntityTypeId) | **GET** /datastore/edm/ids/entity/type/{namespace}/{name} | Gets the EntityType UUID for the given EntityType FQN.
[**getEntityTypePropertyMetadata**](EdmApi.md#getEntityTypePropertyMetadata) | **GET** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Get EntityType propertyType metadata
[**getPropertyType**](EdmApi.md#getPropertyType) | **GET** /datastore/edm/property/type/{propertyTypeId} | Gets the PropertyType definition for the given PropertyType UUID.
[**getPropertyTypeId**](EdmApi.md#getPropertyTypeId) | **GET** /datastore/edm/ids/property/type/{namespace}/{name} | Gets the PropertyType UUID for the given PropertyType FQN.
[**getPropertyUsageSummary**](EdmApi.md#getPropertyUsageSummary) | **GET** /datastore/edm/summary/{propertyTypeId} | Get Property Usage Summary for property with given ID.
[**getSchemaContents**](EdmApi.md#getSchemaContents) | **GET** /datastore/edm/schema/{namespace}/{name} | Gets the schema contents for a corresponding namespace and name.
[**getSchemas**](EdmApi.md#getSchemas) | **GET** /datastore/edm/schema | Gets all schemas.
[**getSchemasInNamespace**](EdmApi.md#getSchemasInNamespace) | **GET** /datastore/edm/schema/{namespace} | Gets all schemas associated with a given namespace and accessible by the caller.
[**removeDstEntityTypeFromAssociationType**](EdmApi.md#removeDstEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**removePrimaryKeyFromEntityType**](EdmApi.md#removePrimaryKeyFromEntityType) | **DELETE** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Removes a primary key with a given ID from an entity type with a given ID.
[**removePropertyTypeFromEntityType**](EdmApi.md#removePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
[**removeSrcEntityTypeFromAssociationType**](EdmApi.md#removeSrcEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**reorderPropertyTypesInEntityType**](EdmApi.md#reorderPropertyTypesInEntityType) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/property/type | Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
[**updateEntityDataModel**](EdmApi.md#updateEntityDataModel) | **PATCH** /datastore/edm/ | Updates the entity data model, including schemas, entity types, association types, and property types.
[**updateEntityTypeMetaData**](EdmApi.md#updateEntityTypeMetaData) | **PATCH** /datastore/edm/entity/type/{entityTypeId} | Updates the EntityType definition for the given EntityType UUID with the given metadata.
[**updateEntityTypePropertyMetadata**](EdmApi.md#updateEntityTypePropertyMetadata) | **POST** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Update EntityType Property metadata
[**updatePropertyTypeMetaData**](EdmApi.md#updatePropertyTypeMetaData) | **PATCH** /datastore/edm/property/type/{propertyTypeId} | Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
[**updateSchema**](EdmApi.md#updateSchema) | **PATCH** /datastore/edm/schema/{namespace}/{name} | Edits the schema contents for a corresponding namespace and name.



## addDstEntityTypeToAssociationType

> addDstEntityTypeToAssociationType(associationTypeId, entityTypeId)

Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
UUID entityTypeId = null; // UUID | 
try {
    apiInstance.addDstEntityTypeToAssociationType(associationTypeId, entityTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#addDstEntityTypeToAssociationType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## addPrimaryKeyToEntityType

> addPrimaryKeyToEntityType(entityTypeId, propertyTypeId)

Adds a primary key with a given ID to an entity type with a given ID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.addPrimaryKeyToEntityType(entityTypeId, propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#addPrimaryKeyToEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## addPropertyTypeToEntityType

> addPropertyTypeToEntityType(entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.addPropertyTypeToEntityType(entityTypeId, propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#addPropertyTypeToEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## addSrcEntityTypeToAssociationType

> addSrcEntityTypeToAssociationType(associationTypeId, entityTypeId)

Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
UUID entityTypeId = null; // UUID | 
try {
    apiInstance.addSrcEntityTypeToAssociationType(associationTypeId, entityTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#addSrcEntityTypeToAssociationType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## createAssociationType

> createAssociationType(associationType)

Creates a new AssociationType definition, if it doesn&#39;t exist.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
List<AssociationType> associationType = Arrays.asList(new AssociationType()); // List<AssociationType> | 
try {
    apiInstance.createAssociationType(associationType);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#createAssociationType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationType** | [**List&lt;AssociationType&gt;**](AssociationType.md)|  |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## createEmptySchema

> createEmptySchema(namespace, name)

Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
String namespace = null; // String | 
String name = null; // String | 
try {
    apiInstance.createEmptySchema(namespace, name);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#createEmptySchema");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | [default to null]
 **name** | **String**|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## createEntityType

> createEntityType(entityType)

Creates a new EntityType definition, if it doesn&#39;t exist.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
EntityType entityType = new EntityType(); // EntityType | 
try {
    apiInstance.createEntityType(entityType);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#createEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityType** | [**EntityType**](EntityType.md)|  |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## createPropertyType

> createPropertyType(propertyType)

Creates a new PropertyType definition, if it doesn\&quot;t exist.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
PropertyType propertyType = new PropertyType(); // PropertyType | 
try {
    apiInstance.createPropertyType(propertyType);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#createPropertyType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyType** | [**PropertyType**](PropertyType.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## createSchemaIfNotExists

> createSchemaIfNotExists(schema)

Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
Schema schema = new Schema(); // Schema | 
try {
    apiInstance.createSchemaIfNotExists(schema);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#createSchemaIfNotExists");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schema** | [**Schema**](Schema.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## deleteAssociationType

> deleteAssociationType(associationTypeId)

Deletes the AssociationType definition for the given AssociationType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
try {
    apiInstance.deleteAssociationType(associationTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#deleteAssociationType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deleteEntityType

> deleteEntityType(entityTypeId)

Deletes the EntityType definition for the given EntityType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
try {
    apiInstance.deleteEntityType(entityTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#deleteEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## deletePropertyType

> deletePropertyType(propertyTypeId)

Deletes the PropertyType definition for the given PropertyType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.deletePropertyType(propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#deletePropertyType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## forceDeletePropertyType

> forceDeletePropertyType(propertyTypeId)

Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.forceDeletePropertyType(propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#forceDeletePropertyType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## forceRemovePropertyTypeFromEntityType

> forceRemovePropertyTypeFromEntityType(entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.forceRemovePropertyTypeFromEntityType(entityTypeId, propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#forceRemovePropertyTypeFromEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getAllAssociationEntityTypes

> List&lt;AssociationType&gt; getAllAssociationEntityTypes()

Gets all association EntityType definitions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
try {
    List<AssociationType> result = apiInstance.getAllAssociationEntityTypes();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAllAssociationEntityTypes");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;AssociationType&gt;**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllAvailableAssociationTypes

> List&lt;AssociationType&gt; getAllAvailableAssociationTypes(associationTypeId)

Get all available associations for the given AssociationType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
try {
    List<AssociationType> result = apiInstance.getAllAvailableAssociationTypes(associationTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAllAvailableAssociationTypes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;AssociationType&gt;**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllEntityTypePropertyMetadata

> Map&lt;String, EntityTypePropertyMetadata&gt; getAllEntityTypePropertyMetadata(entityTypeId)

Get all EntityType propertyType metadata

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
try {
    Map<String, EntityTypePropertyMetadata> result = apiInstance.getAllEntityTypePropertyMetadata(entityTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAllEntityTypePropertyMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, EntityTypePropertyMetadata&gt;**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllEntityTypes

> List&lt;EntityType&gt; getAllEntityTypes()

Gets all EntityType definitions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
try {
    List<EntityType> result = apiInstance.getAllEntityTypes();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAllEntityTypes");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;EntityType&gt;**](EntityType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllPropertyTypes

> List&lt;PropertyType&gt; getAllPropertyTypes()

Gets all PropertyType definitions.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
try {
    List<PropertyType> result = apiInstance.getAllPropertyTypes();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAllPropertyTypes");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;PropertyType&gt;**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllPropertyTypesInNamespace

> List&lt;PropertyType&gt; getAllPropertyTypesInNamespace(namespace)

Gets all PropertyType definitions under the given namespace.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
String namespace = null; // String | 
try {
    List<PropertyType> result = apiInstance.getAllPropertyTypesInNamespace(namespace);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAllPropertyTypesInNamespace");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | [default to null]

### Return type

[**List&lt;PropertyType&gt;**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllPropertyUsageSummaries

> Map&lt;String, PropertyUsageSummary&gt; getAllPropertyUsageSummaries()

Get Property Usage Summary for all properties.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
try {
    Map<String, PropertyUsageSummary> result = apiInstance.getAllPropertyUsageSummaries();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAllPropertyUsageSummaries");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Map&lt;String, PropertyUsageSummary&gt;**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAssociationType

> AssociationType getAssociationType(associationTypeId)

Get the AssociationType definition for the given AssociationType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
try {
    AssociationType result = apiInstance.getAssociationType(associationTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAssociationType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAssociationTypeDetails

> AssociationType getAssociationTypeDetails(associationTypeId)

Get details about the AssociationType for the given AssociationType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
try {
    AssociationType result = apiInstance.getAssociationTypeDetails(associationTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getAssociationTypeDetails");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntityDataModel

> EDM getEntityDataModel()

Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
try {
    EDM result = apiInstance.getEntityDataModel();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getEntityDataModel");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**EDM**](EDM.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntityDataModelDiff

> EDMdiff getEntityDataModelDiff(eDMdiff)

Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
EDMdiff eDMdiff = new EDMdiff(); // EDMdiff | 
try {
    EDMdiff result = apiInstance.getEntityDataModelDiff(eDMdiff);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getEntityDataModelDiff");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eDMdiff** | [**EDMdiff**](EDMdiff.md)|  |

### Return type

[**EDMdiff**](EDMdiff.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getEntityType

> EntityType getEntityType(entityTypeId)

Gets the EntityType definition for the given EntityType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
try {
    EntityType result = apiInstance.getEntityType(entityTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**EntityType**](EntityType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntityTypeHierarchy

> getEntityTypeHierarchy(entityTypeId)

Get the EntityType hierarchy for the given EntityType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
try {
    apiInstance.getEntityTypeHierarchy(entityTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getEntityTypeHierarchy");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getEntityTypeId

> UUID getEntityTypeId(namespace, name)

Gets the EntityType UUID for the given EntityType FQN.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
String namespace = openlattice; // String | 
String name = myentitytype; // String | 
try {
    UUID result = apiInstance.getEntityTypeId(namespace, name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getEntityTypeId");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | [default to null]
 **name** | **String**|  | [default to null]

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getEntityTypePropertyMetadata

> EntityTypePropertyMetadata getEntityTypePropertyMetadata(entityTypeId, propertyTypeId)

Get EntityType propertyType metadata

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    EntityTypePropertyMetadata result = apiInstance.getEntityTypePropertyMetadata(entityTypeId, propertyTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getEntityTypePropertyMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**EntityTypePropertyMetadata**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPropertyType

> PropertyType getPropertyType(propertyTypeId)

Gets the PropertyType definition for the given PropertyType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID propertyTypeId = null; // UUID | 
try {
    PropertyType result = apiInstance.getPropertyType(propertyTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getPropertyType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPropertyTypeId

> UUID getPropertyTypeId(namespace, name)

Gets the PropertyType UUID for the given PropertyType FQN.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
String namespace = null; // String | 
String name = null; // String | 
try {
    UUID result = apiInstance.getPropertyTypeId(namespace, name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getPropertyTypeId");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | [default to null]
 **name** | **String**|  | [default to null]

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPropertyUsageSummary

> List&lt;PropertyUsageSummary&gt; getPropertyUsageSummary(propertyTypeId)

Get Property Usage Summary for property with given ID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID propertyTypeId = null; // UUID | 
try {
    List<PropertyUsageSummary> result = apiInstance.getPropertyUsageSummary(propertyTypeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getPropertyUsageSummary");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;PropertyUsageSummary&gt;**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSchemaContents

> Schema getSchemaContents(namespace, name, fileType)

Gets the schema contents for a corresponding namespace and name.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
String namespace = null; // String | 
String name = null; // String | 
String fileType = yaml; // String | 
try {
    Schema result = apiInstance.getSchemaContents(namespace, name, fileType);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getSchemaContents");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | [default to null]
 **name** | **String**|  | [default to null]
 **fileType** | **String**|  | [optional] [default to yaml] [enum: csv, json, yaml]

### Return type

[**Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSchemas

> List&lt;Schema&gt; getSchemas()

Gets all schemas.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
try {
    List<Schema> result = apiInstance.getSchemas();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getSchemas");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;Schema&gt;**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSchemasInNamespace

> List&lt;Schema&gt; getSchemasInNamespace(namespace)

Gets all schemas associated with a given namespace and accessible by the caller.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
String namespace = null; // String | 
try {
    List<Schema> result = apiInstance.getSchemasInNamespace(namespace);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#getSchemasInNamespace");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | [default to null]

### Return type

[**List&lt;Schema&gt;**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## removeDstEntityTypeFromAssociationType

> removeDstEntityTypeFromAssociationType(associationTypeId, entityTypeId)

Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
UUID entityTypeId = null; // UUID | 
try {
    apiInstance.removeDstEntityTypeFromAssociationType(associationTypeId, entityTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#removeDstEntityTypeFromAssociationType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## removePrimaryKeyFromEntityType

> removePrimaryKeyFromEntityType(entityTypeId, propertyTypeId)

Removes a primary key with a given ID from an entity type with a given ID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.removePrimaryKeyFromEntityType(entityTypeId, propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#removePrimaryKeyFromEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## removePropertyTypeFromEntityType

> removePropertyTypeFromEntityType(entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.removePropertyTypeFromEntityType(entityTypeId, propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#removePropertyTypeFromEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## removeSrcEntityTypeFromAssociationType

> removeSrcEntityTypeFromAssociationType(associationTypeId, entityTypeId)

Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID associationTypeId = null; // UUID | 
UUID entityTypeId = null; // UUID | 
try {
    apiInstance.removeSrcEntityTypeFromAssociationType(associationTypeId, entityTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#removeSrcEntityTypeFromAssociationType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**UUID**](.md)|  | [default to null]
 **entityTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## reorderPropertyTypesInEntityType

> reorderPropertyTypesInEntityType(entityTypeId, propertyTypeIds)

Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
List<UUID> propertyTypeIds = null; // List<UUID> | 
try {
    apiInstance.reorderPropertyTypesInEntityType(entityTypeId, propertyTypeIds);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#reorderPropertyTypesInEntityType");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeIds** | [**List&lt;UUID&gt;**](UUID.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## updateEntityDataModel

> updateEntityDataModel(EDM)

Updates the entity data model, including schemas, entity types, association types, and property types.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
EDM EDM = new EDM(); // EDM | 
try {
    apiInstance.updateEntityDataModel(EDM);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#updateEntityDataModel");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EDM** | [**EDM**](EDM.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateEntityTypeMetaData

> updateEntityTypeMetaData(entityTypeId, metadataUpdate)

Updates the EntityType definition for the given EntityType UUID with the given metadata.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    apiInstance.updateEntityTypeMetaData(entityTypeId, metadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#updateEntityTypeMetaData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateEntityTypePropertyMetadata

> updateEntityTypePropertyMetadata(entityTypeId, propertyTypeId)

Update EntityType Property metadata

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID entityTypeId = null; // UUID | 
UUID propertyTypeId = null; // UUID | 
try {
    apiInstance.updateEntityTypePropertyMetadata(entityTypeId, propertyTypeId);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#updateEntityTypePropertyMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**UUID**](.md)|  | [default to null]
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## updatePropertyTypeMetaData

> updatePropertyTypeMetaData(propertyTypeId, metadataUpdate)

Updates the PropertyType definition for the given PropertyType UUID with the given metadata.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
UUID propertyTypeId = null; // UUID | 
MetadataUpdate metadataUpdate = new MetadataUpdate(); // MetadataUpdate | 
try {
    apiInstance.updatePropertyTypeMetaData(propertyTypeId, metadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#updatePropertyTypeMetaData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**UUID**](.md)|  | [default to null]
 **metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateSchema

> updateSchema(namespace, name, edmRequest)

Edits the schema contents for a corresponding namespace and name.

### Example

```java
// Import classes:
//import org.openapitools.client.api.EdmApi;

EdmApi apiInstance = new EdmApi();
String namespace = null; // String | 
String name = null; // String | 
EdmRequest edmRequest = new EdmRequest(); // EdmRequest | 
try {
    apiInstance.updateSchema(namespace, name, edmRequest);
} catch (ApiException e) {
    System.err.println("Exception when calling EdmApi#updateSchema");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | [default to null]
 **name** | **String**|  | [default to null]
 **edmRequest** | [**EdmRequest**](EdmRequest.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

