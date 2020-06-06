# \CollectionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddTypeToEntityTypeCollectionTemplate**](CollectionsApi.md#AddTypeToEntityTypeCollectionTemplate) | **Patch** /datastore/collections/entity/type/{entityTypeCollectionId}/template | Appends type to template of the specified EntityTypeCollection
[**CreateEntitySetCollection**](CollectionsApi.md#CreateEntitySetCollection) | **Post** /datastore/collections/entity/set | Creates a new EntitySetCollection
[**CreateEntityTypeCollection**](CollectionsApi.md#CreateEntityTypeCollection) | **Post** /datastore/collections/entity/type | Creates a new EntityTypeCollection
[**DeleteEntitySetCollection**](CollectionsApi.md#DeleteEntitySetCollection) | **Delete** /datastore/collections/entity/set/{entitySetCollectionId} | Deletes the specified EntitySetCollection
[**DeleteEntityTypeCollection**](CollectionsApi.md#DeleteEntityTypeCollection) | **Delete** /datastore/collections/entity/type/{entityTypeCollectionId} | Deletes the specified EntityTypeCollection
[**GetAllEntitySetCollections**](CollectionsApi.md#GetAllEntitySetCollections) | **Get** /datastore/collections/entity/set | Returns all EntitySetCollection objects
[**GetAllEntityTypeCollections**](CollectionsApi.md#GetAllEntityTypeCollections) | **Get** /datastore/collections/entity/type | Returns all EntityTypeCollection objects
[**GetEntitySetCollection**](CollectionsApi.md#GetEntitySetCollection) | **Get** /datastore/collections/entity/set/{entitySetCollectionId} | Returns the EntitySetCollection object for a given id
[**GetEntitySetCollectionsOfType**](CollectionsApi.md#GetEntitySetCollectionsOfType) | **Get** /datastore/collections/entity/type/entity/set/{entitySetCollectionId} | Returns all authorized EntitySetCollections for a given EntityTypeCollection id
[**GetEntityTypeCollection**](CollectionsApi.md#GetEntityTypeCollection) | **Get** /datastore/collections/entity/type/{entityTypeCollectionId} | Returns the EntityTypeCollection object for a given id
[**RemoveTypeFromEntityTypeCollectionTemplate**](CollectionsApi.md#RemoveTypeFromEntityTypeCollectionTemplate) | **Delete** /datastore/collections/entity/type/{entityTypeCollectionId}/template/{typeId} | Removes a key from an EntityTypeCollection template
[**UpdateEntitySetCollectionMetadata**](CollectionsApi.md#UpdateEntitySetCollectionMetadata) | **Patch** /datastore/collections/entity/set/{entitySetCollectionId} | Updates metadata of the specified EntitySetCollection
[**UpdateEntitySetCollectionTemplate**](CollectionsApi.md#UpdateEntitySetCollectionTemplate) | **Patch** /datastore/collections/entity/set/{entitySetCollectionId}/template | Updates template of the specified EntitySetCollection
[**UpdateEntityTypeCollectionMetadata**](CollectionsApi.md#UpdateEntityTypeCollectionMetadata) | **Patch** /datastore/collections/entity/type/{entityTypeCollectionId} | Updates metadata of the specified EntityTypeCollection



## AddTypeToEntityTypeCollectionTemplate

> AddTypeToEntityTypeCollectionTemplate(ctx, entityTypeCollectionId, entityTypeCollection)

Appends type to template of the specified EntityTypeCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeCollectionId** | [**string**](.md)|  | 
**entityTypeCollection** | [**EntityTypeCollection**](EntityTypeCollection.md)|  | 

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


## CreateEntitySetCollection

> string CreateEntitySetCollection(ctx, entitySetCollection)

Creates a new EntitySetCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetCollection** | [**EntitySetCollection**](EntitySetCollection.md)|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateEntityTypeCollection

> string CreateEntityTypeCollection(ctx, entityTypeCollection)

Creates a new EntityTypeCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeCollection** | [**EntityTypeCollection**](EntityTypeCollection.md)|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteEntitySetCollection

> DeleteEntitySetCollection(ctx, entitySetCollectionId)

Deletes the specified EntitySetCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetCollectionId** | [**string**](.md)|  | 

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


## DeleteEntityTypeCollection

> DeleteEntityTypeCollection(ctx, entityTypeCollectionId)

Deletes the specified EntityTypeCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeCollectionId** | [**string**](.md)|  | 

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


## GetAllEntitySetCollections

> []EntitySetCollection GetAllEntitySetCollections(ctx, )

Returns all EntitySetCollection objects

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]EntitySetCollection**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllEntityTypeCollections

> []EntityTypeCollection GetAllEntityTypeCollections(ctx, )

Returns all EntityTypeCollection objects

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]EntityTypeCollection**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySetCollection

> EntitySetCollection GetEntitySetCollection(ctx, entitySetCollectionId)

Returns the EntitySetCollection object for a given id

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetCollectionId** | [**string**](.md)|  | 

### Return type

[**EntitySetCollection**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntitySetCollectionsOfType

> []EntitySetCollection GetEntitySetCollectionsOfType(ctx, entitySetCollectionId)

Returns all authorized EntitySetCollections for a given EntityTypeCollection id

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetCollectionId** | [**string**](.md)|  | 

### Return type

[**[]EntitySetCollection**](EntitySetCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetEntityTypeCollection

> EntityTypeCollection GetEntityTypeCollection(ctx, entityTypeCollectionId)

Returns the EntityTypeCollection object for a given id

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeCollectionId** | [**string**](.md)|  | 

### Return type

[**EntityTypeCollection**](EntityTypeCollection.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveTypeFromEntityTypeCollectionTemplate

> RemoveTypeFromEntityTypeCollectionTemplate(ctx, entityTypeCollectionId, typeId)

Removes a key from an EntityTypeCollection template

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeCollectionId** | [**string**](.md)|  | 
**typeId** | [**string**](.md)|  | 

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


## UpdateEntitySetCollectionMetadata

> UpdateEntitySetCollectionMetadata(ctx, entitySetCollectionId, metadataUpdate)

Updates metadata of the specified EntitySetCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetCollectionId** | [**string**](.md)|  | 
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


## UpdateEntitySetCollectionTemplate

> UpdateEntitySetCollectionTemplate(ctx, entitySetCollectionId, requestBody)

Updates template of the specified EntitySetCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entitySetCollectionId** | [**string**](.md)|  | 
**requestBody** | [**map[string]string**](string.md)|  | 

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


## UpdateEntityTypeCollectionMetadata

> UpdateEntityTypeCollectionMetadata(ctx, entityTypeCollectionId, metadataUpdate)

Updates metadata of the specified EntityTypeCollection

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityTypeCollectionId** | [**string**](.md)|  | 
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

