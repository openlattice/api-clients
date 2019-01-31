# openlattice.PermissionsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_acl**](PermissionsApi.md#get_acl) | **POST** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
[**update_acl**](PermissionsApi.md#update_acl) | **PATCH** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.


# **get_acl**
> get_acl(acl_key)

Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.

### Example

* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration()
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.PermissionsApi(openlattice.ApiClient(configuration))
acl_key = openlattice.AclKey() # AclKey | 

try:
    # Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
    api_instance.get_acl(acl_key)
except ApiException as e:
    print("Exception when calling PermissionsApi->get_acl: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acl_key** | [**AclKey**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_acl**
> update_acl(acl_data)

Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.

### Example

* Api Key Authentication (openlattice_auth): 
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint

# Configure API key authorization: openlattice_auth
configuration = openlattice.Configuration()
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.PermissionsApi(openlattice.ApiClient(configuration))
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

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

