# \LinkingApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_linking_feedback**](LinkingApi.md#add_linking_feedback) | **Put** /linker/linkingfeedback | Submits feedbacks for a given linking entity set and linking id in a batch format.
[**delete_linking_feedback**](LinkingApi.md#delete_linking_feedback) | **Delete** /linker/linkingfeedback | Deletes linking feedback
[**get_all_linking_feedback**](LinkingApi.md#get_all_linking_feedback) | **Get** /linker/linkingfeedback/all | Returns all feedback submitted
[**get_all_linking_feedback_with_features**](LinkingApi.md#get_all_linking_feedback_with_features) | **Get** /linker/linkingfeedback/features/all | Returns all feedback submitted walong with the features of pairwise entities
[**get_linking_feedback_with_features**](LinkingApi.md#get_linking_feedback_with_features) | **Post** /linker/linkingfeedback/features | Returns the feedback on the given entity pair along with their features
[**get_linking_feedbacks_on_entity**](LinkingApi.md#get_linking_feedbacks_on_entity) | **Post** /linker/linkingfeedback/entity | Returns positive/negative/all linking feedbacks on the given entity.



## add_linking_feedback

> i32 add_linking_feedback(linking_feedback)
Submits feedbacks for a given linking entity set and linking id in a batch format.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**linking_feedback** | [**LinkingFeedback**](LinkingFeedback.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_linking_feedback

> i32 delete_linking_feedback(entity_key_pair)
Deletes linking feedback

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_key_pair** | [**EntityKeyPair**](EntityKeyPair.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_linking_feedback

> Vec<crate::models::EntityLinkingFeedback> get_all_linking_feedback()
Returns all feedback submitted

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::EntityLinkingFeedback>**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_linking_feedback_with_features

> Vec<crate::models::EntityLinkingFeatures> get_all_linking_feedback_with_features()
Returns all feedback submitted walong with the features of pairwise entities

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::EntityLinkingFeatures>**](EntityLinkingFeatures.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_linking_feedback_with_features

> crate::models::EntityLinkingFeatures get_linking_feedback_with_features(entity_key_pair)
Returns the feedback on the given entity pair along with their features

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_key_pair** | [**EntityKeyPair**](EntityKeyPair.md) |  | [required] |

### Return type

[**crate::models::EntityLinkingFeatures**](EntityLinkingFeatures.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_linking_feedbacks_on_entity

> Vec<crate::models::EntityLinkingFeedback> get_linking_feedbacks_on_entity(feedback_type, entity_data_key)
Returns positive/negative/all linking feedbacks on the given entity.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**feedback_type** | **String** |  | [required] |
**entity_data_key** | [**EntityDataKey**](EntityDataKey.md) |  | [required] |

### Return type

[**Vec<crate::models::EntityLinkingFeedback>**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

