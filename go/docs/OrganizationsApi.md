# \OrganizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddMember**](OrganizationsApi.md#AddMember) | **Put** /datastore/organizations/{organizationId}/principals/members/{userId} | Add member to an organization
[**AddRoleToUser**](OrganizationsApi.md#AddRoleToUser) | **Put** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Add a role to a user
[**AssembleEntitySets**](OrganizationsApi.md#AssembleEntitySets) | **Post** /datastore/organizations/{organizationId}/entity-sets/assemble | Materializes entity sets into the organization database.
[**CreateOrganizationIfNotExists**](OrganizationsApi.md#CreateOrganizationIfNotExists) | **Post** /datastore/organizations | Creates an organization if it doesn&#39;t exist.
[**CreateRole**](OrganizationsApi.md#CreateRole) | **Post** /datastore/organizations/roles | Creates role
[**DeleteRole**](OrganizationsApi.md#DeleteRole) | **Delete** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Remove role for an organization
[**DestroyOrganization**](OrganizationsApi.md#DestroyOrganization) | **Delete** /datastore/organizations/{organizationId} | Remove an organization from the organizationId
[**DestroyTransportedEntitySet**](OrganizationsApi.md#DestroyTransportedEntitySet) | **Get** /datastore/organizations/{organizationId}/{entitySetId}/destroy | Marks entity set for transporter for materialized views
[**GetAllUsersOfRole**](OrganizationsApi.md#GetAllUsersOfRole) | **Get** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/ | Get members of a role for an organization from a roleId
[**GetAutoApprovedEmailDomains**](OrganizationsApi.md#GetAutoApprovedEmailDomains) | **Get** /datastore/organizations/{organizationId}/email-domains | Get auto-approved email domains
[**GetFlaggedOrganizationEntitySets**](OrganizationsApi.md#GetFlaggedOrganizationEntitySets) | **Post** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain flag
[**GetMembers**](OrganizationsApi.md#GetMembers) | **Get** /datastore/organizations/{organizationId}/principals/members | Get members of a certain organization
[**GetOrganization**](OrganizationsApi.md#GetOrganization) | **Get** /datastore/organizations/{organizationId} | Get an organization from the organizationId
[**GetOrganizationDatabaseName**](OrganizationsApi.md#GetOrganizationDatabaseName) | **Get** /datastore/organizations/{organizationId}/database | Get database name for an organization
[**GetOrganizationEntitySets**](OrganizationsApi.md#GetOrganizationEntitySets) | **Get** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain filter
[**GetOrganizationIntegrationAccount**](OrganizationsApi.md#GetOrganizationIntegrationAccount) | **Get** /datastore/organizations/{organizationId}/integration | Get the integrations account for an organization from the organizationId
[**GetOrganizations**](OrganizationsApi.md#GetOrganizations) | **Get** /datastore/organizations | Get all organizations
[**GetRole**](OrganizationsApi.md#GetRole) | **Get** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Get role for an organization from a roleId
[**GetRoles**](OrganizationsApi.md#GetRoles) | **Get** /datastore/organizations/{organizationId}/principals/roles | Get roles for an organization
[**RefreshDataChanges**](OrganizationsApi.md#RefreshDataChanges) | **Post** /datastore/organizations/{organizationId}/{entitySetId}/refresh | Refreshes the requested materialized entity set with data changes in the organization.
[**RemoveAutoApprovedEmailDomains**](OrganizationsApi.md#RemoveAutoApprovedEmailDomains) | **Delete** /datastore/organizations/{organizationId}/email-domains | Remove auto-approved email domains
[**RemoveMember**](OrganizationsApi.md#RemoveMember) | **Delete** /datastore/organizations/{organizationId}/principals/members/{userId} | Remove member from an organization
[**RemoveRoleFromUser**](OrganizationsApi.md#RemoveRoleFromUser) | **Delete** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Remove a role from a user
[**RenameOrganizationDatabase**](OrganizationsApi.md#RenameOrganizationDatabase) | **Patch** /datastore/organizations/{organizationId}/database | Rename the database of organization
[**SetAutoApprovedEmailDomain**](OrganizationsApi.md#SetAutoApprovedEmailDomain) | **Put** /datastore/organizations/{organizationId}/email-domains | Set auto-approved email domains
[**SynchronizeEdmChanges**](OrganizationsApi.md#SynchronizeEdmChanges) | **Post** /datastore/organizations/{organizationId}/{entitySetId}/synchronize | Synchronizes EDM changes to the requested materialized entity set in the organization.
[**TransportEntitySet**](OrganizationsApi.md#TransportEntitySet) | **Get** /datastore/organizations/{organizationId}/{entitySetId}/transport | Marks entity set for transporter for materialized views
[**UpdateDescription**](OrganizationsApi.md#UpdateDescription) | **Put** /datastore/organizations/{organizationId}/description | Update the organization description
[**UpdateRoleDescription**](OrganizationsApi.md#UpdateRoleDescription) | **Post** /datastore/organizations/{organizationId}/principals/roles/{roleId}/description | Update role description for an organization from a roleId
[**UpdateRoleTitle**](OrganizationsApi.md#UpdateRoleTitle) | **Put** /datastore/organizations/{organizationId}/principals/roles/{roleId}/title | Update role title for an organization from a roleId
[**UpdateTitle**](OrganizationsApi.md#UpdateTitle) | **Put** /datastore/organizations/{organizationId}/title | Update the organization title



## AddMember

> AddMember(ctx, organizationId, userId)

Add member to an organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**userId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddRoleToUser

> AddRoleToUser(ctx, organizationId, roleId, userId)

Add a role to a user

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**roleId** | [**string**](.md)|  | 
**userId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AssembleEntitySets

> map[string][]string AssembleEntitySets(ctx, organizationId, requestBody)

Materializes entity sets into the organization database.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**requestBody** | [**map[string]int32**](int32.md)|  | 

### Return type

[**map[string][]string**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateOrganizationIfNotExists

> string CreateOrganizationIfNotExists(ctx, organization)

Creates an organization if it doesn't exist.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organization** | [**Organization**](Organization.md)|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateRole

> string CreateRole(ctx, role)

Creates role

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**role** | [**Role**](Role.md)|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteRole

> DeleteRole(ctx, organizationId, roleId)

Remove role for an organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**roleId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DestroyOrganization

> DestroyOrganization(ctx, organizationId)

Remove an organization from the organizationId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DestroyTransportedEntitySet

> DestroyTransportedEntitySet(ctx, organizationId, entitySetId)

Marks entity set for transporter for materialized views

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**entitySetId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAllUsersOfRole

> []Auth0userBasic GetAllUsersOfRole(ctx, organizationId, roleId)

Get members of a role for an organization from a roleId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**roleId** | [**string**](.md)|  | 

### Return type

[**[]Auth0userBasic**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAutoApprovedEmailDomains

> []string GetAutoApprovedEmailDomains(ctx, organizationId)

Get auto-approved email domains

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

**[]string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFlaggedOrganizationEntitySets

> []map[string][]string GetFlaggedOrganizationEntitySets(ctx, organizationId, requestBody)

Get the entity sets for an organization for a certain flag

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**requestBody** | [**map[string][]string**](array.md)|  | 

### Return type

[**[]map[string][]string**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetMembers

> []OrganizationMember GetMembers(ctx, organizationId)

Get members of a certain organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**[]OrganizationMember**](OrganizationMember.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganization

> Organization GetOrganization(ctx, organizationId)

Get an organization from the organizationId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**Organization**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganizationDatabaseName

> string GetOrganizationDatabaseName(ctx, organizationId)

Get database name for an organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

**string**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganizationEntitySets

> map[string][]string GetOrganizationEntitySets(ctx, organizationId)

Get the entity sets for an organization for a certain filter

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**map[string][]string**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganizationIntegrationAccount

> InlineResponse200 GetOrganizationIntegrationAccount(ctx, organizationId)

Get the integrations account for an organization from the organizationId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**InlineResponse200**](inline_response_200.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrganizations

> []Organization GetOrganizations(ctx, )

Get all organizations

### Required Parameters

This endpoint does not need any parameter.

### Return type

[**[]Organization**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRole

> Role GetRole(ctx, organizationId, roleId)

Get role for an organization from a roleId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**roleId** | [**string**](.md)|  | 

### Return type

[**Role**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetRoles

> []Role GetRoles(ctx, organizationId)

Get roles for an organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 

### Return type

[**[]Role**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RefreshDataChanges

> RefreshDataChanges(ctx, organizationId, entitySetId)

Refreshes the requested materialized entity set with data changes in the organization.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**entitySetId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveAutoApprovedEmailDomains

> RemoveAutoApprovedEmailDomains(ctx, organizationId, requestBody)

Remove auto-approved email domains

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**requestBody** | [**[]string**](string.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveMember

> RemoveMember(ctx, organizationId, userId)

Remove member from an organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**userId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RemoveRoleFromUser

> RemoveRoleFromUser(ctx, organizationId, roleId, userId)

Remove a role from a user

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**roleId** | [**string**](.md)|  | 
**userId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## RenameOrganizationDatabase

> RenameOrganizationDatabase(ctx, organizationId, body)

Rename the database of organization

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**body** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SetAutoApprovedEmailDomain

> SetAutoApprovedEmailDomain(ctx, organizationId, requestBody)

Set auto-approved email domains

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**requestBody** | [**[]string**](string.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## SynchronizeEdmChanges

> SynchronizeEdmChanges(ctx, organizationId, entitySetId)

Synchronizes EDM changes to the requested materialized entity set in the organization.

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**entitySetId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## TransportEntitySet

> TransportEntitySet(ctx, organizationId, entitySetId)

Marks entity set for transporter for materialized views

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**entitySetId** | [**string**](.md)|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateDescription

> UpdateDescription(ctx, organizationId, body)

Update the organization description

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**body** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateRoleDescription

> UpdateRoleDescription(ctx, organizationId, roleId, body)

Update role description for an organization from a roleId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**roleId** | [**string**](.md)|  | 
**body** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateRoleTitle

> UpdateRoleTitle(ctx, organizationId, roleId, body)

Update role title for an organization from a roleId

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**roleId** | [**string**](.md)|  | 
**body** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateTitle

> UpdateTitle(ctx, organizationId, body)

Update the organization title

### Required Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**organizationId** | [**string**](.md)|  | 
**body** | **string**|  | 

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

