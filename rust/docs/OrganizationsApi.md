# \OrganizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_member**](OrganizationsApi.md#add_member) | **Put** /datastore/organizations/{organizationId}/principals/members/{userId} | Add member to an organization
[**add_role_to_user**](OrganizationsApi.md#add_role_to_user) | **Put** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Add a role to a user
[**assemble_entity_sets**](OrganizationsApi.md#assemble_entity_sets) | **Post** /datastore/organizations/{organizationId}/entity-sets/assemble | Materializes entity sets into the organization database.
[**create_organization_if_not_exists**](OrganizationsApi.md#create_organization_if_not_exists) | **Post** /datastore/organizations | Creates an organization if it doesn't exist.
[**create_role**](OrganizationsApi.md#create_role) | **Post** /datastore/organizations/roles | Creates role
[**delete_role**](OrganizationsApi.md#delete_role) | **Delete** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Remove role for an organization
[**destroy_organization**](OrganizationsApi.md#destroy_organization) | **Delete** /datastore/organizations/{organizationId} | Remove an organization from the organizationId
[**get_all_users_of_role**](OrganizationsApi.md#get_all_users_of_role) | **Get** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/ | Get members of a role for an organization from a roleId
[**get_auto_approved_email_domains**](OrganizationsApi.md#get_auto_approved_email_domains) | **Get** /datastore/organizations/{organizationId}/email-domains | Get auto-approved email domains
[**get_flagged_organization_entity_sets**](OrganizationsApi.md#get_flagged_organization_entity_sets) | **Post** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain flag
[**get_members**](OrganizationsApi.md#get_members) | **Get** /datastore/organizations/{organizationId}/principals/members | Get members of a certain organization
[**get_organization**](OrganizationsApi.md#get_organization) | **Get** /datastore/organizations/{organizationId} | Get an organization from the organizationId
[**get_organization_entity_sets**](OrganizationsApi.md#get_organization_entity_sets) | **Get** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain filter
[**get_organization_integration_account**](OrganizationsApi.md#get_organization_integration_account) | **Get** /datastore/organizations/{organizationId}/integration | Get the integrations account for an organization from the organizationId
[**get_organizations**](OrganizationsApi.md#get_organizations) | **Get** /datastore/organizations | Get all organizations
[**get_role**](OrganizationsApi.md#get_role) | **Get** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Get role for an organization from a roleId
[**get_roles**](OrganizationsApi.md#get_roles) | **Get** /datastore/organizations/{organizationId}/principals/roles | Get roles for an organization
[**refresh_data_changes**](OrganizationsApi.md#refresh_data_changes) | **Post** /datastore/organizations/{organizationId}/{entitySetId}/refresh | Refreshes the requested materialized entity set with data changes in the organization.
[**remove_auto_approved_email_domains**](OrganizationsApi.md#remove_auto_approved_email_domains) | **Delete** /datastore/organizations/{organizationId}/email-domains | Remove auto-approved email domains
[**remove_member**](OrganizationsApi.md#remove_member) | **Delete** /datastore/organizations/{organizationId}/principals/members/{userId} | Remove member from an organization
[**remove_role_from_user**](OrganizationsApi.md#remove_role_from_user) | **Delete** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Remove a role from a user
[**set_auto_approved_email_domain**](OrganizationsApi.md#set_auto_approved_email_domain) | **Put** /datastore/organizations/{organizationId}/email-domains | Set auto-approved email domains
[**synchronize_edm_changes**](OrganizationsApi.md#synchronize_edm_changes) | **Post** /datastore/organizations/{organizationId}/{entitySetId}/synchronize | Synchronizes EDM changes to the requested materialized entity set in the organization.
[**update_description**](OrganizationsApi.md#update_description) | **Put** /datastore/organizations/{organizationId}/description | Update the organization description
[**update_role_description**](OrganizationsApi.md#update_role_description) | **Post** /datastore/organizations/{organizationId}/principals/roles/{roleId}/description | Update role description for an organization from a roleId
[**update_role_title**](OrganizationsApi.md#update_role_title) | **Put** /datastore/organizations/{organizationId}/principals/roles/{roleId}/title | Update role title for an organization from a roleId
[**update_title**](OrganizationsApi.md#update_title) | **Put** /datastore/organizations/{organizationId}/title | Update the organization title



## add_member

> add_member(organization_id, user_id)
Add member to an organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**user_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_role_to_user

> add_role_to_user(organization_id, role_id, user_id)
Add a role to a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**role_id** | [**String**](.md) |  | [required] |
**user_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## assemble_entity_sets

> ::std::collections::HashMap<String, Vec<String>> assemble_entity_sets(organization_id, request_body)
Materializes entity sets into the organization database.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**request_body** | [**::std::collections::HashMap<String, i32>**](i32.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, Vec<String>>**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_organization_if_not_exists

> String create_organization_if_not_exists(organization)
Creates an organization if it doesn't exist.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization** | [**Organization**](Organization.md) |  | [required] |

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_role

> String create_role(role)
Creates role

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**role** | [**Role**](Role.md) |  | [required] |

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_role

> delete_role(organization_id, role_id)
Remove role for an organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**role_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## destroy_organization

> destroy_organization(organization_id)
Remove an organization from the organizationId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_users_of_role

> Vec<crate::models::Auth0userBasic> get_all_users_of_role(organization_id, role_id)
Get members of a role for an organization from a roleId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**role_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<crate::models::Auth0userBasic>**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_auto_approved_email_domains

> Vec<String> get_auto_approved_email_domains(organization_id)
Get auto-approved email domains

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

**Vec<String>**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_flagged_organization_entity_sets

> Vec<::std::collections::HashMap<String, Vec<String>>> get_flagged_organization_entity_sets(organization_id, request_body)
Get the entity sets for an organization for a certain flag

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**request_body** | [**::std::collections::HashMap<String, Vec<String>>**](array.md) |  | [required] |

### Return type

[**Vec<::std::collections::HashMap<String, Vec<String>>>**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_members

> Vec<crate::models::OrganizationMember> get_members(organization_id)
Get members of a certain organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<crate::models::OrganizationMember>**](OrganizationMember.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_organization

> crate::models::Organization get_organization(organization_id)
Get an organization from the organizationId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::Organization**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_organization_entity_sets

> ::std::collections::HashMap<String, Vec<String>> get_organization_entity_sets(organization_id)
Get the entity sets for an organization for a certain filter

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, Vec<String>>**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_organization_integration_account

> crate::models::InlineResponse200 get_organization_integration_account(organization_id)
Get the integrations account for an organization from the organizationId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::InlineResponse200**](inline_response_200.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_organizations

> Vec<crate::models::Organization> get_organizations()
Get all organizations

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::Organization>**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_role

> crate::models::Role get_role(organization_id, role_id)
Get role for an organization from a roleId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**role_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::Role**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_roles

> Vec<crate::models::Role> get_roles(organization_id)
Get roles for an organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<crate::models::Role>**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## refresh_data_changes

> refresh_data_changes(organization_id, entity_set_id)
Refreshes the requested materialized entity set with data changes in the organization.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_auto_approved_email_domains

> remove_auto_approved_email_domains(organization_id, request_body)
Remove auto-approved email domains

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**request_body** | [**Vec<String>**](String.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_member

> remove_member(organization_id, user_id)
Remove member from an organization

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**user_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_role_from_user

> remove_role_from_user(organization_id, role_id, user_id)
Remove a role from a user

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**role_id** | [**String**](.md) |  | [required] |
**user_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## set_auto_approved_email_domain

> set_auto_approved_email_domain(organization_id, request_body)
Set auto-approved email domains

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**request_body** | [**Vec<String>**](String.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## synchronize_edm_changes

> synchronize_edm_changes(organization_id, entity_set_id)
Synchronizes EDM changes to the requested materialized entity set in the organization.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_description

> update_description(organization_id, body)
Update the organization description

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**body** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_role_description

> update_role_description(organization_id, role_id, body)
Update role description for an organization from a roleId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**role_id** | [**String**](.md) |  | [required] |
**body** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_role_title

> update_role_title(organization_id, role_id, body)
Update role title for an organization from a roleId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**role_id** | [**String**](.md) |  | [required] |
**body** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_title

> update_title(organization_id, body)
Update the organization title

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**organization_id** | [**String**](.md) |  | [required] |
**body** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

