# OrganizationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMember**](OrganizationsApi.md#addMember) | **PUT** /datastore/organizations/{organizationId}/principals/members/{userId} | Add member to an organization
[**addRoleToUser**](OrganizationsApi.md#addRoleToUser) | **PUT** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Add a role to a user
[**assembleEntitySets**](OrganizationsApi.md#assembleEntitySets) | **POST** /datastore/organizations/{organizationId}/entity-sets/assemble | Materializes entity sets into the organization database.
[**createOrganizationIfNotExists**](OrganizationsApi.md#createOrganizationIfNotExists) | **POST** /datastore/organizations | Creates an organization if it doesn&#39;t exist.
[**createRole**](OrganizationsApi.md#createRole) | **POST** /datastore/organizations/roles | Creates role
[**deleteRole**](OrganizationsApi.md#deleteRole) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Remove role for an organization
[**destroyOrganization**](OrganizationsApi.md#destroyOrganization) | **DELETE** /datastore/organizations/{organizationId} | Remove an organization from the organizationId
[**destroyTransportedEntitySet**](OrganizationsApi.md#destroyTransportedEntitySet) | **GET** /datastore/organizations/{organizationId}/{entitySetId}/destroy | Marks entity set for transporter for materialized views
[**getAllUsersOfRole**](OrganizationsApi.md#getAllUsersOfRole) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/ | Get members of a role for an organization from a roleId
[**getAutoApprovedEmailDomains**](OrganizationsApi.md#getAutoApprovedEmailDomains) | **GET** /datastore/organizations/{organizationId}/email-domains | Get auto-approved email domains
[**getFlaggedOrganizationEntitySets**](OrganizationsApi.md#getFlaggedOrganizationEntitySets) | **POST** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain flag
[**getMembers**](OrganizationsApi.md#getMembers) | **GET** /datastore/organizations/{organizationId}/principals/members | Get members of a certain organization
[**getOrganization**](OrganizationsApi.md#getOrganization) | **GET** /datastore/organizations/{organizationId} | Get an organization from the organizationId
[**getOrganizationDatabaseName**](OrganizationsApi.md#getOrganizationDatabaseName) | **GET** /datastore/organizations/{organizationId}/database | Get database name for an organization
[**getOrganizationEntitySets**](OrganizationsApi.md#getOrganizationEntitySets) | **GET** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain filter
[**getOrganizationIntegrationAccount**](OrganizationsApi.md#getOrganizationIntegrationAccount) | **GET** /datastore/organizations/{organizationId}/integration | Get the integrations account for an organization from the organizationId
[**getOrganizations**](OrganizationsApi.md#getOrganizations) | **GET** /datastore/organizations | Get all organizations
[**getRole**](OrganizationsApi.md#getRole) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Get role for an organization from a roleId
[**getRoles**](OrganizationsApi.md#getRoles) | **GET** /datastore/organizations/{organizationId}/principals/roles | Get roles for an organization
[**refreshDataChanges**](OrganizationsApi.md#refreshDataChanges) | **POST** /datastore/organizations/{organizationId}/{entitySetId}/refresh | Refreshes the requested materialized entity set with data changes in the organization.
[**removeAutoApprovedEmailDomains**](OrganizationsApi.md#removeAutoApprovedEmailDomains) | **DELETE** /datastore/organizations/{organizationId}/email-domains | Remove auto-approved email domains
[**removeMember**](OrganizationsApi.md#removeMember) | **DELETE** /datastore/organizations/{organizationId}/principals/members/{userId} | Remove member from an organization
[**removeRoleFromUser**](OrganizationsApi.md#removeRoleFromUser) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Remove a role from a user
[**renameOrganizationDatabase**](OrganizationsApi.md#renameOrganizationDatabase) | **PATCH** /datastore/organizations/{organizationId}/database | Rename the database of organization
[**setAutoApprovedEmailDomain**](OrganizationsApi.md#setAutoApprovedEmailDomain) | **PUT** /datastore/organizations/{organizationId}/email-domains | Set auto-approved email domains
[**synchronizeEdmChanges**](OrganizationsApi.md#synchronizeEdmChanges) | **POST** /datastore/organizations/{organizationId}/{entitySetId}/synchronize | Synchronizes EDM changes to the requested materialized entity set in the organization.
[**transportEntitySet**](OrganizationsApi.md#transportEntitySet) | **GET** /datastore/organizations/{organizationId}/{entitySetId}/transport | Marks entity set for transporter for materialized views
[**updateDescription**](OrganizationsApi.md#updateDescription) | **PUT** /datastore/organizations/{organizationId}/description | Update the organization description
[**updateRoleDescription**](OrganizationsApi.md#updateRoleDescription) | **POST** /datastore/organizations/{organizationId}/principals/roles/{roleId}/description | Update role description for an organization from a roleId
[**updateRoleTitle**](OrganizationsApi.md#updateRoleTitle) | **PUT** /datastore/organizations/{organizationId}/principals/roles/{roleId}/title | Update role title for an organization from a roleId
[**updateTitle**](OrganizationsApi.md#updateTitle) | **PUT** /datastore/organizations/{organizationId}/title | Update the organization title



## addMember

> addMember(organizationId, userId)

Add member to an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID userId = null; // UUID | 
try {
    apiInstance.addMember(organizationId, userId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#addMember");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **userId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## addRoleToUser

> addRoleToUser(organizationId, roleId, userId)

Add a role to a user

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID roleId = null; // UUID | 
UUID userId = null; // UUID | 
try {
    apiInstance.addRoleToUser(organizationId, roleId, userId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#addRoleToUser");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]
 **userId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## assembleEntitySets

> Map&lt;String, List&lt;String&gt;&gt; assembleEntitySets(organizationId, requestBody)

Materializes entity sets into the organization database.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
Map<String, Integer> requestBody = new HashMap(); // Map<String, Integer> | 
try {
    Map<String, List<String>> result = apiInstance.assembleEntitySets(organizationId, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#assembleEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**Map&lt;String, Integer&gt;**](Integer.md)|  |

### Return type

[**Map&lt;String, List&lt;String&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createOrganizationIfNotExists

> UUID createOrganizationIfNotExists(organization)

Creates an organization if it doesn&#39;t exist.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
Organization organization = new Organization(); // Organization | 
try {
    UUID result = apiInstance.createOrganizationIfNotExists(organization);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#createOrganizationIfNotExists");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**Organization**](Organization.md)|  |

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## createRole

> UUID createRole(role)

Creates role

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
Role role = new Role(); // Role | 
try {
    UUID result = apiInstance.createRole(role);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#createRole");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | [**Role**](Role.md)|  |

### Return type

[**UUID**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteRole

> deleteRole(organizationId, roleId)

Remove role for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID roleId = null; // UUID | 
try {
    apiInstance.deleteRole(organizationId, roleId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#deleteRole");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroyOrganization

> destroyOrganization(organizationId)

Remove an organization from the organizationId

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    apiInstance.destroyOrganization(organizationId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#destroyOrganization");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## destroyTransportedEntitySet

> destroyTransportedEntitySet(organizationId, entitySetId)

Marks entity set for transporter for materialized views

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID entitySetId = null; // UUID | 
try {
    apiInstance.destroyTransportedEntitySet(organizationId, entitySetId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#destroyTransportedEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getAllUsersOfRole

> List&lt;Auth0userBasic&gt; getAllUsersOfRole(organizationId, roleId)

Get members of a role for an organization from a roleId

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID roleId = null; // UUID | 
try {
    List<Auth0userBasic> result = apiInstance.getAllUsersOfRole(organizationId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getAllUsersOfRole");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;Auth0userBasic&gt;**](Auth0userBasic.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getAutoApprovedEmailDomains

> List&lt;String&gt; getAutoApprovedEmailDomains(organizationId)

Get auto-approved email domains

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    List<String> result = apiInstance.getAutoApprovedEmailDomains(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getAutoApprovedEmailDomains");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

**List&lt;String&gt;**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getFlaggedOrganizationEntitySets

> List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt; getFlaggedOrganizationEntitySets(organizationId, requestBody)

Get the entity sets for an organization for a certain flag

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
Map<String, List<String>> requestBody = new HashMap(); // Map<String, List<String>> | 
try {
    List<Map<String, List<String>>> result = apiInstance.getFlaggedOrganizationEntitySets(organizationId, requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getFlaggedOrganizationEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**Map&lt;String, List&lt;String&gt;&gt;**](List.md)|  |

### Return type

[**List&lt;Map&lt;String, List&lt;String&gt;&gt;&gt;**](Map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getMembers

> List&lt;OrganizationMember&gt; getMembers(organizationId)

Get members of a certain organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    List<OrganizationMember> result = apiInstance.getMembers(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getMembers");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;OrganizationMember&gt;**](OrganizationMember.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getOrganization

> Organization getOrganization(organizationId)

Get an organization from the organizationId

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    Organization result = apiInstance.getOrganization(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getOrganization");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Organization**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getOrganizationDatabaseName

> String getOrganizationDatabaseName(organizationId)

Get database name for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    String result = apiInstance.getOrganizationDatabaseName(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getOrganizationDatabaseName");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getOrganizationEntitySets

> Map&lt;String, List&lt;String&gt;&gt; getOrganizationEntitySets(organizationId)

Get the entity sets for an organization for a certain filter

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    Map<String, List<String>> result = apiInstance.getOrganizationEntitySets(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getOrganizationEntitySets");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, List&lt;String&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getOrganizationIntegrationAccount

> InlineResponse200 getOrganizationIntegrationAccount(organizationId)

Get the integrations account for an organization from the organizationId

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    InlineResponse200 result = apiInstance.getOrganizationIntegrationAccount(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getOrganizationIntegrationAccount");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getOrganizations

> List&lt;Organization&gt; getOrganizations()

Get all organizations

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
try {
    List<Organization> result = apiInstance.getOrganizations();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getOrganizations");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;Organization&gt;**](Organization.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRole

> Role getRole(organizationId, roleId)

Get role for an organization from a roleId

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID roleId = null; // UUID | 
try {
    Role result = apiInstance.getRole(organizationId, roleId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getRole");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Role**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getRoles

> List&lt;Role&gt; getRoles(organizationId)

Get roles for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
try {
    List<Role> result = apiInstance.getRoles(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#getRoles");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**List&lt;Role&gt;**](Role.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## refreshDataChanges

> refreshDataChanges(organizationId, entitySetId)

Refreshes the requested materialized entity set with data changes in the organization.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID entitySetId = null; // UUID | 
try {
    apiInstance.refreshDataChanges(organizationId, entitySetId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#refreshDataChanges");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## removeAutoApprovedEmailDomains

> removeAutoApprovedEmailDomains(organizationId, requestBody)

Remove auto-approved email domains

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    apiInstance.removeAutoApprovedEmailDomains(organizationId, requestBody);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#removeAutoApprovedEmailDomains");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**List&lt;String&gt;**](String.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## removeMember

> removeMember(organizationId, userId)

Remove member from an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID userId = null; // UUID | 
try {
    apiInstance.removeMember(organizationId, userId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#removeMember");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **userId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## removeRoleFromUser

> removeRoleFromUser(organizationId, roleId, userId)

Remove a role from a user

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID roleId = null; // UUID | 
UUID userId = null; // UUID | 
try {
    apiInstance.removeRoleFromUser(organizationId, roleId, userId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#removeRoleFromUser");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]
 **userId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## renameOrganizationDatabase

> renameOrganizationDatabase(organizationId, body)

Rename the database of organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
String body = "body_example"; // String | 
try {
    apiInstance.renameOrganizationDatabase(organizationId, body);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#renameOrganizationDatabase");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **body** | **String**|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## setAutoApprovedEmailDomain

> setAutoApprovedEmailDomain(organizationId, requestBody)

Set auto-approved email domains

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    apiInstance.setAutoApprovedEmailDomain(organizationId, requestBody);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#setAutoApprovedEmailDomain");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **requestBody** | [**List&lt;String&gt;**](String.md)|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## synchronizeEdmChanges

> synchronizeEdmChanges(organizationId, entitySetId)

Synchronizes EDM changes to the requested materialized entity set in the organization.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID entitySetId = null; // UUID | 
try {
    apiInstance.synchronizeEdmChanges(organizationId, entitySetId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#synchronizeEdmChanges");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## transportEntitySet

> transportEntitySet(organizationId, entitySetId)

Marks entity set for transporter for materialized views

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID entitySetId = null; // UUID | 
try {
    apiInstance.transportEntitySet(organizationId, entitySetId);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#transportEntitySet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **entitySetId** | [**UUID**](.md)|  | [default to null]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## updateDescription

> updateDescription(organizationId, body)

Update the organization description

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
String body = "body_example"; // String | 
try {
    apiInstance.updateDescription(organizationId, body);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#updateDescription");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **body** | **String**|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateRoleDescription

> updateRoleDescription(organizationId, roleId, body)

Update role description for an organization from a roleId

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID roleId = null; // UUID | 
String body = "body_example"; // String | 
try {
    apiInstance.updateRoleDescription(organizationId, roleId, body);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#updateRoleDescription");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]
 **body** | **String**|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: Not defined


## updateRoleTitle

> updateRoleTitle(organizationId, roleId, body)

Update role title for an organization from a roleId

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
UUID roleId = null; // UUID | 
String body = "body_example"; // String | 
try {
    apiInstance.updateRoleTitle(organizationId, roleId, body);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#updateRoleTitle");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **roleId** | [**UUID**](.md)|  | [default to null]
 **body** | **String**|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: text/plain
- **Accept**: Not defined


## updateTitle

> updateTitle(organizationId, body)

Update the organization title

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrganizationsApi;

OrganizationsApi apiInstance = new OrganizationsApi();
UUID organizationId = null; // UUID | 
String body = "body_example"; // String | 
try {
    apiInstance.updateTitle(organizationId, body);
} catch (ApiException e) {
    System.err.println("Exception when calling OrganizationsApi#updateTitle");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]
 **body** | **String**|  |

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

