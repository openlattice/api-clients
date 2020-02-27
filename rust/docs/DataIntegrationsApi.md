# \DataIntegrationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entity_key_ids**](DataIntegrationsApi.md#get_entity_key_ids) | **Post** /datastore/integration/entityKeyIds | Get entity key IDs
[**integrate_entity_and_association_data**](DataIntegrationsApi.md#integrate_entity_and_association_data) | **Post** /datastore/integration | Integrate entity and association data



## get_entity_key_ids

> Vec<String> get_entity_key_ids(entity_key)
Get entity key IDs

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_key** | [**Vec<crate::models::EntityKey>**](EntityKey.md) |  | [required] |

### Return type

**Vec<String>**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## integrate_entity_and_association_data

> crate::models::IntegrationResults integrate_entity_and_association_data(detailed_results, bulk_data_creation)
Integrate entity and association data

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**detailed_results** | **bool** |  | [required] |
**bulk_data_creation** | [**BulkDataCreation**](BulkDataCreation.md) |  | [required] |

### Return type

[**crate::models::IntegrationResults**](IntegrationResults.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

