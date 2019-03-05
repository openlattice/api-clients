# openlattice.AuthorizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_authorizations**](AuthorizationsApi.md#check_authorizations) | **POST** /datastore/authorizations | Check authorizations
[**get_accessible_objects**](AuthorizationsApi.md#get_accessible_objects) | **GET** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.


# **check_authorizations**
> list[Authorization] check_authorizations(access_check)

Check authorizations

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.AuthorizationsApi(openlattice.ApiClient(configuration))
access_check = openlattice.AccessCheck() # AccessCheck | 

try:
    # Check authorizations
    api_response = api_instance.check_authorizations(access_check)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AuthorizationsApi->check_authorizations: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.AuthorizationsApi(openlattice.ApiClient(configuration))
access_check = openlattice.AccessCheck() # AccessCheck | 

try:
    # Check authorizations
    api_response = api_instance.check_authorizations(access_check)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AuthorizationsApi->check_authorizations: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_check** | [**AccessCheck**](AccessCheck.md)|  | 

### Return type

[**list[Authorization]**](Authorization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accessible_objects**
> AuthorizedObjectsSearchResult get_accessible_objects(object_type=object_type, permission=permission, paging_token=paging_token)

Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.AuthorizationsApi(openlattice.ApiClient(configuration))
object_type = 'object_type_example' # str |  (optional)
permission = 'permission_example' # str |  (optional)
paging_token = 'paging_token_example' # str |  (optional)

try:
    # Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.
    api_response = api_instance.get_accessible_objects(object_type=object_type, permission=permission, paging_token=paging_token)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AuthorizationsApi->get_accessible_objects: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.AuthorizationsApi(openlattice.ApiClient(configuration))
object_type = 'object_type_example' # str |  (optional)
permission = 'permission_example' # str |  (optional)
paging_token = 'paging_token_example' # str |  (optional)

try:
    # Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.
    api_response = api_instance.get_accessible_objects(object_type=object_type, permission=permission, paging_token=paging_token)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AuthorizationsApi->get_accessible_objects: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_type** | **str**|  | [optional] 
 **permission** | **str**|  | [optional] 
 **paging_token** | **str**|  | [optional] 

### Return type

[**AuthorizedObjectsSearchResult**](AuthorizedObjectsSearchResult.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

