# \LinkingApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddLinkingFeedback**](LinkingApi.md#AddLinkingFeedback) | **Put** /linker/linkingfeedback | Submits feedbacks for a given linking entity set and linking id in a batch format.
[**DeleteLinkingFeedback**](LinkingApi.md#DeleteLinkingFeedback) | **Delete** /linker/linkingfeedback | Deletes linking feedback
[**GetAllLinkingFeedback**](LinkingApi.md#GetAllLinkingFeedback) | **Get** /linker/linkingfeedback/all | Returns all feedback submitted
[**GetAllLinkingFeedbackWithFeatures**](LinkingApi.md#GetAllLinkingFeedbackWithFeatures) | **Get** /linker/linkingfeedback/features/all | Returns all feedback submitted walong with the features of pairwise entities
[**GetLinkingFeedbackWithFeatures**](LinkingApi.md#GetLinkingFeedbackWithFeatures) | **Post** /linker/linkingfeedback/features | Returns the feedback on the given entity pair along with their features
[**GetLinkingFeedbacksOnEntity**](LinkingApi.md#GetLinkingFeedbacksOnEntity) | **Post** /linker/linkingfeedback/entity | Returns positive/negative/all linking feedbacks on the given entity.



## AddLinkingFeedback

> int32 AddLinkingFeedback(ctx, linkingFeedback)

Submits feedbacks for a given linking entity set and linking id in a batch format.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**linkingFeedback** | [**LinkingFeedback**](LinkingFeedback.md)|  | 

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


## DeleteLinkingFeedback

> int32 DeleteLinkingFeedback(ctx, entityKeyPair)

Deletes linking feedback

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityKeyPair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

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


## GetAllLinkingFeedback

> []EntityLinkingFeedback GetAllLinkingFeedback(ctx, )

Returns all feedback submitted

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]EntityLinkingFeedback**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllLinkingFeedbackWithFeatures

> []EntityLinkingFeatures GetAllLinkingFeedbackWithFeatures(ctx, )

Returns all feedback submitted walong with the features of pairwise entities

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]EntityLinkingFeatures**](EntityLinkingFeatures.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetLinkingFeedbackWithFeatures

> EntityLinkingFeatures GetLinkingFeedbackWithFeatures(ctx, entityKeyPair)

Returns the feedback on the given entity pair along with their features

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**entityKeyPair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

[**EntityLinkingFeatures**](EntityLinkingFeatures.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetLinkingFeedbacksOnEntity

> []EntityLinkingFeedback GetLinkingFeedbacksOnEntity(ctx, feedbackType, entityDataKey)

Returns positive/negative/all linking feedbacks on the given entity.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**feedbackType** | **string**|  | 
**entityDataKey** | [**EntityDataKey**](EntityDataKey.md)|  | 

### Return type

[**[]EntityLinkingFeedback**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

