# openlattice.DirectoryApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_all_users_by_email**](DirectoryApi.md#search_all_users_by_email) | **GET** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.


# **search_all_users_by_email**
> dict(str, Auth0userBasic) search_all_users_by_email(email_address)

Get the user id for the given email address.

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
api_instance = openlattice.DirectoryApi(openlattice.ApiClient(configuration))
email_address = 'email_address_example' # str | 

try:
    # Get the user id for the given email address.
    api_response = api_instance.search_all_users_by_email(email_address)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DirectoryApi->search_all_users_by_email: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | [**str**](.md)|  | 

### Return type

[**dict(str, Auth0userBasic)**](Auth0userBasic.md)

### Authorization

[openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

