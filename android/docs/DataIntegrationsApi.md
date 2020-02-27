# DataIntegrationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEntityKeyIds**](DataIntegrationsApi.md#getEntityKeyIds) | **POST** /datastore/integration/entityKeyIds | Get entity key IDs
[**integrateEntityAndAssociationData**](DataIntegrationsApi.md#integrateEntityAndAssociationData) | **POST** /datastore/integration | Integrate entity and association data



## getEntityKeyIds

> List&lt;UUID&gt; getEntityKeyIds(entityKey)

Get entity key IDs

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataIntegrationsApi;

DataIntegrationsApi apiInstance = new DataIntegrationsApi();
List<EntityKey> entityKey = Arrays.asList(new EntityKey()); // List<EntityKey> | 
try {
    List<UUID> result = apiInstance.getEntityKeyIds(entityKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataIntegrationsApi#getEntityKeyIds");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entityKey** | [**List&lt;EntityKey&gt;**](EntityKey.md)|  |

### Return type

[**List&lt;UUID&gt;**](UUID.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## integrateEntityAndAssociationData

> IntegrationResults integrateEntityAndAssociationData(detailedResults, bulkDataCreation)

Integrate entity and association data

### Example

```java
// Import classes:
//import org.openapitools.client.api.DataIntegrationsApi;

DataIntegrationsApi apiInstance = new DataIntegrationsApi();
Boolean detailedResults = null; // Boolean | 
BulkDataCreation bulkDataCreation = new BulkDataCreation(); // BulkDataCreation | 
try {
    IntegrationResults result = apiInstance.integrateEntityAndAssociationData(detailedResults, bulkDataCreation);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling DataIntegrationsApi#integrateEntityAndAssociationData");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detailedResults** | **Boolean**|  | [default to null]
 **bulkDataCreation** | [**BulkDataCreation**](BulkDataCreation.md)|  |

### Return type

[**IntegrationResults**](IntegrationResults.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

