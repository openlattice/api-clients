# \DataIntegrationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetEntityKeyIds**](DataIntegrationsApi.md#GetEntityKeyIds) | **Post** /datastore/integration/entityKeyIds | Get entity key IDs
[**IntegrateEntityAndAssociationData**](DataIntegrationsApi.md#IntegrateEntityAndAssociationData) | **Post** /datastore/integration | Integrate entity and association data



## GetEntityKeyIds

> []string GetEntityKeyIds(ctx, entityKey)

Get entity key IDs

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityKey** | [**[]EntityKey**](EntityKey.md)|  | 

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


## IntegrateEntityAndAssociationData

> IntegrationResults IntegrateEntityAndAssociationData(ctx, detailedResults, bulkDataCreation)

Integrate entity and association data

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**detailedResults** | **bool**|  | 
**bulkDataCreation** | [**BulkDataCreation**](BulkDataCreation.md)|  | 

### Return type

[**IntegrationResults**](IntegrationResults.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

