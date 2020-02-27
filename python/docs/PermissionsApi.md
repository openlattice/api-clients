# openlattice.PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_acl**](PermissionsApi.md#get_acl) | **POST** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**update_acl**](PermissionsApi.md#update_acl) | **PATCH** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.


# **get_acl**
> Acl get_acl(request_body)

Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.PermissionsApi(api_client)
    request_body = ['request_body_example'] # list[str] | 

    try:
        # Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
        api_response = api_instance.get_acl(request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling PermissionsApi->get_acl: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.PermissionsApi(api_client)
    request_body = ['request_body_example'] # list[str] | 

    try:
        # Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
        api_response = api_instance.get_acl(request_body)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling PermissionsApi->get_acl: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**list[str]**](str.md)|  | 

### Return type

[**Acl**](Acl.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_acl**
> update_acl(acl_data)

Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.PermissionsApi(api_client)
    acl_data = openlattice.AclData() # AclData | 

    try:
        # Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
        api_instance.update_acl(acl_data)
    except ApiException as e:
        print("Exception when calling PermissionsApi->update_acl: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.PermissionsApi(api_client)
    acl_data = openlattice.AclData() # AclData | 

    try:
        # Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
        api_instance.update_acl(acl_data)
    except ApiException as e:
        print("Exception when calling PermissionsApi->update_acl: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_data** | [**AclData**](AclData.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

