# LinkingApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addLinkingFeedback**](LinkingApi.md#addLinkingFeedback) | **PUT** /linker/linkingfeedback | Submits feedbacks for a given linking entity set and linking id in a batch format.
[**deleteLinkingFeedback**](LinkingApi.md#deleteLinkingFeedback) | **DELETE** /linker/linkingfeedback | Deletes linking feedback
[**getAllLinkingFeedback**](LinkingApi.md#getAllLinkingFeedback) | **GET** /linker/linkingfeedback/all | Returns all feedback submitted
[**getAllLinkingFeedbackWithFeatures**](LinkingApi.md#getAllLinkingFeedbackWithFeatures) | **GET** /linker/linkingfeedback/features/all | Returns all feedback submitted walong with the features of pairwise entities
[**getLinkingFeedbackWithFeatures**](LinkingApi.md#getLinkingFeedbackWithFeatures) | **POST** /linker/linkingfeedback/features | Returns the feedback on the given entity pair along with their features
[**getLinkingFeedbacksOnEntity**](LinkingApi.md#getLinkingFeedbacksOnEntity) | **POST** /linker/linkingfeedback/entity | Returns positive/negative/all linking feedbacks on the given entity.



## addLinkingFeedback

> Integer addLinkingFeedback(linkingFeedback)

Submits feedbacks for a given linking entity set and linking id in a batch format.

### Example

```java
// Import classes:
//import org.openapitools.client.api.LinkingApi;

LinkingApi apiInstance = new LinkingApi();
LinkingFeedback linkingFeedback = new LinkingFeedback(); // LinkingFeedback | 
try {
    Integer result = apiInstance.addLinkingFeedback(linkingFeedback);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinkingApi#addLinkingFeedback");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linkingFeedback** | [**LinkingFeedback**](LinkingFeedback.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteLinkingFeedback

> Integer deleteLinkingFeedback(entityKeyPair)

Deletes linking feedback

### Example

```java
// Import classes:
//import org.openapitools.client.api.LinkingApi;

LinkingApi apiInstance = new LinkingApi();
EntityKeyPair entityKeyPair = new EntityKeyPair(); // EntityKeyPair | 
try {
    Integer result = apiInstance.deleteLinkingFeedback(entityKeyPair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinkingApi#deleteLinkingFeedback");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityKeyPair** | [**EntityKeyPair**](EntityKeyPair.md)|  |

### Return type

**Integer**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getAllLinkingFeedback

> List&lt;EntityLinkingFeedback&gt; getAllLinkingFeedback()

Returns all feedback submitted

### Example

```java
// Import classes:
//import org.openapitools.client.api.LinkingApi;

LinkingApi apiInstance = new LinkingApi();
try {
    List<EntityLinkingFeedback> result = apiInstance.getAllLinkingFeedback();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinkingApi#getAllLinkingFeedback");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;EntityLinkingFeedback&gt;**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAllLinkingFeedbackWithFeatures

> List&lt;EntityLinkingFeatures&gt; getAllLinkingFeedbackWithFeatures()

Returns all feedback submitted walong with the features of pairwise entities

### Example

```java
// Import classes:
//import org.openapitools.client.api.LinkingApi;

LinkingApi apiInstance = new LinkingApi();
try {
    List<EntityLinkingFeatures> result = apiInstance.getAllLinkingFeedbackWithFeatures();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinkingApi#getAllLinkingFeedbackWithFeatures");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;EntityLinkingFeatures&gt;**](EntityLinkingFeatures.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getLinkingFeedbackWithFeatures

> EntityLinkingFeatures getLinkingFeedbackWithFeatures(entityKeyPair)

Returns the feedback on the given entity pair along with their features

### Example

```java
// Import classes:
//import org.openapitools.client.api.LinkingApi;

LinkingApi apiInstance = new LinkingApi();
EntityKeyPair entityKeyPair = new EntityKeyPair(); // EntityKeyPair | 
try {
    EntityLinkingFeatures result = apiInstance.getLinkingFeedbackWithFeatures(entityKeyPair);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinkingApi#getLinkingFeedbackWithFeatures");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityKeyPair** | [**EntityKeyPair**](EntityKeyPair.md)|  |

### Return type

[**EntityLinkingFeatures**](EntityLinkingFeatures.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getLinkingFeedbacksOnEntity

> List&lt;EntityLinkingFeedback&gt; getLinkingFeedbacksOnEntity(feedbackType, entityDataKey)

Returns positive/negative/all linking feedbacks on the given entity.

### Example

```java
// Import classes:
//import org.openapitools.client.api.LinkingApi;

LinkingApi apiInstance = new LinkingApi();
String feedbackType = null; // String | 
EntityDataKey entityDataKey = new EntityDataKey(); // EntityDataKey | 
try {
    List<EntityLinkingFeedback> result = apiInstance.getLinkingFeedbacksOnEntity(feedbackType, entityDataKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LinkingApi#getLinkingFeedbacksOnEntity");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedbackType** | **String**|  | [default to null] [enum: Positive, Negative, All]
 **entityDataKey** | [**EntityDataKey**](EntityDataKey.md)|  |

### Return type

[**List&lt;EntityLinkingFeedback&gt;**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

