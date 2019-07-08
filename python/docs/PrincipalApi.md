# openlattice.PrincipalApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_all_users**](PrincipalApi.md#get_all_users) | **GET** /datastore/principals/users/ | Get all users.
[**get_current_roles**](PrincipalApi.md#get_current_roles) | **GET** /datastore/principals/roles/current/ | Get current roles.
[**get_materialized_view_account**](PrincipalApi.md#get_materialized_view_account) | **GET** /datastore/principals/db | Get the db access credentials.
[**get_user**](PrincipalApi.md#get_user) | **GET** /datastore/principals/users/{userId} | Get the user for the given id.
[**search_all_users_by_email**](PrincipalApi.md#search_all_users_by_email) | **GET** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.


# **get_all_users**
> dict(str, Auth0userBasic) get_all_users()

Get all users.

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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))

try:
    # Get all users.
    api_response = api_instance.get_all_users()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_all_users: %s\n" % e)
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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))

try:
    # Get all users.
    api_response = api_instance.get_all_users()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_all_users: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**dict(str, Auth0userBasic)**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_current_roles**
> list[SecurablePrincipal] get_current_roles()

Get current roles.

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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))

try:
    # Get current roles.
    api_response = api_instance.get_current_roles()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_current_roles: %s\n" % e)
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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))

try:
    # Get current roles.
    api_response = api_instance.get_current_roles()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_current_roles: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[SecurablePrincipal]**](SecurablePrincipal.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_materialized_view_account**
> MaterializedViewAccount get_materialized_view_account()

Get the db access credentials.

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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))

try:
    # Get the db access credentials.
    api_response = api_instance.get_materialized_view_account()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_materialized_view_account: %s\n" % e)
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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))

try:
    # Get the db access credentials.
    api_response = api_instance.get_materialized_view_account()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_materialized_view_account: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MaterializedViewAccount**](MaterializedViewAccount.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> Auth0userBasic get_user(user_id)

Get the user for the given id.

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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))
user_id = 'user_id_example' # str | 

try:
    # Get the user for the given id.
    api_response = api_instance.get_user(user_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_user: %s\n" % e)
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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))
user_id = 'user_id_example' # str | 

try:
    # Get the user for the given id.
    api_response = api_instance.get_user(user_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->get_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | 

### Return type

[**Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_all_users_by_email**
> dict(str, Auth0userBasic) search_all_users_by_email(email_address)

Get the user id for the given email address.

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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))
email_address = 'email_address_example' # str | 

try:
    # Get the user id for the given email address.
    api_response = api_instance.search_all_users_by_email(email_address)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->search_all_users_by_email: %s\n" % e)
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
api_instance = openlattice.PrincipalApi(openlattice.ApiClient(configuration))
email_address = 'email_address_example' # str | 

try:
    # Get the user id for the given email address.
    api_response = api_instance.search_all_users_by_email(email_address)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PrincipalApi->search_all_users_by_email: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email_address** | **str**|  | 

### Return type

[**dict(str, Auth0userBasic)**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

