# \EdmApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddDstEntityTypeToAssociationType**](EdmApi.md#AddDstEntityTypeToAssociationType) | **Put** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**AddEntitySetsToLinkingEntitySet**](EdmApi.md#AddEntitySetsToLinkingEntitySet) | **Post** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
[**AddEntitySetsToLinkingEntitySets**](EdmApi.md#AddEntitySetsToLinkingEntitySets) | **Put** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
[**AddPrimaryKeyToEntityType**](EdmApi.md#AddPrimaryKeyToEntityType) | **Put** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Adds a primary key with a given ID to an entity type with a given ID.
[**AddPropertyTypeToEntityType**](EdmApi.md#AddPropertyTypeToEntityType) | **Put** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
[**AddSrcEntityTypeToAssociationType**](EdmApi.md#AddSrcEntityTypeToAssociationType) | **Put** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**CreateAssociationType**](EdmApi.md#CreateAssociationType) | **Post** /datastore/edm/association/type/ | Creates a new AssociationType definition, if it doesn&#39;t exist.
[**CreateEmptySchema**](EdmApi.md#CreateEmptySchema) | **Put** /datastore/edm/schema/{namespace}/{name} | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**CreateEntitySets**](EdmApi.md#CreateEntitySets) | **Post** /datastore/entity-sets | Creates new EntitySet definitions if they don&#39;t exist.
[**CreateEntityType**](EdmApi.md#CreateEntityType) | **Post** /datastore/edm/entity/type/ | Creates a new EntityType definition, if it doesn&#39;t exist.
[**CreatePropertyType**](EdmApi.md#CreatePropertyType) | **Post** /datastore/edm/property/type/ | Creates a new PropertyType definition, if it doesn\&quot;t exist.
[**CreateSchemaIfNotExists**](EdmApi.md#CreateSchemaIfNotExists) | **Post** /datastore/edm/schema | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
[**DeleteAssociationType**](EdmApi.md#DeleteAssociationType) | **Delete** /datastore/edm/association/type/{associationTypeId} | Deletes the AssociationType definition for the given AssociationType UUID.
[**DeleteEntitySet**](EdmApi.md#DeleteEntitySet) | **Delete** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**DeleteEntityType**](EdmApi.md#DeleteEntityType) | **Delete** /datastore/edm/entity/type/{entityTypeId} | Deletes the EntityType definition for the given EntityType UUID.
[**DeletePropertyType**](EdmApi.md#DeletePropertyType) | **Delete** /datastore/edm/property/type/{propertyTypeId} | Deletes the PropertyType definition for the given PropertyType UUID.
[**ForceDeletePropertyType**](EdmApi.md#ForceDeletePropertyType) | **Delete** /datastore/edm/property/type/{propertyTypeId}/force | Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
[**ForceRemovePropertyTypeFromEntityType**](EdmApi.md#ForceRemovePropertyTypeFromEntityType) | **Delete** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId}/force | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
[**GetAllAssociationEntityTypes**](EdmApi.md#GetAllAssociationEntityTypes) | **Get** /datastore/edm/association/type/ | Gets all association EntityType definitions.
[**GetAllAvailableAssociationTypes**](EdmApi.md#GetAllAvailableAssociationTypes) | **Get** /datastore/edm/association/type/{associationTypeId}/available | Get all available associations for the given AssociationType UUID.
[**GetAllEntitySetPropertyMetadata**](EdmApi.md#GetAllEntitySetPropertyMetadata) | **Get** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
[**GetAllEntitySets**](EdmApi.md#GetAllEntitySets) | **Get** /datastore/entity-sets | Get all EntitySet definitions.
[**GetAllEntityTypePropertyMetadata**](EdmApi.md#GetAllEntityTypePropertyMetadata) | **Get** /datastore/edm/entity/type/{entityTypeId}/property/type | Get all EntityType propertyType metadata
[**GetAllEntityTypes**](EdmApi.md#GetAllEntityTypes) | **Get** /datastore/edm/entity/type/ | Gets all EntityType definitions.
[**GetAllPropertyTypes**](EdmApi.md#GetAllPropertyTypes) | **Get** /datastore/edm/property/type/ | Gets all PropertyType definitions.
[**GetAllPropertyTypesInNamespace**](EdmApi.md#GetAllPropertyTypesInNamespace) | **Get** /datastore/edm/property/type/namespace/{namespace} | Gets all PropertyType definitions under the given namespace.
[**GetAllPropertyUsageSummaries**](EdmApi.md#GetAllPropertyUsageSummaries) | **Get** /datastore/edm/summary | Get Property Usage Summary for all properties.
[**GetAssociationType**](EdmApi.md#GetAssociationType) | **Get** /datastore/edm/association/type/{associationTypeId} | Get the AssociationType definition for the given AssociationType UUID.
[**GetAssociationTypeDetails**](EdmApi.md#GetAssociationTypeDetails) | **Get** /datastore/edm/association/type/{associationTypeId}/detailed | Get details about the AssociationType for the given AssociationType UUID.
[**GetEntityDataModel**](EdmApi.md#GetEntityDataModel) | **Get** /datastore/edm/ | Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
[**GetEntityDataModelDiff**](EdmApi.md#GetEntityDataModelDiff) | **Post** /datastore/edm/diff/ | Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
[**GetEntitySet**](EdmApi.md#GetEntitySet) | **Get** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**GetEntitySetId**](EdmApi.md#GetEntitySetId) | **Get** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**GetEntitySetIds**](EdmApi.md#GetEntitySetIds) | **Post** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
[**GetEntitySetPropertyMetadata**](EdmApi.md#GetEntitySetPropertyMetadata) | **Get** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**GetEntityType**](EdmApi.md#GetEntityType) | **Get** /datastore/edm/entity/type/{entityTypeId} | Gets the EntityType definition for the given EntityType UUID.
[**GetEntityTypeHierarchy**](EdmApi.md#GetEntityTypeHierarchy) | **Patch** /datastore/edm/entity/type/{entityTypeId}/hierarchy | Get the EntityType hierarchy for the given EntityType UUID.
[**GetEntityTypeId**](EdmApi.md#GetEntityTypeId) | **Get** /datastore/edm/ids/entity/type/{namespace}/{name} | Gets the EntityType UUID for the given EntityType FQN.
[**GetEntityTypePropertyMetadata**](EdmApi.md#GetEntityTypePropertyMetadata) | **Get** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Get EntityType propertyType metadata
[**GetPropertyMetadataForEntitySets**](EdmApi.md#GetPropertyMetadataForEntitySets) | **Post** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
[**GetPropertyType**](EdmApi.md#GetPropertyType) | **Get** /datastore/edm/property/type/{propertyTypeId} | Gets the PropertyType definition for the given PropertyType UUID.
[**GetPropertyTypeId**](EdmApi.md#GetPropertyTypeId) | **Get** /datastore/edm/ids/property/type/{namespace}/{name} | Gets the PropertyType UUID for the given PropertyType FQN.
[**GetPropertyTypesForEntitySet**](EdmApi.md#GetPropertyTypesForEntitySet) | **Get** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
[**GetPropertyUsageSummary**](EdmApi.md#GetPropertyUsageSummary) | **Get** /datastore/edm/summary/{propertyTypeId} | Get Property Usage Summary for property with given ID.
[**GetSchemaContents**](EdmApi.md#GetSchemaContents) | **Get** /datastore/edm/schema/{namespace}/{name} | Gets the schema contents for a corresponding namespace and name.
[**GetSchemas**](EdmApi.md#GetSchemas) | **Get** /datastore/edm/schema | Gets all schemas.
[**GetSchemasInNamespace**](EdmApi.md#GetSchemasInNamespace) | **Get** /datastore/edm/schema/{namespace} | Gets all schemas associated with a given namespace and accessible by the caller.
[**RemoveDstEntityTypeFromAssociationType**](EdmApi.md#RemoveDstEntityTypeFromAssociationType) | **Delete** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**RemoveEntitySetsFromLinkingEntitySet**](EdmApi.md#RemoveEntitySetsFromLinkingEntitySet) | **Delete** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
[**RemoveEntitySetsFromLinkingEntitySets**](EdmApi.md#RemoveEntitySetsFromLinkingEntitySets) | **Delete** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
[**RemovePrimaryKeyFromEntityType**](EdmApi.md#RemovePrimaryKeyFromEntityType) | **Delete** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Removes a primary key with a given ID from an entity type with a given ID.
[**RemovePropertyTypeFromEntityType**](EdmApi.md#RemovePropertyTypeFromEntityType) | **Delete** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
[**RemoveSrcEntityTypeFromAssociationType**](EdmApi.md#RemoveSrcEntityTypeFromAssociationType) | **Delete** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**ReorderPropertyTypesInEntityType**](EdmApi.md#ReorderPropertyTypesInEntityType) | **Patch** /datastore/edm/entity/type/{entityTypeId}/property/type | Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
[**UpdateEntityDataModel**](EdmApi.md#UpdateEntityDataModel) | **Patch** /datastore/edm/ | Updates the entity data model, including schemas, entity types, association types, and property types.
[**UpdateEntitySetMetaData**](EdmApi.md#UpdateEntitySetMetaData) | **Patch** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**UpdateEntitySetPropertyMetadata**](EdmApi.md#UpdateEntitySetPropertyMetadata) | **Post** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.
[**UpdateEntityTypeMetaData**](EdmApi.md#UpdateEntityTypeMetaData) | **Patch** /datastore/edm/entity/type/{entityTypeId} | Updates the EntityType definition for the given EntityType UUID with the given metadata.
[**UpdateEntityTypePropertyMetadata**](EdmApi.md#UpdateEntityTypePropertyMetadata) | **Post** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Update EntityType Property metadata
[**UpdatePropertyTypeMetaData**](EdmApi.md#UpdatePropertyTypeMetaData) | **Patch** /datastore/edm/property/type/{propertyTypeId} | Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
[**UpdateSchema**](EdmApi.md#UpdateSchema) | **Patch** /datastore/edm/schema/{namespace}/{name} | Edits the schema contents for a corresponding namespace and name.



## AddDstEntityTypeToAssociationType

> AddDstEntityTypeToAssociationType(ctx, associationTypeId, entityTypeId)

Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 
**entityTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddEntitySetsToLinkingEntitySet

> int32 AddEntitySetsToLinkingEntitySet(ctx, linkingEntitySetId, optional)

Adds the entity sets as linked entity sets to the linking entity set

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**linkingEntitySetId** | [**string**](.md)|  | 
 **optional** | ***AddEntitySetsToLinkingEntitySetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a AddEntitySetsToLinkingEntitySetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **requestBody** | [**optional.Interface of []string**](string.md)|  | 

### Return type

**int32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddEntitySetsToLinkingEntitySets

> int32 AddEntitySetsToLinkingEntitySets(ctx, linkingEntitySetId, requestBody)

Adds the entity sets as linked entity sets to the linking entity sets

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**linkingEntitySetId** | **string**|  | 
**requestBody** | [**map[string][]string**](array.md)|  | 

### Return type

**int32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddPrimaryKeyToEntityType

> AddPrimaryKeyToEntityType(ctx, entityTypeId, propertyTypeId)

Adds a primary key with a given ID to an entity type with a given ID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddPropertyTypeToEntityType

> AddPropertyTypeToEntityType(ctx, entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddSrcEntityTypeToAssociationType

> AddSrcEntityTypeToAssociationType(ctx, associationTypeId, entityTypeId)

Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 
**entityTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateAssociationType

> CreateAssociationType(ctx, associationType)

Creates a new AssociationType definition, if it doesn't exist.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationType** | [**[]AssociationType**](AssociationType.md)|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateEmptySchema

> CreateEmptySchema(ctx, namespace, name)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**namespace** | **string**|  | 
**name** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateEntitySets

> CreateEntitySets(ctx, entitySet)

Creates new EntitySet definitions if they don't exist.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySet** | [**[]EntitySet**](EntitySet.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateEntityType

> CreateEntityType(ctx, entityType)

Creates a new EntityType definition, if it doesn't exist.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityType** | [**EntityType**](EntityType.md)|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreatePropertyType

> CreatePropertyType(ctx, propertyType)

Creates a new PropertyType definition, if it doesn\"t exist.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**propertyType** | [**PropertyType**](PropertyType.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateSchemaIfNotExists

> CreateSchemaIfNotExists(ctx, schema)

Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**schema** | [**Schema**](Schema.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteAssociationType

> DeleteAssociationType(ctx, associationTypeId)

Deletes the AssociationType definition for the given AssociationType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteEntitySet

> DeleteEntitySet(ctx, entitySetId)

Deletes the EntitySet definition for the given EntitySet UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteEntityType

> DeleteEntityType(ctx, entityTypeId)

Deletes the EntityType definition for the given EntityType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeletePropertyType

> DeletePropertyType(ctx, propertyTypeId)

Deletes the PropertyType definition for the given PropertyType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ForceDeletePropertyType

> ForceDeletePropertyType(ctx, propertyTypeId)

Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ForceRemovePropertyTypeFromEntityType

> ForceRemovePropertyTypeFromEntityType(ctx, entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllAssociationEntityTypes

> []AssociationType GetAllAssociationEntityTypes(ctx, )

Gets all association EntityType definitions.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllAvailableAssociationTypes

> []AssociationType GetAllAvailableAssociationTypes(ctx, associationTypeId)

Get all available associations for the given AssociationType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 

### Return type

[**[]AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllEntitySetPropertyMetadata

> map[string]EntitySetPropertyMetaData GetAllEntitySetPropertyMetadata(ctx, entitySetId)

Get all entity set property metadata.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 

### Return type

[**map[string]EntitySetPropertyMetaData**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllEntitySets

> []EntitySet GetAllEntitySets(ctx, )

Get all EntitySet definitions.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllEntityTypePropertyMetadata

> map[string]EntityTypePropertyMetadata GetAllEntityTypePropertyMetadata(ctx, entityTypeId)

Get all EntityType propertyType metadata

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 

### Return type

[**map[string]EntityTypePropertyMetadata**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllEntityTypes

> []EntityType GetAllEntityTypes(ctx, )

Gets all EntityType definitions.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]EntityType**](EntityType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllPropertyTypes

> []PropertyType GetAllPropertyTypes(ctx, )

Gets all PropertyType definitions.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllPropertyTypesInNamespace

> []PropertyType GetAllPropertyTypesInNamespace(ctx, namespace)

Gets all PropertyType definitions under the given namespace.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**namespace** | **string**|  | 

### Return type

[**[]PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllPropertyUsageSummaries

> map[string]PropertyUsageSummary GetAllPropertyUsageSummaries(ctx, )

Get Property Usage Summary for all properties.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**map[string]PropertyUsageSummary**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAssociationType

> AssociationType GetAssociationType(ctx, associationTypeId)

Get the AssociationType definition for the given AssociationType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAssociationTypeDetails

> AssociationType GetAssociationTypeDetails(ctx, associationTypeId)

Get details about the AssociationType for the given AssociationType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 

### Return type

[**AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityDataModel

> Edm GetEntityDataModel(ctx, )

Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**Edm**](EDM.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityDataModelDiff

> EdMdiff GetEntityDataModelDiff(ctx, edMdiff)

Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**edMdiff** | [**EdMdiff**](EdMdiff.md)|  | 

### Return type

[**EdMdiff**](EDMdiff.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySet

> EntitySet GetEntitySet(ctx, entitySetId)

Get the EntitySet definition for the given EntitySet UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 

### Return type

[**EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySetId

> string GetEntitySetId(ctx, entitySetName)

Gets the EntitySet UUID for the given EntitySet name.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetName** | **string**|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySetIds

> map[string]string GetEntitySetIds(ctx, optional)

Get IDs for entity sets given their names.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetEntitySetIdsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetEntitySetIdsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**optional.Interface of []string**](string.md)|  | 

### Return type

**map[string]string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySetPropertyMetadata

> EntitySetPropertyMetaData GetEntitySetPropertyMetadata(ctx, entitySetId, propertyTypeId)

Get specified property type metadata for an entity set.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

[**EntitySetPropertyMetaData**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityType

> EntityType GetEntityType(ctx, entityTypeId)

Gets the EntityType definition for the given EntityType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 

### Return type

[**EntityType**](EntityType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityTypeHierarchy

> GetEntityTypeHierarchy(ctx, entityTypeId)

Get the EntityType hierarchy for the given EntityType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityTypeId

> string GetEntityTypeId(ctx, namespace, name)

Gets the EntityType UUID for the given EntityType FQN.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**namespace** | **string**|  | 
**name** | **string**|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityTypePropertyMetadata

> EntityTypePropertyMetadata GetEntityTypePropertyMetadata(ctx, entityTypeId, propertyTypeId)

Get EntityType propertyType metadata

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

[**EntityTypePropertyMetadata**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPropertyMetadataForEntitySets

> map[string]map[string]EntitySetPropertyMetaData GetPropertyMetadataForEntitySets(ctx, optional)

Get property metadata for entity sets.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetPropertyMetadataForEntitySetsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetPropertyMetadataForEntitySetsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**optional.Interface of []string**](string.md)|  | 

### Return type

[**map[string]map[string]EntitySetPropertyMetaData**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPropertyType

> PropertyType GetPropertyType(ctx, propertyTypeId)

Gets the PropertyType definition for the given PropertyType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**propertyTypeId** | [**string**](.md)|  | 

### Return type

[**PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPropertyTypeId

> string GetPropertyTypeId(ctx, namespace, name)

Gets the PropertyType UUID for the given PropertyType FQN.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**namespace** | **string**|  | 
**name** | **string**|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPropertyTypesForEntitySet

> map[string]PropertyType GetPropertyTypesForEntitySet(ctx, entitySetId)

Get all Property Types for entity set

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 

### Return type

[**map[string]PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetPropertyUsageSummary

> []PropertyUsageSummary GetPropertyUsageSummary(ctx, propertyTypeId)

Get Property Usage Summary for property with given ID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**propertyTypeId** | [**string**](.md)|  | 

### Return type

[**[]PropertyUsageSummary**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSchemaContents

> Schema GetSchemaContents(ctx, namespace, name, optional)

Gets the schema contents for a corresponding namespace and name.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**namespace** | **string**|  | 
**name** | **string**|  | 
 **optional** | ***GetSchemaContentsOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetSchemaContentsOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **fileType** | **optional.String**|  | [default to yaml]

### Return type

[**Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSchemas

> []Schema GetSchemas(ctx, )

Gets all schemas.

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetSchemasInNamespace

> []Schema GetSchemasInNamespace(ctx, namespace)

Gets all schemas associated with a given namespace and accessible by the caller.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**namespace** | **string**|  | 

### Return type

[**[]Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveDstEntityTypeFromAssociationType

> RemoveDstEntityTypeFromAssociationType(ctx, associationTypeId, entityTypeId)

Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 
**entityTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveEntitySetsFromLinkingEntitySet

> int32 RemoveEntitySetsFromLinkingEntitySet(ctx, linkingEntitySetId, optional)

Removes/unlinks the linked entity sets from the linking entity set

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**linkingEntitySetId** | **string**|  | 
 **optional** | ***RemoveEntitySetsFromLinkingEntitySetOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a RemoveEntitySetsFromLinkingEntitySetOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **requestBody** | [**optional.Interface of []string**](string.md)|  | 

### Return type

**int32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveEntitySetsFromLinkingEntitySets

> int32 RemoveEntitySetsFromLinkingEntitySets(ctx, linkingEntitySetId, requestBody)

Removes/unlinks the linked entity sets from the linking entity set

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**linkingEntitySetId** | [**string**](.md)|  | 
**requestBody** | [**map[string][]string**](array.md)|  | 

### Return type

**int32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemovePrimaryKeyFromEntityType

> RemovePrimaryKeyFromEntityType(ctx, entityTypeId, propertyTypeId)

Removes a primary key with a given ID from an entity type with a given ID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemovePropertyTypeFromEntityType

> RemovePropertyTypeFromEntityType(ctx, entityTypeId, propertyTypeId)

Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveSrcEntityTypeFromAssociationType

> RemoveSrcEntityTypeFromAssociationType(ctx, associationTypeId, entityTypeId)

Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**associationTypeId** | [**string**](.md)|  | 
**entityTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReorderPropertyTypesInEntityType

> ReorderPropertyTypesInEntityType(ctx, entityTypeId, propertyTypeIds)

Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeIds** | [**[]string**](string.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateEntityDataModel

> UpdateEntityDataModel(ctx, edm)

Updates the entity data model, including schemas, entity types, association types, and property types.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**edm** | [**Edm**](Edm.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateEntitySetMetaData

> int32 UpdateEntitySetMetaData(ctx, entitySetId, metadataUpdate)

Updates the EntitySet definition for the given EntitySet UUID with the given metadata.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

**int32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateEntitySetPropertyMetadata

> UpdateEntitySetPropertyMetadata(ctx, entitySetId, propertyTypeId, metadataUpdate)

Updates the property type metadata for the given entity set.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 
**metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateEntityTypeMetaData

> UpdateEntityTypeMetaData(ctx, entityTypeId, metadataUpdate)

Updates the EntityType definition for the given EntityType UUID with the given metadata.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateEntityTypePropertyMetadata

> UpdateEntityTypePropertyMetadata(ctx, entityTypeId, propertyTypeId)

Update EntityType Property metadata

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdatePropertyTypeMetaData

> UpdatePropertyTypeMetaData(ctx, propertyTypeId, metadataUpdate)

Updates the PropertyType definition for the given PropertyType UUID with the given metadata.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**propertyTypeId** | [**string**](.md)|  | 
**metadataUpdate** | [**MetadataUpdate**](MetadataUpdate.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateSchema

> UpdateSchema(ctx, namespace, name, edmRequest)

Edits the schema contents for a corresponding namespace and name.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**namespace** | **string**|  | 
**name** | **string**|  | 
**edmRequest** | [**EdmRequest**](EdmRequest.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

