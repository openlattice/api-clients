# OrganizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddMember**](OrganizationsApi.md#AddMember) | **PUT** /datastore/organizations/{organizationId}/principals/members/{userId} | Add member to an organization
[**AddRoleToUser**](OrganizationsApi.md#AddRoleToUser) | **PUT** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Add a role to a user
[**AssembleEntitySets**](OrganizationsApi.md#AssembleEntitySets) | **POST** /datastore/organizations/{organizationId}/entitySets/assemble | Materializes entity sets into the organization database.
[**CreateOrganizationIfNotExists**](OrganizationsApi.md#CreateOrganizationIfNotExists) | **POST** /datastore/organizations | Create an organisation if it doesn&#39;t exist.
[**CreateRole**](OrganizationsApi.md#CreateRole) | **POST** /datastore/organizations/roles | Create role
[**DeleteRole**](OrganizationsApi.md#DeleteRole) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Remove role for an organization
[**DestroyOrganization**](OrganizationsApi.md#DestroyOrganization) | **DELETE** /datastore/organizations/{organizationId} | Remove an organisation from the organizationId
[**GetAllUsersOfRole**](OrganizationsApi.md#GetAllUsersOfRole) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/ | Get members of a role for an organization from a roleId
[**GetAutoApprovedEmailDomains**](OrganizationsApi.md#GetAutoApprovedEmailDomains) | **GET** /datastore/organizations/{organizationId}/email-domains | Get auto-approved email domains
[**GetFlaggedOrganizationEntitySets**](OrganizationsApi.md#GetFlaggedOrganizationEntitySets) | **POST** /datastore/organizations/{organizationId}/entitySets | Get the entity sets for an organization for a certain flag
[**GetMembers**](OrganizationsApi.md#GetMembers) | **GET** /datastore/organizations/{organizationId}/principals/members | Get members of a certain organization
[**GetOrganization**](OrganizationsApi.md#GetOrganization) | **GET** /datastore/organizations/{organizationId} | Get an organisation from the organizationId
[**GetOrganizationEntitySets**](OrganizationsApi.md#GetOrganizationEntitySets) | **GET** /datastore/organizations/{organizationId}/entitySets | Get the entity sets for an organization for a certain filter
[**GetOrganizations**](OrganizationsApi.md#GetOrganizations) | **GET** /datastore/organizations | Get all organisations
[**GetRole**](OrganizationsApi.md#GetRole) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Get role for an organization from a roleId
[**GetRoles**](OrganizationsApi.md#GetRoles) | **GET** /datastore/organizations/{organizationId}/principals/roles | Get roles for an organization
[**RemoveAutoApprovedEmailDomains**](OrganizationsApi.md#RemoveAutoApprovedEmailDomains) | **DELETE** /datastore/organizations/{organizationId}/email-domains | Remove auto-approved email domains
[**RemoveMember**](OrganizationsApi.md#RemoveMember) | **DELETE** /datastore/organizations/{organizationId}/principals/members/{userId} | Remove member from an organization
[**RemoveRoleFromUser**](OrganizationsApi.md#RemoveRoleFromUser) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Remove a role from a user
[**SetAutoApprovedEmailDomain**](OrganizationsApi.md#SetAutoApprovedEmailDomain) | **PUT** /datastore/organizations/{organizationId}/email-domains | Set auto-approved email domains
[**UpdateDescription**](OrganizationsApi.md#UpdateDescription) | **PUT** /datastore/organizations/{organizationId}/description | Update the organisation description
[**UpdateRoleDescription**](OrganizationsApi.md#UpdateRoleDescription) | **POST** /datastore/organizations/{organizationId}/principals/roles/{roleId}/description | Update role description for an organization from a roleId
[**UpdateRoleTitle**](OrganizationsApi.md#UpdateRoleTitle) | **POST** /datastore/organizations/{organizationId}/principals/roles/{roleId}/title | Update role title for an organization from a roleId
[**UpdateTitle**](OrganizationsApi.md#UpdateTitle) | **PUT** /datastore/organizations/{organizationId}/title | Update the organisation title


# **AddMember**
> AddMember(organization.id, user.id)

Add member to an organization

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.user.id <- 'user.id_example' # character | 

#Add member to an organization
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$AddMember(var.organization.id, var.user.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **user.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **AddRoleToUser**
> AddRoleToUser(organization.id, role.id, user.id)

Add a role to a user

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.role.id <- 'role.id_example' # character | 
var.user.id <- 'user.id_example' # character | 

#Add a role to a user
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$AddRoleToUser(var.organization.id, var.role.id, var.user.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **role.id** | [**character**](.md)|  | 
 **user.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **AssembleEntitySets**
> character AssembleEntitySets(organization.id, request.body)

Materializes entity sets into the organization database.

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.request.body <- [array$new()] # character | 

#Materializes entity sets into the organization database.
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$AssembleEntitySets(var.organization.id, var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **request.body** | [**character**](array.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **CreateOrganizationIfNotExists**
> character CreateOrganizationIfNotExists(organization)

Create an organisation if it doesn't exist.

### Example
```R
library(openlattice)

var.organization <- Organization$new() # Organization | 

#Create an organisation if it doesn't exist.
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateOrganizationIfNotExists(var.organization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **CreateRole**
> character CreateRole(role)

Create role

### Example
```R
library(openlattice)

var.role <- Role$new() # Role | 

#Create role
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$CreateRole(var.role)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | [**Role**](Role.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **DeleteRole**
> DeleteRole(organization.id, role.id)

Remove role for an organization

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.role.id <- 'role.id_example' # character | 

#Remove role for an organization
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$DeleteRole(var.organization.id, var.role.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **role.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **DestroyOrganization**
> DestroyOrganization(organization.id)

Remove an organisation from the organizationId

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Remove an organisation from the organizationId
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$DestroyOrganization(var.organization.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **GetAllUsersOfRole**
> Auth0userBasic GetAllUsersOfRole(organization.id, role.id)

Get members of a role for an organization from a roleId

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.role.id <- 'role.id_example' # character | 

#Get members of a role for an organization from a roleId
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAllUsersOfRole(var.organization.id, var.role.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **role.id** | [**character**](.md)|  | 

### Return type

[**Auth0userBasic**](auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetAutoApprovedEmailDomains**
> character GetAutoApprovedEmailDomains(organization.id)

Get auto-approved email domains

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Get auto-approved email domains
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAutoApprovedEmailDomains(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetFlaggedOrganizationEntitySets**
> character GetFlaggedOrganizationEntitySets(organization.id, request.body)

Get the entity sets for an organization for a certain flag

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.request.body <- {'key' => array$new()} # character | 

#Get the entity sets for an organization for a certain flag
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetFlaggedOrganizationEntitySets(var.organization.id, var.request.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **request.body** | [**character**](array.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **GetMembers**
> OrganizationMember GetMembers(organization.id)

Get members of a certain organization

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Get members of a certain organization
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetMembers(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

### Return type

[**OrganizationMember**](organizationMember.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetOrganization**
> Organization GetOrganization(organization.id)

Get an organisation from the organizationId

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Get an organisation from the organizationId
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetOrganization(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

### Return type

[**Organization**](organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetOrganizationEntitySets**
> character GetOrganizationEntitySets(organization.id)

Get the entity sets for an organization for a certain filter

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Get the entity sets for an organization for a certain filter
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetOrganizationEntitySets(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

### Return type

**character**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetOrganizations**
> Organization GetOrganizations()

Get all organisations

### Example
```R
library(openlattice)


#Get all organisations
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetOrganizations()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Organization**](organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetRole**
> Role GetRole(organization.id, role.id)

Get role for an organization from a roleId

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.role.id <- 'role.id_example' # character | 

#Get role for an organization from a roleId
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetRole(var.organization.id, var.role.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **role.id** | [**character**](.md)|  | 

### Return type

[**Role**](role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **GetRoles**
> Role GetRoles(organization.id)

Get roles for an organization

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 

#Get roles for an organization
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetRoles(var.organization.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 

### Return type

[**Role**](role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **RemoveAutoApprovedEmailDomains**
> RemoveAutoApprovedEmailDomains(organization.id, request.body)

Remove auto-approved email domains

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.request.body <- [array$new()] # character | 

#Remove auto-approved email domains
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$RemoveAutoApprovedEmailDomains(var.organization.id, var.request.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **request.body** | [**character**](array.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **RemoveMember**
> RemoveMember(organization.id, user.id)

Remove member from an organization

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.user.id <- 'user.id_example' # character | 

#Remove member from an organization
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$RemoveMember(var.organization.id, var.user.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **user.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **RemoveRoleFromUser**
> RemoveRoleFromUser(organization.id, role.id, user.id)

Remove a role from a user

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.role.id <- 'role.id_example' # character | 
var.user.id <- 'user.id_example' # character | 

#Remove a role from a user
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$RemoveRoleFromUser(var.organization.id, var.role.id, var.user.id)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **role.id** | [**character**](.md)|  | 
 **user.id** | [**character**](.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **SetAutoApprovedEmailDomain**
> SetAutoApprovedEmailDomain(organization.id, request.body)

Set auto-approved email domains

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.request.body <- [array$new()] # character | 

#Set auto-approved email domains
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$SetAutoApprovedEmailDomain(var.organization.id, var.request.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **request.body** | [**character**](array.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateDescription**
> UpdateDescription(organization.id, body)

Update the organisation description

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.body <- 'body_example' # character | 

#Update the organisation description
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateDescription(var.organization.id, var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **body** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateRoleDescription**
> UpdateRoleDescription(organization.id, role.id, body)

Update role description for an organization from a roleId

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.role.id <- 'role.id_example' # character | 
var.body <- 'body_example' # character | 

#Update role description for an organization from a roleId
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateRoleDescription(var.organization.id, var.role.id, var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **role.id** | [**character**](.md)|  | 
 **body** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateRoleTitle**
> UpdateRoleTitle(organization.id, role.id, body)

Update role title for an organization from a roleId

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.role.id <- 'role.id_example' # character | 
var.body <- 'body_example' # character | 

#Update role title for an organization from a roleId
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateRoleTitle(var.organization.id, var.role.id, var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **role.id** | [**character**](.md)|  | 
 **body** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **UpdateTitle**
> UpdateTitle(organization.id, body)

Update the organisation title

### Example
```R
library(openlattice)

var.organization.id <- 'organization.id_example' # character | 
var.body <- 'body_example' # character | 

#Update the organisation title
api.instance <- OrganizationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$UpdateTitle(var.organization.id, var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization.id** | [**character**](.md)|  | 
 **body** | **character**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



