# LinkingApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_linking_feedback**](LinkingApi.md#add_linking_feedback) | **PUT** /linker/linkingfeedback | Submits feedbacks for a given linking entity set and linking id in a batch format.
[**delete_linking_feedback**](LinkingApi.md#delete_linking_feedback) | **DELETE** /linker/linkingfeedback | Deletes linking feedback
[**get_all_linking_feedback**](LinkingApi.md#get_all_linking_feedback) | **GET** /linker/linkingfeedback/all | Returns all feedback submitted
[**get_all_linking_feedback_with_features**](LinkingApi.md#get_all_linking_feedback_with_features) | **GET** /linker/linkingfeedback/features/all | Returns all feedback submitted walong with the features of pairwise entities
[**get_linking_feedback_with_features**](LinkingApi.md#get_linking_feedback_with_features) | **POST** /linker/linkingfeedback/features | Returns the feedback on the given entity pair along with their features
[**get_linking_feedbacks_on_entity**](LinkingApi.md#get_linking_feedbacks_on_entity) | **POST** /linker/linkingfeedback/entity | Returns positive/negative/all linking feedbacks on the given entity.


# **add_linking_feedback**
> integer add_linking_feedback(linking.feedback)

Submits feedbacks for a given linking entity set and linking id in a batch format.

### Example
```R
library(openlattice)

var.linking.feedback <- LinkingFeedback$new(EntityDataKey$new("entitySetId_example", "entityKeyId_example"), list(EntityDataKey$new("entitySetId_example", "entityKeyId_example")), list(EntityDataKey$new("entitySetId_example", "entityKeyId_example"))) # LinkingFeedback | 

#Submits feedbacks for a given linking entity set and linking id in a batch format.
api.instance <- LinkingApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$add_linking_feedback(var.linking.feedback)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking.feedback** | [**LinkingFeedback**](LinkingFeedback.md)|  | 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **delete_linking_feedback**
> integer delete_linking_feedback(entity.key.pair)

Deletes linking feedback

### Example
```R
library(openlattice)

var.entity.key.pair <- EntityKeyPair$new("first_example", "second_example") # EntityKeyPair | 

#Deletes linking feedback
api.instance <- LinkingApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$delete_linking_feedback(var.entity.key.pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.key.pair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

**integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_linking_feedback**
> array[EntityLinkingFeedback] get_all_linking_feedback()

Returns all feedback submitted

### Example
```R
library(openlattice)


#Returns all feedback submitted
api.instance <- LinkingApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_linking_feedback()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EntityLinkingFeedback]**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_all_linking_feedback_with_features**
> array[EntityLinkingFeatures] get_all_linking_feedback_with_features()

Returns all feedback submitted walong with the features of pairwise entities

### Example
```R
library(openlattice)


#Returns all feedback submitted walong with the features of pairwise entities
api.instance <- LinkingApi$new()
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_all_linking_feedback_with_features()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[EntityLinkingFeatures]**](EntityLinkingFeatures.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_linking_feedback_with_features**
> EntityLinkingFeatures get_linking_feedback_with_features(entity.key.pair)

Returns the feedback on the given entity pair along with their features

### Example
```R
library(openlattice)

var.entity.key.pair <- EntityKeyPair$new("first_example", "second_example") # EntityKeyPair | 

#Returns the feedback on the given entity pair along with their features
api.instance <- LinkingApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_linking_feedback_with_features(var.entity.key.pair)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.key.pair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

[**EntityLinkingFeatures**](EntityLinkingFeatures.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_linking_feedbacks_on_entity**
> array[EntityLinkingFeedback] get_linking_feedbacks_on_entity(feedback.type, entity.data.key)

Returns positive/negative/all linking feedbacks on the given entity.

### Example
```R
library(openlattice)

var.feedback.type <- 'feedback.type_example' # character | 
var.entity.data.key <- EntityDataKey$new("entitySetId_example", "entityKeyId_example") # EntityDataKey | 

#Returns positive/negative/all linking feedbacks on the given entity.
api.instance <- LinkingApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_linking_feedbacks_on_entity(var.feedback.type, var.entity.data.key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback.type** | Enum [Positive, Negative, All] |  | 
 **entity.data.key** | [**EntityDataKey**](EntityDataKey.md)|  | 

### Return type

[**array[EntityLinkingFeedback]**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

