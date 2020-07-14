# OpenapiClient::LinkingApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_linking_feedback**](LinkingApi.md#add_linking_feedback) | **PUT** /linker/linkingfeedback | Submits feedbacks for a given linking entity set and linking id in a batch format.
[**delete_linking_feedback**](LinkingApi.md#delete_linking_feedback) | **DELETE** /linker/linkingfeedback | Deletes linking feedback
[**get_all_linking_feedback**](LinkingApi.md#get_all_linking_feedback) | **GET** /linker/linkingfeedback/all | Returns all feedback submitted
[**get_all_linking_feedback_with_features**](LinkingApi.md#get_all_linking_feedback_with_features) | **GET** /linker/linkingfeedback/features/all | Returns all feedback submitted walong with the features of pairwise entities
[**get_linking_feedback_with_features**](LinkingApi.md#get_linking_feedback_with_features) | **POST** /linker/linkingfeedback/features | Returns the feedback on the given entity pair along with their features
[**get_linking_feedbacks_on_entity**](LinkingApi.md#get_linking_feedbacks_on_entity) | **POST** /linker/linkingfeedback/entity | Returns positive/negative/all linking feedbacks on the given entity.



## add_linking_feedback

> Integer add_linking_feedback(linking_feedback)

Submits feedbacks for a given linking entity set and linking id in a batch format.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::LinkingApi.new
linking_feedback = OpenapiClient::LinkingFeedback.new # LinkingFeedback | 

begin
  #Submits feedbacks for a given linking entity set and linking id in a batch format.
  result = api_instance.add_linking_feedback(linking_feedback)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LinkingApi->add_linking_feedback: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_feedback** | [**LinkingFeedback**](LinkingFeedback.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_linking_feedback

> Integer delete_linking_feedback(entity_key_pair)

Deletes linking feedback

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::LinkingApi.new
entity_key_pair = OpenapiClient::EntityKeyPair.new # EntityKeyPair | 

begin
  #Deletes linking feedback
  result = api_instance.delete_linking_feedback(entity_key_pair)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LinkingApi->delete_linking_feedback: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_key_pair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_linking_feedback

> Array&lt;EntityLinkingFeedback&gt; get_all_linking_feedback

Returns all feedback submitted

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::LinkingApi.new

begin
  #Returns all feedback submitted
  result = api_instance.get_all_linking_feedback
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LinkingApi->get_all_linking_feedback: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EntityLinkingFeedback&gt;**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_linking_feedback_with_features

> Array&lt;EntityLinkingFeatures&gt; get_all_linking_feedback_with_features

Returns all feedback submitted walong with the features of pairwise entities

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::LinkingApi.new

begin
  #Returns all feedback submitted walong with the features of pairwise entities
  result = api_instance.get_all_linking_feedback_with_features
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LinkingApi->get_all_linking_feedback_with_features: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;EntityLinkingFeatures&gt;**](EntityLinkingFeatures.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_linking_feedback_with_features

> EntityLinkingFeatures get_linking_feedback_with_features(entity_key_pair)

Returns the feedback on the given entity pair along with their features

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::LinkingApi.new
entity_key_pair = OpenapiClient::EntityKeyPair.new # EntityKeyPair | 

begin
  #Returns the feedback on the given entity pair along with their features
  result = api_instance.get_linking_feedback_with_features(entity_key_pair)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LinkingApi->get_linking_feedback_with_features: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_key_pair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

[**EntityLinkingFeatures**](EntityLinkingFeatures.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_linking_feedbacks_on_entity

> Array&lt;EntityLinkingFeedback&gt; get_linking_feedbacks_on_entity(feedback_type, entity_data_key)

Returns positive/negative/all linking feedbacks on the given entity.

### Example

```ruby
# load the gem
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization (JWT): http_auth
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: openlattice_auth
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = OpenapiClient::LinkingApi.new
feedback_type = 'feedback_type_example' # String | 
entity_data_key = OpenapiClient::EntityDataKey.new # EntityDataKey | 

begin
  #Returns positive/negative/all linking feedbacks on the given entity.
  result = api_instance.get_linking_feedbacks_on_entity(feedback_type, entity_data_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling LinkingApi->get_linking_feedbacks_on_entity: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback_type** | **String**|  | 
 **entity_data_key** | [**EntityDataKey**](EntityDataKey.md)|  | 

### Return type

[**Array&lt;EntityLinkingFeedback&gt;**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

