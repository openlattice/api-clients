# \EntitySetsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddEntitySetsToLinkingEntitySet**](EntitySetsApi.md#AddEntitySetsToLinkingEntitySet) | **Post** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
[**AddEntitySetsToLinkingEntitySets**](EntitySetsApi.md#AddEntitySetsToLinkingEntitySets) | **Put** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
[**CreateEntitySets**](EntitySetsApi.md#CreateEntitySets) | **Post** /datastore/entity-sets | Creates new EntitySet definitions if they don&#39;t exist.
[**DeleteEntitySet**](EntitySetsApi.md#DeleteEntitySet) | **Delete** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**GetAllEntitySetPropertyMetadata**](EntitySetsApi.md#GetAllEntitySetPropertyMetadata) | **Get** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
[**GetAllEntitySets**](EntitySetsApi.md#GetAllEntitySets) | **Get** /datastore/entity-sets | Get all EntitySet definitions.
[**GetEntitySet**](EntitySetsApi.md#GetEntitySet) | **Get** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**GetEntitySetId**](EntitySetsApi.md#GetEntitySetId) | **Get** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**GetEntitySetIds**](EntitySetsApi.md#GetEntitySetIds) | **Post** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
[**GetEntitySetPropertyMetadata**](EntitySetsApi.md#GetEntitySetPropertyMetadata) | **Get** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**GetPropertyMetadataForEntitySets**](EntitySetsApi.md#GetPropertyMetadataForEntitySets) | **Post** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
[**GetPropertyTypesForEntitySet**](EntitySetsApi.md#GetPropertyTypesForEntitySet) | **Get** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
[**RemoveEntitySetsFromLinkingEntitySet**](EntitySetsApi.md#RemoveEntitySetsFromLinkingEntitySet) | **Delete** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
[**RemoveEntitySetsFromLinkingEntitySets**](EntitySetsApi.md#RemoveEntitySetsFromLinkingEntitySets) | **Delete** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
[**UpdateEntitySetMetaData**](EntitySetsApi.md#UpdateEntitySetMetaData) | **Patch** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**UpdateEntitySetPropertyMetadata**](EntitySetsApi.md#UpdateEntitySetPropertyMetadata) | **Post** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.



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

