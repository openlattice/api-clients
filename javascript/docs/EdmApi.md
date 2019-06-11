# OpenLatticeApi.EdmApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addDstEntityTypeToAssociationType**](EdmApi.md#addDstEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**addPropertyTypeToEntityType**](EdmApi.md#addPropertyTypeToEntityType) | **PUT** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
[**addSrcEntityTypeToAssociationType**](EdmApi.md#addSrcEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**createAssociationType**](EdmApi.md#createAssociationType) | **POST** /datastore/edm/association/type/ | Creates a new AssociationType definition, if it doesn\&quot;t exist.
[**createEmptySchema**](EdmApi.md#createEmptySchema) | **PUT** /datastore/edm/schema/{namespace}/{name} | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**createEntitySets**](EdmApi.md#createEntitySets) | **POST** /datastore/edm/entity/set | Create new EntitySet definitions if they don\&quot;t exist.
[**createEntityType**](EdmApi.md#createEntityType) | **POST** /datastore/edm/entity/type/ | Creates a new EntityType definition, if it doesn&#39;t exist.
[**createPropertyType**](EdmApi.md#createPropertyType) | **POST** /datastore/edm/property/type/ | Creates a new PropertyType definition, if it doesn\&quot;t exist.
[**createSchemaIfNotExists**](EdmApi.md#createSchemaIfNotExists) | **POST** /datastore/edm/schema | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**deleteAssociationType**](EdmApi.md#deleteAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId} | Delete the AssociationType definition for the given AssociationType UUID.
[**deleteEntitySet**](EdmApi.md#deleteEntitySet) | **DELETE** /datastore/edm/entity/set/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**deleteEntityType**](EdmApi.md#deleteEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId} | Deletes the EntityType definition for the given EntityType UUID.
[**deletePropertyType**](EdmApi.md#deletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId} | Deletes the PropertyType definition for the given PropertyType UUID.
[**forceDeletePropertyType**](EdmApi.md#forceDeletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId}/force | Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
[**forceRemovePropertyTypeFromEntityType**](EdmApi.md#forceRemovePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId}/force | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
[**getAllAssociationEntityTypes**](EdmApi.md#getAllAssociationEntityTypes) | **GET** /datastore/edm/association/type/ | Gets all association EntityType definitions.
[**getAllAvailableAssociationTypes**](EdmApi.md#getAllAvailableAssociationTypes) | **GET** /datastore/edm/association/type/{associationTypeId}/available | Get all available associations for the given AssociationType UUID.
[**getAllEntitySetPropertyMetadata**](EdmApi.md#getAllEntitySetPropertyMetadata) | **GET** /datastore/edm/entity/set/{entitySetId}/property/type | Get all property type metadata for an entity set.
[**getAllEntitySets**](EdmApi.md#getAllEntitySets) | **GET** /datastore/edm/entity/set | Get all EntitySet definitions.
[**getAllEntityTypes**](EdmApi.md#getAllEntityTypes) | **GET** /datastore/edm/entity/type/ | Gets all EntityType definitions.
[**getAllPropertyTypes**](EdmApi.md#getAllPropertyTypes) | **GET** /datastore/edm/property/type/ | Gets all PropertyType definitions.
[**getAllPropertyTypesInNamespace**](EdmApi.md#getAllPropertyTypesInNamespace) | **GET** /datastore/edm/property/type/namespace/{namespace} | Gets all PropertyType definitions under the given namespace.
[**getAllPropertyUsageSummaries**](EdmApi.md#getAllPropertyUsageSummaries) | **GET** /datastore/edm/summary | Get Property Usage Summary for all properties.
[**getAssociationType**](EdmApi.md#getAssociationType) | **GET** /datastore/edm/association/type/{associationTypeId} | Get the AssociationType definition for the given AssociationType UUID.
[**getAssociationTypeDetails**](EdmApi.md#getAssociationTypeDetails) | **GET** /datastore/edm/association/type/{associationTypeId}/detailed | Get details about the AssociationType for the given AssociationType UUID.
[**getEntityDataModel**](EdmApi.md#getEntityDataModel) | **GET** /datastore/edm/ | Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
[**getEntityDataModelDiff**](EdmApi.md#getEntityDataModelDiff) | **POST** /datastore/edm/diff/ | Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
[**getEntitySet**](EdmApi.md#getEntitySet) | **GET** /datastore/edm/entity/set/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**getEntitySetId**](EdmApi.md#getEntitySetId) | **GET** /datastore/edm/ids/entity/set/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**getEntitySetPropertyMetadata**](EdmApi.md#getEntitySetPropertyMetadata) | **GET** /datastore/edm/entity/set/{entitySetId}/property/type/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**getEntityType**](EdmApi.md#getEntityType) | **GET** /datastore/edm/entity/type/{entityTypeId} | Gets the EntityType definition for the given EntityType UUID.
[**getEntityTypeHierarchy**](EdmApi.md#getEntityTypeHierarchy) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/hierarchy | Get the EntityType hierarchy for the given EntityType UUID.
[**getEntityTypeId**](EdmApi.md#getEntityTypeId) | **GET** /datastore/edm/ids/entity/type/{namespace}/{name} | Gets the EntityType UUID for the given EntityType FQN.
[**getPropertyType**](EdmApi.md#getPropertyType) | **GET** /datastore/edm/property/type/{propertyTypeId} | Gets the PropertyType definition for the given PropertyType UUID.
[**getPropertyTypeId**](EdmApi.md#getPropertyTypeId) | **GET** /datastore/edm/ids/property/type/{namespace}/{name} | Gets the PropertyType UUID for the given PropertyType FQN.
[**getPropertyUsageSummary**](EdmApi.md#getPropertyUsageSummary) | **GET** /datastore/edm/summary/{propertyTypeId} | Get Property Usage Summary for property with given ID.
[**getSchemaContents**](EdmApi.md#getSchemaContents) | **GET** /datastore/edm/schema/{namespace}/{name} | Gets the schema contents for a corresponding namespace and name.
[**getSchemas**](EdmApi.md#getSchemas) | **GET** /datastore/edm/schema | Gets all schemas.
[**getSchemasInNamespace**](EdmApi.md#getSchemasInNamespace) | **GET** /datastore/edm/schema/{namespace} | Gets all schemas associated with a given namespace and accessible by the caller.
[**removeDstEntityTypeFromAssociationType**](EdmApi.md#removeDstEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**removePropertyTypeFromEntityType**](EdmApi.md#removePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
[**removeSrcEntityTypeFromAssociationType**](EdmApi.md#removeSrcEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**reorderPropertyTypesInEntityType**](EdmApi.md#reorderPropertyTypesInEntityType) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/property/type | Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
[**updateEntityDataModel**](EdmApi.md#updateEntityDataModel) | **PATCH** /datastore/edm/ | Updates the entity data model, including schemas, entity types, association types, and property types.
[**updateEntitySetMetaData**](EdmApi.md#updateEntitySetMetaData) | **PATCH** /datastore/edm/entity/set/{entitySetId} | Updates the EntityType definition for the given EntitySet UUID with the given metadata.
[**updateEntitySetPropertyMetadata**](EdmApi.md#updateEntitySetPropertyMetadata) | **POST** /datastore/edm/entity/set/{entitySetId}/property/type/{propertyTypeId}/ | Updates the property type metadata for the given entity set.
[**updateEntityTypeMetaData**](EdmApi.md#updateEntityTypeMetaData) | **PATCH** /datastore/edm/entity/type/{entityTypeId} | Updates the EntityType definition for the given EntityType UUID with the given metadata.
[**updatePropertyTypeMetaData**](EdmApi.md#updatePropertyTypeMetaData) | **PATCH** /datastore/edm/property/type/{propertyTypeId} | Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
[**updateSchema**](EdmApi.md#updateSchema) | **PATCH** /datastore/edm/schema/{namespace}/{name} | Edits the schema contents for a corresponding namespace and name.


<a name="addDstEntityTypeToAssociationType"></a>
# **addDstEntityTypeToAssociationType**
> addDstEntityTypeToAssociationType(associationTypeId, entityTypeId)

Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
let entityTypeId = null; // String | 
apiInstance.addDstEntityTypeToAssociationType(associationTypeId, entityTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 
 **entityTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="addPropertyTypeToEntityType"></a>
# **addPropertyTypeToEntityType**
> addPropertyTypeToEntityType(entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
let propertyTypeId = null; // String | 
apiInstance.addPropertyTypeToEntityType(entityTypeId, propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="addSrcEntityTypeToAssociationType"></a>
# **addSrcEntityTypeToAssociationType**
> addSrcEntityTypeToAssociationType(associationTypeId, entityTypeId)

Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
let entityTypeId = null; // String | 
apiInstance.addSrcEntityTypeToAssociationType(associationTypeId, entityTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 
 **entityTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="createAssociationType"></a>
# **createAssociationType**
> createAssociationType(associationType)

Creates a new AssociationType definition, if it doesn\&quot;t exist.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationType = [new OpenLatticeApi.AssociationType()]; // [AssociationType] | 
apiInstance.createAssociationType(associationType, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationType** | [**[AssociationType]**](Array.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a name="createEmptySchema"></a>
# **createEmptySchema**
> createEmptySchema(namespace, name)

Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let namespace = "namespace_example"; // String | 
let name = "name_example"; // String | 
apiInstance.createEmptySchema(namespace, name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="createEntitySets"></a>
# **createEntitySets**
> createEntitySets(entitySet)

Create new EntitySet definitions if they don\&quot;t exist.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySet = [new OpenLatticeApi.EntitySet()]; // [EntitySet] | 
apiInstance.createEntitySets(entitySet, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySet** | [**[EntitySet]**](Array.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a name="createEntityType"></a>
# **createEntityType**
> createEntityType(entityType)

Creates a new EntityType definition, if it doesn&#39;t exist.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityType = new OpenLatticeApi.EntityType(); // EntityType | 
apiInstance.createEntityType(entityType, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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

<a name="createPropertyType"></a>
# **createPropertyType**
> createPropertyType(propertyType)

Creates a new PropertyType definition, if it doesn\&quot;t exist.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let propertyType = new OpenLatticeApi.PropertyType(); // PropertyType | 
apiInstance.createPropertyType(propertyType, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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

<a name="createSchemaIfNotExists"></a>
# **createSchemaIfNotExists**
> createSchemaIfNotExists(schema)

Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let schema = new OpenLatticeApi.Schema(); // Schema | 
apiInstance.createSchemaIfNotExists(schema, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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

<a name="deleteAssociationType"></a>
# **deleteAssociationType**
> deleteAssociationType(associationTypeId)

Delete the AssociationType definition for the given AssociationType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
apiInstance.deleteAssociationType(associationTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="deleteEntitySet"></a>
# **deleteEntitySet**
> deleteEntitySet(entitySetId)

Deletes the EntitySet definition for the given EntitySet UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySetId = null; // String | 
apiInstance.deleteEntitySet(entitySetId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="deleteEntityType"></a>
# **deleteEntityType**
> deleteEntityType(entityTypeId)

Deletes the EntityType definition for the given EntityType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
apiInstance.deleteEntityType(entityTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="deletePropertyType"></a>
# **deletePropertyType**
> deletePropertyType(propertyTypeId)

Deletes the PropertyType definition for the given PropertyType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let propertyTypeId = null; // String | 
apiInstance.deletePropertyType(propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="forceDeletePropertyType"></a>
# **forceDeletePropertyType**
> forceDeletePropertyType(propertyTypeId)

Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let propertyTypeId = null; // String | 
apiInstance.forceDeletePropertyType(propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="forceRemovePropertyTypeFromEntityType"></a>
# **forceRemovePropertyTypeFromEntityType**
> forceRemovePropertyTypeFromEntityType(entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
let propertyTypeId = null; // String | 
apiInstance.forceRemovePropertyTypeFromEntityType(entityTypeId, propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getAllAssociationEntityTypes"></a>
# **getAllAssociationEntityTypes**
> [AssociationType] getAllAssociationEntityTypes()

Gets all association EntityType definitions.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
apiInstance.getAllAssociationEntityTypes((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[AssociationType]**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAllAvailableAssociationTypes"></a>
# **getAllAvailableAssociationTypes**
> [AssociationType] getAllAvailableAssociationTypes(associationTypeId)

Get all available associations for the given AssociationType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
apiInstance.getAllAvailableAssociationTypes(associationTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 

### Return type

[**[AssociationType]**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAllEntitySetPropertyMetadata"></a>
# **getAllEntitySetPropertyMetadata**
> [PropertyType] getAllEntitySetPropertyMetadata(entitySetId)

Get all property type metadata for an entity set.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySetId = null; // String | 
apiInstance.getAllEntitySetPropertyMetadata(entitySetId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**String**](.md)|  | 

### Return type

[**[PropertyType]**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAllEntitySets"></a>
# **getAllEntitySets**
> [EntitySet] getAllEntitySets()

Get all EntitySet definitions.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
apiInstance.getAllEntitySets((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[EntitySet]**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAllEntityTypes"></a>
# **getAllEntityTypes**
> [EntityType] getAllEntityTypes()

Gets all EntityType definitions.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
apiInstance.getAllEntityTypes((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[EntityType]**](EntityType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAllPropertyTypes"></a>
# **getAllPropertyTypes**
> [PropertyType] getAllPropertyTypes()

Gets all PropertyType definitions.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
apiInstance.getAllPropertyTypes((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[PropertyType]**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAllPropertyTypesInNamespace"></a>
# **getAllPropertyTypesInNamespace**
> [PropertyType] getAllPropertyTypesInNamespace(namespace)

Gets all PropertyType definitions under the given namespace.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let namespace = "namespace_example"; // String | 
apiInstance.getAllPropertyTypesInNamespace(namespace, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 

### Return type

[**[PropertyType]**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAllPropertyUsageSummaries"></a>
# **getAllPropertyUsageSummaries**
> {String: PropertyUsageSummary} getAllPropertyUsageSummaries()

Get Property Usage Summary for all properties.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
apiInstance.getAllPropertyUsageSummaries((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**{String: PropertyUsageSummary}**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAssociationType"></a>
# **getAssociationType**
> AssociationType getAssociationType(associationTypeId)

Get the AssociationType definition for the given AssociationType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
apiInstance.getAssociationType(associationTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAssociationTypeDetails"></a>
# **getAssociationTypeDetails**
> AssociationType getAssociationTypeDetails(associationTypeId)

Get details about the AssociationType for the given AssociationType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
apiInstance.getAssociationTypeDetails(associationTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getEntityDataModel"></a>
# **getEntityDataModel**
> EDM getEntityDataModel()

Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';

let apiInstance = new OpenLatticeApi.EdmApi();
apiInstance.getEntityDataModel((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="getEntityDataModelDiff"></a>
# **getEntityDataModelDiff**
> EDMdiff getEntityDataModelDiff(eDMdiff)

Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let eDMdiff = new OpenLatticeApi.EDMdiff(); // EDMdiff | 
apiInstance.getEntityDataModelDiff(eDMdiff, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

<a name="getEntitySet"></a>
# **getEntitySet**
> EntitySet getEntitySet(entitySetId)

Get the EntitySet definition for the given EntitySet UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySetId = null; // String | 
apiInstance.getEntitySet(entitySetId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**String**](.md)|  | 

### Return type

[**EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getEntitySetId"></a>
# **getEntitySetId**
> String getEntitySetId(entitySetName)

Gets the EntitySet UUID for the given EntitySet name.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySetName = "entitySetName_example"; // String | 
apiInstance.getEntitySetId(entitySetName, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetName** | **String**|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getEntitySetPropertyMetadata"></a>
# **getEntitySetPropertyMetadata**
> PropertyType getEntitySetPropertyMetadata(entitySetId, propertyTypeId)

Get specified property type metadata for an entity set.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySetId = null; // String | 
let propertyTypeId = null; // String | 
apiInstance.getEntitySetPropertyMetadata(entitySetId, propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**String**](.md)|  | 
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

[**PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getEntityType"></a>
# **getEntityType**
> EntityType getEntityType(entityTypeId)

Gets the EntityType definition for the given EntityType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
apiInstance.getEntityType(entityTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 

### Return type

[**EntityType**](EntityType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getEntityTypeHierarchy"></a>
# **getEntityTypeHierarchy**
> getEntityTypeHierarchy(entityTypeId)

Get the EntityType hierarchy for the given EntityType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
apiInstance.getEntityTypeHierarchy(entityTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getEntityTypeId"></a>
# **getEntityTypeId**
> String getEntityTypeId(namespace, name)

Gets the EntityType UUID for the given EntityType FQN.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let namespace = openlattice; // String | 
let name = myentitytype; // String | 
apiInstance.getEntityTypeId(namespace, name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPropertyType"></a>
# **getPropertyType**
> PropertyType getPropertyType(propertyTypeId)

Gets the PropertyType definition for the given PropertyType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let propertyTypeId = null; // String | 
apiInstance.getPropertyType(propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

[**PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPropertyTypeId"></a>
# **getPropertyTypeId**
> String getPropertyTypeId(namespace, name)

Gets the PropertyType UUID for the given PropertyType FQN.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let namespace = "namespace_example"; // String | 
let name = "name_example"; // String | 
apiInstance.getPropertyTypeId(namespace, name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPropertyUsageSummary"></a>
# **getPropertyUsageSummary**
> [PropertyUsageSummary] getPropertyUsageSummary(propertyTypeId)

Get Property Usage Summary for property with given ID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let propertyTypeId = null; // String | 
apiInstance.getPropertyUsageSummary(propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

[**[PropertyUsageSummary]**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSchemaContents"></a>
# **getSchemaContents**
> Schema getSchemaContents(namespace, name, opts)

Gets the schema contents for a corresponding namespace and name.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let namespace = "namespace_example"; // String | 
let name = "name_example"; // String | 
let opts = {
  'fileType': "'yaml'" // String | 
};
apiInstance.getSchemaContents(namespace, name, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 
 **fileType** | **String**|  | [optional] [default to &#39;yaml&#39;]

### Return type

[**Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSchemas"></a>
# **getSchemas**
> [Schema] getSchemas()

Gets all schemas.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
apiInstance.getSchemas((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[Schema]**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSchemasInNamespace"></a>
# **getSchemasInNamespace**
> [Schema] getSchemasInNamespace(namespace)

Gets all schemas associated with a given namespace and accessible by the caller.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let namespace = "namespace_example"; // String | 
apiInstance.getSchemasInNamespace(namespace, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 

### Return type

[**[Schema]**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="removeDstEntityTypeFromAssociationType"></a>
# **removeDstEntityTypeFromAssociationType**
> removeDstEntityTypeFromAssociationType(associationTypeId, entityTypeId)

Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
let entityTypeId = null; // String | 
apiInstance.removeDstEntityTypeFromAssociationType(associationTypeId, entityTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 
 **entityTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="removePropertyTypeFromEntityType"></a>
# **removePropertyTypeFromEntityType**
> removePropertyTypeFromEntityType(entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
let propertyTypeId = null; // String | 
apiInstance.removePropertyTypeFromEntityType(entityTypeId, propertyTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 
 **propertyTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="removeSrcEntityTypeFromAssociationType"></a>
# **removeSrcEntityTypeFromAssociationType**
> removeSrcEntityTypeFromAssociationType(associationTypeId, entityTypeId)

Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let associationTypeId = null; // String | 
let entityTypeId = null; // String | 
apiInstance.removeSrcEntityTypeFromAssociationType(associationTypeId, entityTypeId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **associationTypeId** | [**String**](.md)|  | 
 **entityTypeId** | [**String**](.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="reorderPropertyTypesInEntityType"></a>
# **reorderPropertyTypesInEntityType**
> reorderPropertyTypesInEntityType(entityTypeId, propertyTypeIds)

Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
let propertyTypeIds = ["null"]; // [String] | 
apiInstance.reorderPropertyTypesInEntityType(entityTypeId, propertyTypeIds, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 
 **propertyTypeIds** | [**[String]**](String.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="updateEntityDataModel"></a>
# **updateEntityDataModel**
> updateEntityDataModel(EDM)

Updates the entity data model, including schemas, entity types, association types, and property types.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let EDM = new OpenLatticeApi.EDM(); // EDM | 
apiInstance.updateEntityDataModel(EDM, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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

<a name="updateEntitySetMetaData"></a>
# **updateEntitySetMetaData**
> updateEntitySetMetaData(entitySetId, metaDataUpdate)

Updates the EntityType definition for the given EntitySet UUID with the given metadata.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySetId = null; // String | 
let metaDataUpdate = new OpenLatticeApi.MetaDataUpdate(); // MetaDataUpdate | 
apiInstance.updateEntitySetMetaData(entitySetId, metaDataUpdate, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**String**](.md)|  | 
 **metaDataUpdate** | [**MetaDataUpdate**](MetaDataUpdate.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a name="updateEntitySetPropertyMetadata"></a>
# **updateEntitySetPropertyMetadata**
> updateEntitySetPropertyMetadata(entitySetId, propertyTypeId, propertyType)

Updates the property type metadata for the given entity set.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entitySetId = null; // String | 
let propertyTypeId = null; // String | 
let propertyType = new OpenLatticeApi.PropertyType(); // PropertyType | 
apiInstance.updateEntitySetPropertyMetadata(entitySetId, propertyTypeId, propertyType, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entitySetId** | [**String**](.md)|  | 
 **propertyTypeId** | [**String**](.md)|  | 
 **propertyType** | [**PropertyType**](PropertyType.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a name="updateEntityTypeMetaData"></a>
# **updateEntityTypeMetaData**
> updateEntityTypeMetaData(entityTypeId, metaDataUpdate)

Updates the EntityType definition for the given EntityType UUID with the given metadata.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let entityTypeId = null; // String | 
let metaDataUpdate = new OpenLatticeApi.MetaDataUpdate(); // MetaDataUpdate | 
apiInstance.updateEntityTypeMetaData(entityTypeId, metaDataUpdate, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityTypeId** | [**String**](.md)|  | 
 **metaDataUpdate** | [**MetaDataUpdate**](MetaDataUpdate.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a name="updatePropertyTypeMetaData"></a>
# **updatePropertyTypeMetaData**
> updatePropertyTypeMetaData(propertyTypeId, metaDataUpdate)

Updates the PropertyType definition for the given PropertyType UUID with the given metadata.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let propertyTypeId = null; // String | 
let metaDataUpdate = new OpenLatticeApi.MetaDataUpdate(); // MetaDataUpdate | 
apiInstance.updatePropertyTypeMetaData(propertyTypeId, metaDataUpdate, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyTypeId** | [**String**](.md)|  | 
 **metaDataUpdate** | [**MetaDataUpdate**](MetaDataUpdate.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

<a name="updateSchema"></a>
# **updateSchema**
> updateSchema(namespace, name, edmRequest)

Edits the schema contents for a corresponding namespace and name.

### Example
```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.EdmApi();
let namespace = "namespace_example"; // String | 
let name = "name_example"; // String | 
let edmRequest = new OpenLatticeApi.EdmRequest(); // EdmRequest | 
apiInstance.updateSchema(namespace, name, edmRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **String**|  | 
 **name** | **String**|  | 
 **edmRequest** | [**EdmRequest**](EdmRequest.md)|  | 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

