# \DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CreateAssociations**](DataApi.md#CreateAssociations) | **Post** /datastore/data/association | Creates a new set of associations.
[**CreateEdges**](DataApi.md#CreateEdges) | **Put** /datastore/data/association | Creates a new set of associations.
[**CreateEntities**](DataApi.md#CreateEntities) | **Post** /datastore/data/set/ | Creates a new set of entities.
[**CreateEntityAndAssociationData**](DataApi.md#CreateEntityAndAssociationData) | **Post** /datastore/data | Creates entities and assocations
[**DeleteAllEntitiesFromEntitySet**](DataApi.md#DeleteAllEntitiesFromEntitySet) | **Delete** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**DeleteEntities**](DataApi.md#DeleteEntities) | **Delete** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
[**DeleteEntitiesAndNeighbors**](DataApi.md#DeleteEntitiesAndNeighbors) | **Post** /datastore/data/set/{entitySetId}/neighbors | Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
[**DeleteEntity**](DataApi.md#DeleteEntity) | **Delete** /datastore/data/{entitySetId}/{entityKeyId} | Deletes a single entity from an entity set.
[**DeleteEntityProperties**](DataApi.md#DeleteEntityProperties) | **Delete** /datastore/data/{entitySetId}/{entityKeyId}/properties | Deletes properties from an entity.
[**GetEntity**](DataApi.md#GetEntity) | **Get** /datastore/data/{entitySetId}/{entityKeyId} | Loads a single entity by its entityKeyId and entitySetId
[**GetEntityPropertyValues**](DataApi.md#GetEntityPropertyValues) | **Get** /datastore/data/{entitySetId}/{entityKeyId}/{propertyTypeId} | Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
[**GetEntitySetSize**](DataApi.md#GetEntitySetSize) | **Get** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**LoadEntitySetData**](DataApi.md#LoadEntitySetData) | **Get** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**LoadLinkedEntitySetBreakdown**](DataApi.md#LoadLinkedEntitySetBreakdown) | **Post** /datastore/data/set/{linkedEntitySetId}/detailed | Loads a linked entity set breakdown with the selected linked entities and properties.
[**LoadSelectedEntitySetData**](DataApi.md#LoadSelectedEntitySetData) | **Post** /datastore/data/set/{entitySetId} | Gets a list of entities by UUIDs
[**ReplaceAssociationData**](DataApi.md#ReplaceAssociationData) | **Patch** /datastore/data/association | Replaces Association Data
[**ReplaceEntityProperties**](DataApi.md#ReplaceEntityProperties) | **Patch** /datastore/data/set/{entitySetId} | Replaces Entity Properties
[**UpdateEntitiesInEntitySet**](DataApi.md#UpdateEntitiesInEntitySet) | **Put** /datastore/data/set/{entitySetId} | Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.



## CreateAssociations

> map[string][]string CreateAssociations(ctx, inlineObject)

Creates a new set of associations.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**inlineObject** | [**InlineObject**](InlineObject.md)|  | 

### Return type

[**map[string][]string**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateEdges

> int32 CreateEdges(ctx, dataEdgeKey)

Creates a new set of associations.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataEdgeKey** | [**[]DataEdgeKey**](DataEdgeKey.md)|  | 

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


## CreateEntities

> []string CreateEntities(ctx, setId, requestBody)

Creates a new set of entities.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**setId** | [**string**](.md)|  | 
**requestBody** | [**[]map[string][]string**](map.md)|  | 

### Return type

**[]string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateEntityAndAssociationData

> DataGraphIds CreateEntityAndAssociationData(ctx, dataGraph)

Creates entities and assocations

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataGraph** | [**DataGraph**](DataGraph.md)|  | 

### Return type

[**DataGraphIds**](DataGraphIds.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteAllEntitiesFromEntitySet

> DeleteAllEntitiesFromEntitySet(ctx, entitySetId, type_)

Clears the Entity matching the given Entity id and all of its neighbor Entities

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**type_** | **string**|  | 

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


## DeleteEntities

> int32 DeleteEntities(ctx, entitySetId, type_, requestBody)

Deletes multiple entities from an entity set.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**type_** | **string**|  | 
**requestBody** | [**[]string**](string.md)|  | 

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


## DeleteEntitiesAndNeighbors

> int32 DeleteEntitiesAndNeighbors(ctx, entitySetId, type_, entityNeighborsFilter)

Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**type_** | **string**|  | 
**entityNeighborsFilter** | [**[]EntityNeighborsFilter**](EntityNeighborsFilter.md)|  | 

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


## DeleteEntity

> DeleteEntity(ctx, entitySetId, entityKeyId, type_)

Deletes a single entity from an entity set.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**entityKeyId** | [**string**](.md)|  | 
**type_** | **string**|  | 

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


## DeleteEntityProperties

> DeleteEntityProperties(ctx, entitySetId, entityKeyId, type_, requestBody)

Deletes properties from an entity.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**entityKeyId** | [**string**](.md)|  | 
**type_** | **string**|  | 
**requestBody** | [**[]string**](string.md)|  | 

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


## GetEntity

> map[string][]string GetEntity(ctx, entitySetId, entityKeyId)

Loads a single entity by its entityKeyId and entitySetId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**entityKeyId** | [**string**](.md)|  | 

### Return type

[**map[string][]string**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityPropertyValues

> []string GetEntityPropertyValues(ctx, entitySetId, entityKeyId, propertyTypeId)

Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**entityKeyId** | [**string**](.md)|  | 
**propertyTypeId** | [**string**](.md)|  | 

### Return type

**[]string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySetSize

> int32 GetEntitySetSize(ctx, entitySetId)

Gets the number of entities in an entity set.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 

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


## LoadEntitySetData

> []map[string][]string LoadEntitySetData(ctx, entitySetId)

Gets an iterable containing the entity data, using property type FQNs as key

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 

### Return type

[**[]map[string][]string**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LoadLinkedEntitySetBreakdown

> map[string]map[string]map[string]map[string][]string LoadLinkedEntitySetBreakdown(ctx, linkedEntitySetId, entitySetSelection)

Loads a linked entity set breakdown with the selected linked entities and properties.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**linkedEntitySetId** | [**string**](.md)|  | 
**entitySetSelection** | [**[]EntitySetSelection**](EntitySetSelection.md)|  | 

### Return type

[**map[string]map[string]map[string]map[string][]string**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## LoadSelectedEntitySetData

> []map[string][]string LoadSelectedEntitySetData(ctx, entitySetId, entitySetSelection)

Gets a list of entities by UUIDs

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**entitySetSelection** | [**EntitySetSelection**](EntitySetSelection.md)|  | 

### Return type

[**[]map[string][]string**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReplaceAssociationData

> int32 ReplaceAssociationData(ctx, partial, requestBody)

Replaces Association Data

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**partial** | **bool**|  | 
**requestBody** | [**map[string]map[string]DataEdge**](map.md)|  | 

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


## ReplaceEntityProperties

> int32 ReplaceEntityProperties(ctx, entitySetId, requestBody)

Replaces Entity Properties

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**requestBody** | [**map[string]map[string][]map[string]string**](map.md)|  | 

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


## UpdateEntitiesInEntitySet

> int32 UpdateEntitiesInEntitySet(ctx, entitySetId, type_, requestBody)

Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetId** | [**string**](.md)|  | 
**type_** | **string**|  | 
**requestBody** | [**map[string]map[string][]string**](map.md)|  | 

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

