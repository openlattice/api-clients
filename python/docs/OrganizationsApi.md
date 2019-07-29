# openlattice.OrganizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_member**](OrganizationsApi.md#add_member) | **PUT** /datastore/organizations/{organizationId}/principals/members/{userId} | Add member to an organization
[**add_role_to_user**](OrganizationsApi.md#add_role_to_user) | **PUT** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Add a role to a user
[**assemble_entity_sets**](OrganizationsApi.md#assemble_entity_sets) | **POST** /datastore/organizations/{organizationId}/entity-sets/assemble | Materializes entity sets into the organization database.
[**create_organization_if_not_exists**](OrganizationsApi.md#create_organization_if_not_exists) | **POST** /datastore/organizations | Create an organization if it doesn&#39;t exist.
[**create_role**](OrganizationsApi.md#create_role) | **POST** /datastore/organizations/roles | Create role
[**delete_role**](OrganizationsApi.md#delete_role) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Remove role for an organization
[**destroy_organization**](OrganizationsApi.md#destroy_organization) | **DELETE** /datastore/organizations/{organizationId} | Remove an organization from the organizationId
[**get_all_users_of_role**](OrganizationsApi.md#get_all_users_of_role) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/ | Get members of a role for an organization from a roleId
[**get_auto_approved_email_domains**](OrganizationsApi.md#get_auto_approved_email_domains) | **GET** /datastore/organizations/{organizationId}/email-domains | Get auto-approved email domains
[**get_flagged_organization_entity_sets**](OrganizationsApi.md#get_flagged_organization_entity_sets) | **POST** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain flag
[**get_members**](OrganizationsApi.md#get_members) | **GET** /datastore/organizations/{organizationId}/principals/members | Get members of a certain organization
[**get_organization**](OrganizationsApi.md#get_organization) | **GET** /datastore/organizations/{organizationId} | Get an organization from the organizationId
[**get_organization_entity_sets**](OrganizationsApi.md#get_organization_entity_sets) | **GET** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain filter
[**get_organizations**](OrganizationsApi.md#get_organizations) | **GET** /datastore/organizations | Get all organizations
[**get_role**](OrganizationsApi.md#get_role) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Get role for an organization from a roleId
[**get_roles**](OrganizationsApi.md#get_roles) | **GET** /datastore/organizations/{organizationId}/principals/roles | Get roles for an organization
[**remove_auto_approved_email_domains**](OrganizationsApi.md#remove_auto_approved_email_domains) | **DELETE** /datastore/organizations/{organizationId}/email-domains | Remove auto-approved email domains
[**remove_member**](OrganizationsApi.md#remove_member) | **DELETE** /datastore/organizations/{organizationId}/principals/members/{userId} | Remove member from an organization
[**remove_role_from_user**](OrganizationsApi.md#remove_role_from_user) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Remove a role from a user
[**set_auto_approved_email_domain**](OrganizationsApi.md#set_auto_approved_email_domain) | **PUT** /datastore/organizations/{organizationId}/email-domains | Set auto-approved email domains
[**update_description**](OrganizationsApi.md#update_description) | **PUT** /datastore/organizations/{organizationId}/description | Update the organization description
[**update_role_description**](OrganizationsApi.md#update_role_description) | **POST** /datastore/organizations/{organizationId}/principals/roles/{roleId}/description | Update role description for an organization from a roleId
[**update_role_title**](OrganizationsApi.md#update_role_title) | **PUT** /datastore/organizations/{organizationId}/principals/roles/{roleId}/title | Update role title for an organization from a roleId
[**update_title**](OrganizationsApi.md#update_title) | **PUT** /datastore/organizations/{organizationId}/title | Update the organization title


# **add_member**
> add_member(organization_id, user_id)

Add member to an organization

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Add member to an organization
    api_instance.add_member(organization_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->add_member: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Add member to an organization
    api_instance.add_member(organization_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->add_member: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **user_id** | [**str**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_role_to_user**
> add_role_to_user(organization_id, role_id, user_id)

Add a role to a user

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Add a role to a user
    api_instance.add_role_to_user(organization_id, role_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->add_role_to_user: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Add a role to a user
    api_instance.add_role_to_user(organization_id, role_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->add_role_to_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **role_id** | [**str**](.md)|  | 
 **user_id** | [**str**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **assemble_entity_sets**
> dict(str, list[str]) assemble_entity_sets(organization_id, request_body)

Materializes entity sets into the organization database.

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = {'key': 56} # dict(str, int) | 

try:
    # Materializes entity sets into the organization database.
    api_response = api_instance.assemble_entity_sets(organization_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->assemble_entity_sets: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = {'key': 56} # dict(str, int) | 

try:
    # Materializes entity sets into the organization database.
    api_response = api_instance.assemble_entity_sets(organization_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->assemble_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **request_body** | [**dict(str, int)**](int.md)|  | 

### Return type

**dict(str, list[str])**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_organization_if_not_exists**
> str create_organization_if_not_exists(organization)

Create an organization if it doesn't exist.

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization = openlattice.Organization() # Organization | 

try:
    # Create an organization if it doesn't exist.
    api_response = api_instance.create_organization_if_not_exists(organization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->create_organization_if_not_exists: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization = openlattice.Organization() # Organization | 

try:
    # Create an organization if it doesn't exist.
    api_response = api_instance.create_organization_if_not_exists(organization)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->create_organization_if_not_exists: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md)|  | 

### Return type

**str**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_role**
> str create_role(role)

Create role

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
role = openlattice.Role() # Role | 

try:
    # Create role
    api_response = api_instance.create_role(role)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->create_role: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
role = openlattice.Role() # Role | 

try:
    # Create role
    api_response = api_instance.create_role(role)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->create_role: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | [**Role**](Role.md)|  | 

### Return type

**str**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_role**
> delete_role(organization_id, role_id)

Remove role for an organization

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 

try:
    # Remove role for an organization
    api_instance.delete_role(organization_id, role_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->delete_role: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 

try:
    # Remove role for an organization
    api_instance.delete_role(organization_id, role_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->delete_role: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **role_id** | [**str**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_organization**
> destroy_organization(organization_id)

Remove an organization from the organizationId

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Remove an organization from the organizationId
    api_instance.destroy_organization(organization_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->destroy_organization: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Remove an organization from the organizationId
    api_instance.destroy_organization(organization_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->destroy_organization: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_users_of_role**
> list[Auth0userBasic] get_all_users_of_role(organization_id, role_id)

Get members of a role for an organization from a roleId

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 

try:
    # Get members of a role for an organization from a roleId
    api_response = api_instance.get_all_users_of_role(organization_id, role_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_all_users_of_role: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 

try:
    # Get members of a role for an organization from a roleId
    api_response = api_instance.get_all_users_of_role(organization_id, role_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_all_users_of_role: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **role_id** | [**str**](.md)|  | 

### Return type

[**list[Auth0userBasic]**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_auto_approved_email_domains**
> list[str] get_auto_approved_email_domains(organization_id)

Get auto-approved email domains

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get auto-approved email domains
    api_response = api_instance.get_auto_approved_email_domains(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_auto_approved_email_domains: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get auto-approved email domains
    api_response = api_instance.get_auto_approved_email_domains(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_auto_approved_email_domains: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

**list[str]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_flagged_organization_entity_sets**
> list[dict(str, list[str])] get_flagged_organization_entity_sets(organization_id, request_body)

Get the entity sets for an organization for a certain flag

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Get the entity sets for an organization for a certain flag
    api_response = api_instance.get_flagged_organization_entity_sets(organization_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_flagged_organization_entity_sets: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = NULL # dict(str, list[str]) | 

try:
    # Get the entity sets for an organization for a certain flag
    api_response = api_instance.get_flagged_organization_entity_sets(organization_id, request_body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_flagged_organization_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **request_body** | [**dict(str, list[str])**](list.md)|  | 

### Return type

**list[dict(str, list[str])]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_members**
> list[OrganizationMember] get_members(organization_id)

Get members of a certain organization

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get members of a certain organization
    api_response = api_instance.get_members(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_members: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get members of a certain organization
    api_response = api_instance.get_members(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_members: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

[**list[OrganizationMember]**](OrganizationMember.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organization**
> Organization get_organization(organization_id)

Get an organization from the organizationId

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get an organization from the organizationId
    api_response = api_instance.get_organization(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_organization: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get an organization from the organizationId
    api_response = api_instance.get_organization(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_organization: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

[**Organization**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organization_entity_sets**
> list[dict(str, list[str])] get_organization_entity_sets(organization_id)

Get the entity sets for an organization for a certain filter

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get the entity sets for an organization for a certain filter
    api_response = api_instance.get_organization_entity_sets(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_organization_entity_sets: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get the entity sets for an organization for a certain filter
    api_response = api_instance.get_organization_entity_sets(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_organization_entity_sets: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

**list[dict(str, list[str])]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organizations**
> list[Organization] get_organizations()

Get all organizations

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))

try:
    # Get all organizations
    api_response = api_instance.get_organizations()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_organizations: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))

try:
    # Get all organizations
    api_response = api_instance.get_organizations()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_organizations: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**list[Organization]**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_role**
> Role get_role(organization_id, role_id)

Get role for an organization from a roleId

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 

try:
    # Get role for an organization from a roleId
    api_response = api_instance.get_role(organization_id, role_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_role: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 

try:
    # Get role for an organization from a roleId
    api_response = api_instance.get_role(organization_id, role_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_role: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **role_id** | [**str**](.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_roles**
> list[Role] get_roles(organization_id)

Get roles for an organization

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get roles for an organization
    api_response = api_instance.get_roles(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_roles: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 

try:
    # Get roles for an organization
    api_response = api_instance.get_roles(organization_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling OrganizationsApi->get_roles: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 

### Return type

[**list[Role]**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_auto_approved_email_domains**
> remove_auto_approved_email_domains(organization_id, request_body)

Remove auto-approved email domains

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = NULL # list[str] | 

try:
    # Remove auto-approved email domains
    api_instance.remove_auto_approved_email_domains(organization_id, request_body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->remove_auto_approved_email_domains: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = NULL # list[str] | 

try:
    # Remove auto-approved email domains
    api_instance.remove_auto_approved_email_domains(organization_id, request_body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->remove_auto_approved_email_domains: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **request_body** | [**list[str]**](list.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_member**
> remove_member(organization_id, user_id)

Remove member from an organization

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Remove member from an organization
    api_instance.remove_member(organization_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->remove_member: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Remove member from an organization
    api_instance.remove_member(organization_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->remove_member: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **user_id** | [**str**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_role_from_user**
> remove_role_from_user(organization_id, role_id, user_id)

Remove a role from a user

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Remove a role from a user
    api_instance.remove_role_from_user(organization_id, role_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->remove_role_from_user: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
user_id = 'user_id_example' # str | 

try:
    # Remove a role from a user
    api_instance.remove_role_from_user(organization_id, role_id, user_id)
except ApiException as e:
    print("Exception when calling OrganizationsApi->remove_role_from_user: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **role_id** | [**str**](.md)|  | 
 **user_id** | [**str**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_auto_approved_email_domain**
> set_auto_approved_email_domain(organization_id, request_body)

Set auto-approved email domains

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = NULL # list[str] | 

try:
    # Set auto-approved email domains
    api_instance.set_auto_approved_email_domain(organization_id, request_body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->set_auto_approved_email_domain: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
request_body = NULL # list[str] | 

try:
    # Set auto-approved email domains
    api_instance.set_auto_approved_email_domain(organization_id, request_body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->set_auto_approved_email_domain: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **request_body** | [**list[str]**](list.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_description**
> update_description(organization_id, body)

Update the organization description

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update the organization description
    api_instance.update_description(organization_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_description: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update the organization description
    api_instance.update_description(organization_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_description: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **body** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_role_description**
> update_role_description(organization_id, role_id, body)

Update role description for an organization from a roleId

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update role description for an organization from a roleId
    api_instance.update_role_description(organization_id, role_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_role_description: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update role description for an organization from a roleId
    api_instance.update_role_description(organization_id, role_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_role_description: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **role_id** | [**str**](.md)|  | 
 **body** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_role_title**
> update_role_title(organization_id, role_id, body)

Update role title for an organization from a roleId

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update role title for an organization from a roleId
    api_instance.update_role_title(organization_id, role_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_role_title: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
role_id = 'role_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update role title for an organization from a roleId
    api_instance.update_role_title(organization_id, role_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_role_title: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **role_id** | [**str**](.md)|  | 
 **body** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_title**
> update_title(organization_id, body)

Update the organization title

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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update the organization title
    api_instance.update_title(organization_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_title: %s\n" % e)
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
api_instance = openlattice.OrganizationsApi(openlattice.ApiClient(configuration))
organization_id = 'organization_id_example' # str | 
body = 'body_example' # str | 

try:
    # Update the organization title
    api_instance.update_title(organization_id, body)
except ApiException as e:
    print("Exception when calling OrganizationsApi->update_title: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**str**](.md)|  | 
 **body** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

