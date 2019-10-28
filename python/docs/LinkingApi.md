# openlattice.LinkingApi

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
> int add_linking_feedback(linking_feedback)

Submits feedbacks for a given linking entity set and linking id in a batch format.

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
linking_feedback = openlattice.LinkingFeedback() # LinkingFeedback | 

try:
    # Submits feedbacks for a given linking entity set and linking id in a batch format.
    api_response = api_instance.add_linking_feedback(linking_feedback)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->add_linking_feedback: %s\n" % e)
```


* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
linking_feedback = openlattice.LinkingFeedback() # LinkingFeedback | 

try:
    # Submits feedbacks for a given linking entity set and linking id in a batch format.
    api_response = api_instance.add_linking_feedback(linking_feedback)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->add_linking_feedback: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **linking_feedback** | [**LinkingFeedback**](LinkingFeedback.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_linking_feedback**
> int delete_linking_feedback(entity_key_pair)

Deletes linking feedback

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
entity_key_pair = openlattice.EntityKeyPair() # EntityKeyPair | 

try:
    # Deletes linking feedback
    api_response = api_instance.delete_linking_feedback(entity_key_pair)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->delete_linking_feedback: %s\n" % e)
```


* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
entity_key_pair = openlattice.EntityKeyPair() # EntityKeyPair | 

try:
    # Deletes linking feedback
    api_response = api_instance.delete_linking_feedback(entity_key_pair)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->delete_linking_feedback: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_key_pair** | [**EntityKeyPair**](EntityKeyPair.md)|  | 

### Return type

**int**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_linking_feedback**
> list[EntityLinkingFeedback] get_all_linking_feedback()

Returns all feedback submitted

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))

try:
    # Returns all feedback submitted
    api_response = api_instance.get_all_linking_feedback()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->get_all_linking_feedback: %s\n" % e)
```


* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))

try:
    # Returns all feedback submitted
    api_response = api_instance.get_all_linking_feedback()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->get_all_linking_feedback: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[EntityLinkingFeedback]**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_linking_feedback_with_features**
> list[EntityLinkingFeatures] get_all_linking_feedback_with_features()

Returns all feedback submitted walong with the features of pairwise entities

### Example

* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))

try:
    # Returns all feedback submitted walong with the features of pairwise entities
    api_response = api_instance.get_all_linking_feedback_with_features()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->get_all_linking_feedback_with_features: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[EntityLinkingFeatures]**](EntityLinkingFeatures.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_linking_feedback_with_features**
> EntityLinkingFeatures get_linking_feedback_with_features(entity_key_pair)

Returns the feedback on the given entity pair along with their features

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
entity_key_pair = openlattice.EntityKeyPair() # EntityKeyPair | 

try:
    # Returns the feedback on the given entity pair along with their features
    api_response = api_instance.get_linking_feedback_with_features(entity_key_pair)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->get_linking_feedback_with_features: %s\n" % e)
```


* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
entity_key_pair = openlattice.EntityKeyPair() # EntityKeyPair | 

try:
    # Returns the feedback on the given entity pair along with their features
    api_response = api_instance.get_linking_feedback_with_features(entity_key_pair)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->get_linking_feedback_with_features: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_linking_feedbacks_on_entity**
> list[EntityLinkingFeedback] get_linking_feedbacks_on_entity(feedback_type, entity_data_key)

Returns positive/negative/all linking feedbacks on the given entity.

### Example

* Basic Authentication (http_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure HTTP basic authorization: http_auth
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
feedback_type = 'feedback_type_example' # str | 
entity_data_key = openlattice.EntityDataKey() # EntityDataKey | 

try:
    # Returns positive/negative/all linking feedbacks on the given entity.
    api_response = api_instance.get_linking_feedbacks_on_entity(feedback_type, entity_data_key)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->get_linking_feedbacks_on_entity: %s\n" % e)
```


* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.LinkingApi(openlattice.ApiClient(configuration))
feedback_type = 'feedback_type_example' # str | 
entity_data_key = openlattice.EntityDataKey() # EntityDataKey | 

try:
    # Returns positive/negative/all linking feedbacks on the given entity.
    api_response = api_instance.get_linking_feedbacks_on_entity(feedback_type, entity_data_key)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LinkingApi->get_linking_feedbacks_on_entity: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **feedback_type** | **str**|  | 
 **entity_data_key** | [**EntityDataKey**](EntityDataKey.md)|  | 

### Return type

[**list[EntityLinkingFeedback]**](EntityLinkingFeedback.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

