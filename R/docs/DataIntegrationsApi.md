# DataIntegrationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entity_key_ids**](DataIntegrationsApi.md#get_entity_key_ids) | **POST** /datastore/integration/entityKeyIds | Get entity key IDs
[**integrate_entity_and_association_data**](DataIntegrationsApi.md#integrate_entity_and_association_data) | **POST** /datastore/integration | Integrate entity and association data


# **get_entity_key_ids**
> array[character] get_entity_key_ids(entity.key)

Get entity key IDs

### Example
```R
library(openlattice)

var.entity.key <- list(EntityKey$new("entitySetId_example", "entityId_example")) # array[EntityKey] | 

#Get entity key IDs
api.instance <- DataIntegrationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_entity_key_ids(var.entity.key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity.key** | list( [**EntityKey**](EntityKey.md) )|  | 

### Return type

**array[character]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A data search result object, containing the total number of hits for the given query, and the hits themselves |  -  |

# **integrate_entity_and_association_data**
> IntegrationResults integrate_entity_and_association_data(detailed.results, bulk.data.creation)

Integrate entity and association data

### Example
```R
library(openlattice)

var.detailed.results <- 'detailed.results_example' # character | 
var.bulk.data.creation <- BulkDataCreation$new(list(Entity$new(EntityKey$new("entitySetId_example", "entityId_example"), TODO)), list(Association$new(EntityKey$new("entitySetId_example", "entityId_example"), EntityKey$new("entitySetId_example", "entityId_example"), EntityKey$new("entitySetId_example", "entityId_example"), TODO))) # BulkDataCreation | 

#Integrate entity and association data
api.instance <- DataIntegrationsApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$integrate_entity_and_association_data(var.detailed.results, var.bulk.data.creation)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detailed.results** | **character**|  | 
 **bulk.data.creation** | [**BulkDataCreation**](BulkDataCreation.md)|  | 

### Return type

[**IntegrationResults**](IntegrationResults.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | A data search result object, containing the total number of hits for the given query, and the hits themselves |  -  |

