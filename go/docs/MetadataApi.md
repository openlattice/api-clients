# \MetadataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetDataSetColumnMetadata**](MetadataApi.md#GetDataSetColumnMetadata) | **Get** /datastore/metadata/columns/{dataId}/{columnId} | Gets the dataset column metadata objects using data ID and column ID
[**GetDataSetColumnsMetadata**](MetadataApi.md#GetDataSetColumnsMetadata) | **Post** /datastore/metadata/columns | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**GetDataSetMetadata**](MetadataApi.md#GetDataSetMetadata) | **Get** /datastore/metadata/datasets/{dataId} | Gets dataset metadata object with given data set ID
[**GetDataSetsMetadata**](MetadataApi.md#GetDataSetsMetadata) | **Post** /datastore/metadata/datasets | Gets the dataset metadata objects given data set ids the caller has READ permissions on
[**GetOrganizationDataSetsMetadata**](MetadataApi.md#GetOrganizationDataSetsMetadata) | **Get** /datastore/metadata/datasets/organizations/{organizationId} | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**UpdateDataSetColumnMetadata**](MetadataApi.md#UpdateDataSetColumnMetadata) | **Patch** /datastore/metadata/update/{dataId}/{columnId} | Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
[**UpdateDataSetMetadata**](MetadataApi.md#UpdateDataSetMetadata) | **Patch** /datastore/metadata/update/{dataId} | Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.



## GetDataSetColumnMetadata

> DataSetColumnMetadata GetDataSetColumnMetadata(ctx, dataId, columnId)

Gets the dataset column metadata objects using data ID and column ID

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataId** | [**string**](.md)|  | 
**columnId** | [**string**](.md)|  | 

### Return type

[**DataSetColumnMetadata**](DataSetColumnMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetDataSetColumnsMetadata

> map[string][]DataSetColumnMetadata GetDataSetColumnsMetadata(ctx, optional)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetDataSetColumnsMetadataOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetDataSetColumnsMetadataOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**optional.Interface of []string**](string.md)|  | 

### Return type

[**map[string][]DataSetColumnMetadata**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetDataSetMetadata

> DataSetMetadata GetDataSetMetadata(ctx, dataId)

Gets dataset metadata object with given data set ID

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataId** | [**string**](.md)|  | 

### Return type

[**DataSetMetadata**](DataSetMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetDataSetsMetadata

> map[string]DataSetMetadata GetDataSetsMetadata(ctx, optional)

Gets the dataset metadata objects given data set ids the caller has READ permissions on

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
 **optional** | ***GetDataSetsMetadataOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a GetDataSetsMetadataOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**optional.Interface of []string**](string.md)|  | 

### Return type

[**map[string]DataSetMetadata**](DataSetMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganizationDataSetsMetadata

> map[string]DataSetMetadata GetOrganizationDataSetsMetadata(ctx, organizationId)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**map[string]DataSetMetadata**](DataSetMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateDataSetColumnMetadata

> UpdateDataSetColumnMetadata(ctx, dataId, columnId, optional)

Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataId** | [**string**](.md)|  | 
**columnId** | [**string**](.md)|  | 
 **optional** | ***UpdateDataSetColumnMetadataOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a UpdateDataSetColumnMetadataOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **dataMetadata** | [**optional.Interface of DataMetadata**](DataMetadata.md)|  | 

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


## UpdateDataSetMetadata

> UpdateDataSetMetadata(ctx, dataId, optional)

Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**dataId** | [**string**](.md)|  | 
 **optional** | ***UpdateDataSetMetadataOpts** | optional parameters | nil if no parameters

### Optional Parameters

Optional parameters are passed through a pointer to a UpdateDataSetMetadataOpts struct


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **dataMetadata** | [**optional.Interface of DataMetadata**](DataMetadata.md)|  | 

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

