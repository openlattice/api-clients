# EdmApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddDstEntityTypeToAssociationType**](EdmApi.md#AddDstEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**AddPropertyTypeToEntityType**](EdmApi.md#AddPropertyTypeToEntityType) | **PUT** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
[**AddSrcEntityTypeToAssociationType**](EdmApi.md#AddSrcEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**CreateAssociationType**](EdmApi.md#CreateAssociationType) | **POST** /datastore/edm/association/type/ | Creates a new AssociationType definition, if it doesn\&quot;t exist.
[**CreateEmptySchema**](EdmApi.md#CreateEmptySchema) | **PUT** /datastore/edm/schema/{namespace}/{name} | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**CreateEntitySets**](EdmApi.md#CreateEntitySets) | **POST** /datastore/edm/entity/set | Create new EntitySet definitions if they don\&quot;t exist.
[**CreateEntityType**](EdmApi.md#CreateEntityType) | **POST** /datastore/edm/entity/type/ | Creates a new EntityType definition, if it doesn&#39;t exist.
[**CreatePropertyType**](EdmApi.md#CreatePropertyType) | **POST** /datastore/edm/property/type/ | Creates a new PropertyType definition, if it doesn\&quot;t exist.
[**CreateSchemaIfNotExists**](EdmApi.md#CreateSchemaIfNotExists) | **POST** /datastore/edm/schema | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**DeleteAssociationType**](EdmApi.md#DeleteAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId} | Delete the AssociationType definition for the given AssociationType UUID.
[**DeleteEntitySet**](EdmApi.md#DeleteEntitySet) | **DELETE** /datastore/edm/entity/set/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**DeleteEntityType**](EdmApi.md#DeleteEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId} | Deletes the EntityType definition for the given EntityType UUID.
[**DeletePropertyType**](EdmApi.md#DeletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId} | Deletes the PropertyType definition for the given PropertyType UUID.
[**ForceDeletePropertyType**](EdmApi.md#ForceDeletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId}/force | Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
[**ForceRemovePropertyTypeFromEntityType**](EdmApi.md#ForceRemovePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId}/force | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
[**GetAllAssociationEntityTypes**](EdmApi.md#GetAllAssociationEntityTypes) | **GET** /datastore/edm/association/type/ | Gets all association EntityType definitions.
[**GetAllAvailableAssociationTypes**](EdmApi.md#GetAllAvailableAssociationTypes) | **GET** /datastore/edm/association/type/{associationTypeId}/available | Get all available associations for the given AssociationType UUID.
[**GetAllEntitySetPropertyMetadata**](EdmApi.md#GetAllEntitySetPropertyMetadata) | **GET** /datastore/edm/entity/set/{entitySetId}/property/type | Get all property type metadata for an entity set.
[**GetAllEntitySets**](EdmApi.md#GetAllEntitySets) | **GET** /datastore/edm/entity/set | Get all EntitySet definitions.
[**GetAllEntityTypes**](EdmApi.md#GetAllEntityTypes) | **GET** /datastore/edm/entity/type/ | Gets all EntityType definitions.
[**GetAllPropertyTypes**](EdmApi.md#GetAllPropertyTypes) | **GET** /datastore/edm/property/type/ | Gets all PropertyType definitions.
[**GetAllPropertyTypesInNamespace**](EdmApi.md#GetAllPropertyTypesInNamespace) | **GET** /datastore/edm/property/type/namespace/{namespace} | Gets all PropertyType definitions under the given namespace.
[**GetAllPropertyUsageSummaries**](EdmApi.md#GetAllPropertyUsageSummaries) | **GET** /datastore/edm/summary | Get Property Usage Summary for all properties.
[**GetAssociationType**](EdmApi.md#GetAssociationType) | **GET** /datastore/edm/association/type/{associationTypeId} | Get the AssociationType definition for the given AssociationType UUID.
[**GetAssociationTypeDetails**](EdmApi.md#GetAssociationTypeDetails) | **GET** /datastore/edm/association/type/{associationTypeId}/detailed | Get details about the AssociationType for the given AssociationType UUID.
[**GetEntityDataModel**](EdmApi.md#GetEntityDataModel) | **GET** /datastore/edm/ | Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
[**GetEntityDataModelDiff**](EdmApi.md#GetEntityDataModelDiff) | **POST** /datastore/edm/diff/ | Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
[**GetEntityDataModelVersion**](EdmApi.md#GetEntityDataModelVersion) | **GET** /datastore/edm/version/ | Returns the current entity data model version.
[**GetEntitySet**](EdmApi.md#GetEntitySet) | **GET** /datastore/edm/entity/set/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**GetEntitySetId**](EdmApi.md#GetEntitySetId) | **GET** /datastore/edm/ids/entity/set/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**GetEntitySetPropertyMetadata**](EdmApi.md#GetEntitySetPropertyMetadata) | **GET** /datastore/edm/entity/set/{entitySetId}/property/type/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**GetEntityType**](EdmApi.md#GetEntityType) | **GET** /datastore/edm/entity/type/{entityTypeId} | Gets the EntityType definition for the given EntityType UUID.
[**GetEntityTypeHierarchy**](EdmApi.md#GetEntityTypeHierarchy) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/hierarchy | Get the EntityType hierarchy for the given EntityType UUID.
[**GetEntityTypeId**](EdmApi.md#GetEntityTypeId) | **GET** /datastore/edm/ids/entity/type/{namespace}/{name} | Gets the EntityType UUID for the given EntityType FQN.
[**GetPropertyType**](EdmApi.md#GetPropertyType) | **GET** /datastore/edm/property/type/{propertyTypeId} | Gets the PropertyType definition for the given PropertyType UUID.
[**GetPropertyTypeId**](EdmApi.md#GetPropertyTypeId) | **GET** /datastore/edm/ids/property/type/{namespace}/{name} | Gets the PropertyType UUID for the given PropertyType FQN.
[**GetPropertyUsageSummary**](EdmApi.md#GetPropertyUsageSummary) | **GET** /datastore/edm/summary/{propertyTypeId} | Get Property Usage Summary for property with given ID.
[**GetSchemaContents**](EdmApi.md#GetSchemaContents) | **GET** /datastore/edm/schema/{namespace}/{name} | Gets the schema contents for a corresponding namespace and name.
[**GetSchemas**](EdmApi.md#GetSchemas) | **GET** /datastore/edm/schema | Gets all schemas.
[**GetSchemasInNamespace**](EdmApi.md#GetSchemasInNamespace) | **GET** /datastore/edm/schema/{namespace} | Gets all schemas associated with a given namespace and accessible by the caller.
[**RemoveDstEntityTypeFromAssociationType**](EdmApi.md#RemoveDstEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**RemovePropertyTypeFromEntityType**](EdmApi.md#RemovePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
[**RemoveSrcEntityTypeFromAssociationType**](EdmApi.md#RemoveSrcEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**ReorderPropertyTypesInEntityType**](EdmApi.md#ReorderPropertyTypesInEntityType) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/property/type | Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
[**UpdateEntityDataModel**](EdmApi.md#UpdateEntityDataModel) | **PATCH** /datastore/edm/ | Updates the entity data model, including schemas, entity types, association types, and property types.
[**UpdateEntitySetMetaData**](EdmApi.md#UpdateEntitySetMetaData) | **PATCH** /datastore/edm/entity/set/{entitySetId} | Updates the EntityType definition for the given EntitySet UUID with the given metadata.
[**UpdateEntitySetPropertyMetadata**](EdmApi.md#UpdateEntitySetPropertyMetadata) | **POST** /datastore/edm/entity/set/{entitySetId}/property/type/{propertyTypeId}/ | Updates the property type metadata for the given entity set.
[**UpdateEntityTypeMetaData**](EdmApi.md#UpdateEntityTypeMetaData) | **PATCH** /datastore/edm/entity/type/{entityTypeId} | Updates the EntityType definition for the given EntityType UUID with the given metadata.
[**UpdatePropertyTypeMetaData**](EdmApi.md#UpdatePropertyTypeMetaData) | **PATCH** /datastore/edm/property/type/{propertyTypeId} | Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
[**UpdateSchema**](EdmApi.md#UpdateSchema) | **PATCH** /datastore/edm/schema/{namespace}/{name} | Edits the schema contents for a corresponding namespace and name.


# **AddDstEntityTypeToAssociationType**
> AddDstEntityTypeToAssociationType(association.type.id, entity.type.id)

Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 
var.entity.type.id <- 'entity.type.id_example' # character | 

#Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$AddDstEntityTypeToAssociationType(var.association.type.id, var.entity.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 
 **entity.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **AddPropertyTypeToEntityType**
> AddPropertyTypeToEntityType(entity.type.id, property.type.id)

Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 
var.property.type.id <- 'property.type.id_example' # character | 

#Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$AddPropertyTypeToEntityType(var.entity.type.id, var.property.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 
 **property.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **AddSrcEntityTypeToAssociationType**
> AddSrcEntityTypeToAssociationType(association.type.id, entity.type.id)

Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 
var.entity.type.id <- 'entity.type.id_example' # character | 

#Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$AddSrcEntityTypeToAssociationType(var.association.type.id, var.entity.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 
 **entity.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **CreateAssociationType**
> CreateAssociationType(association.type)

Creates a new AssociationType definition, if it doesn\"t exist.

### Example
```R
library(openlattice)

var.association.type <- [array$new()] # AssociationType | 

#Creates a new AssociationType definition, if it doesn\"t exist.
api.instance <- EdmApi$new()
api.instance$CreateAssociationType(var.association.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type** | [**AssociationType**](array.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **CreateEmptySchema**
> CreateEmptySchema(namespace, name)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 

#Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$CreateEmptySchema(var.namespace, var.name)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **CreateEntitySets**
> CreateEntitySets(entity.set)

Create new EntitySet definitions if they don\"t exist.

### Example
```R
library(openlattice)

var.entity.set <- [array$new()] # EntitySet | 

#Create new EntitySet definitions if they don\"t exist.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$CreateEntitySets(var.entity.set)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set** | [**EntitySet**](array.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **CreateEntityType**
> CreateEntityType(entity.type)

Creates a new EntityType definition, if it doesn't exist.

### Example
```R
library(openlattice)

var.entity.type <- EntityType$new() # EntityType | 

#Creates a new EntityType definition, if it doesn't exist.
api.instance <- EdmApi$new()
api.instance$CreateEntityType(var.entity.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type** | [**EntityType**](EntityType.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **CreatePropertyType**
> CreatePropertyType(property.type)

Creates a new PropertyType definition, if it doesn\"t exist.

### Example
```R
library(openlattice)

var.property.type <- PropertyType$new() # PropertyType | 

#Creates a new PropertyType definition, if it doesn\"t exist.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$CreatePropertyType(var.property.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property.type** | [**PropertyType**](PropertyType.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **CreateSchemaIfNotExists**
> CreateSchemaIfNotExists(schema)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Example
```R
library(openlattice)

var.schema <- Schema$new() # Schema | 

#Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$CreateSchemaIfNotExists(var.schema)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **schema** | [**Schema**](Schema.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **DeleteAssociationType**
> DeleteAssociationType(association.type.id)

Delete the AssociationType definition for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 

#Delete the AssociationType definition for the given AssociationType UUID.
api.instance <- EdmApi$new()
api.instance$DeleteAssociationType(var.association.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **DeleteEntitySet**
> DeleteEntitySet(entity.set.id)

Deletes the EntitySet definition for the given EntitySet UUID.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Deletes the EntitySet definition for the given EntitySet UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$DeleteEntitySet(var.entity.set.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **DeleteEntityType**
> DeleteEntityType(entity.type.id)

Deletes the EntityType definition for the given EntityType UUID.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 

#Deletes the EntityType definition for the given EntityType UUID.
api.instance <- EdmApi$new()
api.instance$DeleteEntityType(var.entity.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **DeletePropertyType**
> DeletePropertyType(property.type.id)

Deletes the PropertyType definition for the given PropertyType UUID.

### Example
```R
library(openlattice)

var.property.type.id <- 'property.type.id_example' # character | 

#Deletes the PropertyType definition for the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$DeletePropertyType(var.property.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **ForceDeletePropertyType**
> ForceDeletePropertyType(property.type.id)

Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.

### Example
```R
library(openlattice)

var.property.type.id <- 'property.type.id_example' # character | 

#Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$ForceDeletePropertyType(var.property.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **ForceRemovePropertyTypeFromEntityType**
> ForceRemovePropertyTypeFromEntityType(entity.type.id, property.type.id)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 
var.property.type.id <- 'property.type.id_example' # character | 

#Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$ForceRemovePropertyTypeFromEntityType(var.entity.type.id, var.property.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 
 **property.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **GetAllAssociationEntityTypes**
> AssociationType GetAllAssociationEntityTypes()

Gets all association EntityType definitions.

### Example
```R
library(openlattice)


#Gets all association EntityType definitions.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllAssociationEntityTypes()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**AssociationType**](associationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAllAvailableAssociationTypes**
> AssociationType GetAllAvailableAssociationTypes(association.type.id)

Get all available associations for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 

#Get all available associations for the given AssociationType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllAvailableAssociationTypes(var.association.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 

### Return type

[**AssociationType**](associationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAllEntitySetPropertyMetadata**
> PropertyType GetAllEntitySetPropertyMetadata(entity.set.id)

Get all property type metadata for an entity set.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Get all property type metadata for an entity set.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllEntitySetPropertyMetadata(var.entity.set.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

[**PropertyType**](propertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAllEntitySets**
> EntitySet GetAllEntitySets()

Get all EntitySet definitions.

### Example
```R
library(openlattice)


#Get all EntitySet definitions.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllEntitySets()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EntitySet**](entitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAllEntityTypes**
> EntityType GetAllEntityTypes()

Gets all EntityType definitions.

### Example
```R
library(openlattice)


#Gets all EntityType definitions.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllEntityTypes()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EntityType**](entityType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAllPropertyTypes**
> PropertyType GetAllPropertyTypes()

Gets all PropertyType definitions.

### Example
```R
library(openlattice)


#Gets all PropertyType definitions.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllPropertyTypes()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PropertyType**](propertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAllPropertyTypesInNamespace**
> PropertyType GetAllPropertyTypesInNamespace(namespace)

Gets all PropertyType definitions under the given namespace.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 

#Gets all PropertyType definitions under the given namespace.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllPropertyTypesInNamespace(var.namespace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 

### Return type

[**PropertyType**](propertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAllPropertyUsageSummaries**
> PropertyUsageSummary GetAllPropertyUsageSummaries()

Get Property Usage Summary for all properties.

### Example
```R
library(openlattice)


#Get Property Usage Summary for all properties.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllPropertyUsageSummaries()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PropertyUsageSummary**](propertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAssociationType**
> AssociationType GetAssociationType(association.type.id)

Get the AssociationType definition for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 

#Get the AssociationType definition for the given AssociationType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAssociationType(var.association.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 

### Return type

[**AssociationType**](associationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAssociationTypeDetails**
> AssociationType GetAssociationTypeDetails(association.type.id)

Get details about the AssociationType for the given AssociationType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 

#Get details about the AssociationType for the given AssociationType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAssociationTypeDetails(var.association.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 

### Return type

[**AssociationType**](associationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetEntityDataModel**
> EDM GetEntityDataModel()

Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.

### Example
```R
library(openlattice)


#Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
api.instance <- EdmApi$new()
result <- api.instance$GetEntityDataModel()
dput(result)
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



# **GetEntityDataModelDiff**
> EDMdiff GetEntityDataModelDiff(ed.mdiff)

Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.

### Example
```R
library(openlattice)

var.ed.mdiff <- EDMdiff$new() # EDMdiff | 

#Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetEntityDataModelDiff(var.ed.mdiff)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ed.mdiff** | [**EDMdiff**](EDMdiff.md)|  | 

### Return type

[**EDMdiff**](EDMdiff.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **GetEntityDataModelVersion**
> GetEntityDataModelVersion()

Returns the current entity data model version.

### Example
```R
library(openlattice)


#Returns the current entity data model version.
api.instance <- EdmApi$new()
api.instance$GetEntityDataModelVersion()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **GetEntitySet**
> EntitySet GetEntitySet(entity.set.id)

Get the EntitySet definition for the given EntitySet UUID.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 

#Get the EntitySet definition for the given EntitySet UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetEntitySet(var.entity.set.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 

### Return type

[**EntitySet**](entitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetEntitySetId**
> character GetEntitySetId(entity.set.name)

Gets the EntitySet UUID for the given EntitySet name.

### Example
```R
library(openlattice)

var.entity.set.name <- 'entity.set.name_example' # character | 

#Gets the EntitySet UUID for the given EntitySet name.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetEntitySetId(var.entity.set.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.name** | **character**|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetEntitySetPropertyMetadata**
> PropertyType GetEntitySetPropertyMetadata(entity.set.id, property.type.id)

Get specified property type metadata for an entity set.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.property.type.id <- 'property.type.id_example' # character | 

#Get specified property type metadata for an entity set.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetEntitySetPropertyMetadata(var.entity.set.id, var.property.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **property.type.id** | [**character**](.md)|  | 

### Return type

[**PropertyType**](propertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetEntityType**
> EntityType GetEntityType(entity.type.id)

Gets the EntityType definition for the given EntityType UUID.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 

#Gets the EntityType definition for the given EntityType UUID.
api.instance <- EdmApi$new()
result <- api.instance$GetEntityType(var.entity.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 

### Return type

[**EntityType**](entityType.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetEntityTypeHierarchy**
> GetEntityTypeHierarchy(entity.type.id)

Get the EntityType hierarchy for the given EntityType UUID.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 

#Get the EntityType hierarchy for the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$GetEntityTypeHierarchy(var.entity.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **GetEntityTypeId**
> character GetEntityTypeId(namespace, name)

Gets the EntityType UUID for the given EntityType FQN.

### Example
```R
library(openlattice)

var.namespace <- 'openlattice' # character | 
var.name <- 'myentitytype' # character | 

#Gets the EntityType UUID for the given EntityType FQN.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetEntityTypeId(var.namespace, var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetPropertyType**
> PropertyType GetPropertyType(property.type.id)

Gets the PropertyType definition for the given PropertyType UUID.

### Example
```R
library(openlattice)

var.property.type.id <- 'property.type.id_example' # character | 

#Gets the PropertyType definition for the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetPropertyType(var.property.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property.type.id** | [**character**](.md)|  | 

### Return type

[**PropertyType**](propertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetPropertyTypeId**
> character GetPropertyTypeId(namespace, name)

Gets the PropertyType UUID for the given PropertyType FQN.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 

#Gets the PropertyType UUID for the given PropertyType FQN.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetPropertyTypeId(var.namespace, var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetPropertyUsageSummary**
> PropertyUsageSummary GetPropertyUsageSummary(property.type.id)

Get Property Usage Summary for property with given ID.

### Example
```R
library(openlattice)

var.property.type.id <- 'property.type.id_example' # character | 

#Get Property Usage Summary for property with given ID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetPropertyUsageSummary(var.property.type.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property.type.id** | [**character**](.md)|  | 

### Return type

[**PropertyUsageSummary**](propertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetSchemaContents**
> Schema GetSchemaContents(namespace, name, file.type='yaml')

Gets the schema contents for a corresponding namespace and name.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 
var.file.type <- 'yaml' # character | 

#Gets the schema contents for a corresponding namespace and name.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetSchemaContents(var.namespace, var.name, file.type=var.file.type)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 
 **file.type** | **character**|  | [optional] [default to &#39;yaml&#39;]

### Return type

[**Schema**](schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetSchemas**
> Schema GetSchemas()

Gets all schemas.

### Example
```R
library(openlattice)


#Gets all schemas.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetSchemas()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Schema**](schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetSchemasInNamespace**
> Schema GetSchemasInNamespace(namespace)

Gets all schemas associated with a given namespace and accessible by the caller.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 

#Gets all schemas associated with a given namespace and accessible by the caller.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetSchemasInNamespace(var.namespace)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 

### Return type

[**Schema**](schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **RemoveDstEntityTypeFromAssociationType**
> RemoveDstEntityTypeFromAssociationType(association.type.id, entity.type.id)

Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 
var.entity.type.id <- 'entity.type.id_example' # character | 

#Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$RemoveDstEntityTypeFromAssociationType(var.association.type.id, var.entity.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 
 **entity.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **RemovePropertyTypeFromEntityType**
> RemovePropertyTypeFromEntityType(entity.type.id, property.type.id)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 
var.property.type.id <- 'property.type.id_example' # character | 

#Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$RemovePropertyTypeFromEntityType(var.entity.type.id, var.property.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 
 **property.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **RemoveSrcEntityTypeFromAssociationType**
> RemoveSrcEntityTypeFromAssociationType(association.type.id, entity.type.id)

Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Example
```R
library(openlattice)

var.association.type.id <- 'association.type.id_example' # character | 
var.entity.type.id <- 'entity.type.id_example' # character | 

#Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$RemoveSrcEntityTypeFromAssociationType(var.association.type.id, var.entity.type.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **association.type.id** | [**character**](.md)|  | 
 **entity.type.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **ReorderPropertyTypesInEntityType**
> ReorderPropertyTypesInEntityType(entity.type.id, property.type.ids)

Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 
var.property.type.ids <- ['property.type.ids_example'] # character | 

#Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$ReorderPropertyTypesInEntityType(var.entity.type.id, var.property.type.ids)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 
 **property.type.ids** | [**character**](character.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **UpdateEntityDataModel**
> UpdateEntityDataModel(EDM)

Updates the entity data model, including schemas, entity types, association types, and property types.

### Example
```R
library(openlattice)

var.EDM <- EDM$new() # EDM | 

#Updates the entity data model, including schemas, entity types, association types, and property types.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateEntityDataModel(var.EDM)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EDM** | [**EDM**](EDM.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateEntitySetMetaData**
> UpdateEntitySetMetaData(entity.set.id, meta.data.update)

Updates the EntityType definition for the given EntitySet UUID with the given metadata.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.meta.data.update <- MetaDataUpdate$new() # MetaDataUpdate | 

#Updates the EntityType definition for the given EntitySet UUID with the given metadata.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateEntitySetMetaData(var.entity.set.id, var.meta.data.update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **meta.data.update** | [**MetaDataUpdate**](MetaDataUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateEntitySetPropertyMetadata**
> UpdateEntitySetPropertyMetadata(entity.set.id, property.type.id, property.type)

Updates the property type metadata for the given entity set.

### Example
```R
library(openlattice)

var.entity.set.id <- 'entity.set.id_example' # character | 
var.property.type.id <- 'property.type.id_example' # character | 
var.property.type <- PropertyType$new() # PropertyType | 

#Updates the property type metadata for the given entity set.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateEntitySetPropertyMetadata(var.entity.set.id, var.property.type.id, var.property.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.set.id** | [**character**](.md)|  | 
 **property.type.id** | [**character**](.md)|  | 
 **property.type** | [**PropertyType**](PropertyType.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateEntityTypeMetaData**
> UpdateEntityTypeMetaData(entity.type.id, entity.type)

Updates the EntityType definition for the given EntityType UUID with the given metadata.

### Example
```R
library(openlattice)

var.entity.type.id <- 'entity.type.id_example' # character | 
var.entity.type <- EntityType$new() # EntityType | 

#Updates the EntityType definition for the given EntityType UUID with the given metadata.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateEntityTypeMetaData(var.entity.type.id, var.entity.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.type.id** | [**character**](.md)|  | 
 **entity.type** | [**EntityType**](EntityType.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdatePropertyTypeMetaData**
> UpdatePropertyTypeMetaData(property.type.id, property.type)

Updates the PropertyType definition for the given PropertyType UUID with the given metadata.

### Example
```R
library(openlattice)

var.property.type.id <- 'property.type.id_example' # character | 
var.property.type <- PropertyType$new() # PropertyType | 

#Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdatePropertyTypeMetaData(var.property.type.id, var.property.type)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **property.type.id** | [**character**](.md)|  | 
 **property.type** | [**PropertyType**](PropertyType.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateSchema**
> UpdateSchema(namespace, name, edm.request)

Edits the schema contents for a corresponding namespace and name.

### Example
```R
library(openlattice)

var.namespace <- 'namespace_example' # character | 
var.name <- 'name_example' # character | 
var.edm.request <- EdmRequest$new() # EdmRequest | 

#Edits the schema contents for a corresponding namespace and name.
api.instance <- EdmApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateSchema(var.namespace, var.name, var.edm.request)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **namespace** | **character**|  | 
 **name** | **character**|  | 
 **edm.request** | [**EdmRequest**](EdmRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



