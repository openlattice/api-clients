# \EntitySetsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_entity_sets_to_linking_entity_set**](EntitySetsApi.md#add_entity_sets_to_linking_entity_set) | **Post** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
[**add_entity_sets_to_linking_entity_sets**](EntitySetsApi.md#add_entity_sets_to_linking_entity_sets) | **Put** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
[**create_entity_sets**](EntitySetsApi.md#create_entity_sets) | **Post** /datastore/entity-sets | Creates new EntitySet definitions if they don't exist.
[**delete_entity_set**](EntitySetsApi.md#delete_entity_set) | **Delete** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**get_all_entity_set_property_metadata**](EntitySetsApi.md#get_all_entity_set_property_metadata) | **Get** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
[**get_all_entity_sets**](EntitySetsApi.md#get_all_entity_sets) | **Get** /datastore/entity-sets | Get all EntitySet definitions.
[**get_entity_set**](EntitySetsApi.md#get_entity_set) | **Get** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**get_entity_set_id**](EntitySetsApi.md#get_entity_set_id) | **Get** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**get_entity_set_ids**](EntitySetsApi.md#get_entity_set_ids) | **Post** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
[**get_entity_set_property_metadata**](EntitySetsApi.md#get_entity_set_property_metadata) | **Get** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**get_property_metadata_for_entity_sets**](EntitySetsApi.md#get_property_metadata_for_entity_sets) | **Post** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
[**get_property_types_for_entity_set**](EntitySetsApi.md#get_property_types_for_entity_set) | **Get** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
[**remove_entity_sets_from_linking_entity_set**](EntitySetsApi.md#remove_entity_sets_from_linking_entity_set) | **Delete** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
[**remove_entity_sets_from_linking_entity_sets**](EntitySetsApi.md#remove_entity_sets_from_linking_entity_sets) | **Delete** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
[**update_entity_set_meta_data**](EntitySetsApi.md#update_entity_set_meta_data) | **Patch** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**update_entity_set_property_metadata**](EntitySetsApi.md#update_entity_set_property_metadata) | **Post** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.



## add_entity_sets_to_linking_entity_set

> i32 add_entity_sets_to_linking_entity_set(linking_entity_set_id, request_body)
Adds the entity sets as linked entity sets to the linking entity set

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**linking_entity_set_id** | [**String**](.md) |  | [required] |
**request_body** | Option<[**Vec<String>**](String.md)> |  |  |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_entity_sets_to_linking_entity_sets

> i32 add_entity_sets_to_linking_entity_sets(linking_entity_set_id, request_body)
Adds the entity sets as linked entity sets to the linking entity sets

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**linking_entity_set_id** | **String** |  | [required] |
**request_body** | [**::std::collections::HashMap<String, Vec<String>>**](array.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_entity_sets

> create_entity_sets(entity_set)
Creates new EntitySet definitions if they don't exist.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set** | [**Vec<crate::models::EntitySet>**](EntitySet.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_entity_set

> delete_entity_set(entity_set_id)
Deletes the EntitySet definition for the given EntitySet UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_entity_set_property_metadata

> ::std::collections::HashMap<String, crate::models::EntitySetPropertyMetaData> get_all_entity_set_property_metadata(entity_set_id)
Get all entity set property metadata.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, crate::models::EntitySetPropertyMetaData>**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_entity_sets

> Vec<crate::models::EntitySet> get_all_entity_sets()
Get all EntitySet definitions.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::EntitySet>**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_set

> crate::models::EntitySet get_entity_set(entity_set_id)
Get the EntitySet definition for the given EntitySet UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::EntitySet**](EntitySet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_set_id

> String get_entity_set_id(entity_set_name)
Gets the EntitySet UUID for the given EntitySet name.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_name** | **String** |  | [required] |

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_set_ids

> ::std::collections::HashMap<String, String> get_entity_set_ids(request_body)
Get IDs for entity sets given their names.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**request_body** | Option<[**Vec<String>**](String.md)> |  |  |

### Return type

**::std::collections::HashMap<String, String>**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_set_property_metadata

> crate::models::EntitySetPropertyMetaData get_entity_set_property_metadata(entity_set_id, property_type_id)
Get specified property type metadata for an entity set.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::EntitySetPropertyMetaData**](EntitySetPropertyMetaData.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_property_metadata_for_entity_sets

> ::std::collections::HashMap<String, ::std::collections::HashMap<String, crate::models::EntitySetPropertyMetaData>> get_property_metadata_for_entity_sets(request_body)
Get property metadata for entity sets.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**request_body** | Option<[**Vec<String>**](String.md)> |  |  |

### Return type

[**::std::collections::HashMap<String, ::std::collections::HashMap<String, crate::models::EntitySetPropertyMetaData>>**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_property_types_for_entity_set

> ::std::collections::HashMap<String, crate::models::PropertyType> get_property_types_for_entity_set(entity_set_id)
Get all Property Types for entity set

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, crate::models::PropertyType>**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_entity_sets_from_linking_entity_set

> i32 remove_entity_sets_from_linking_entity_set(linking_entity_set_id, request_body)
Removes/unlinks the linked entity sets from the linking entity set

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**linking_entity_set_id** | **String** |  | [required] |
**request_body** | Option<[**Vec<String>**](String.md)> |  |  |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_entity_sets_from_linking_entity_sets

> i32 remove_entity_sets_from_linking_entity_sets(linking_entity_set_id, request_body)
Removes/unlinks the linked entity sets from the linking entity set

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**linking_entity_set_id** | [**String**](.md) |  | [required] |
**request_body** | [**::std::collections::HashMap<String, Vec<String>>**](array.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_entity_set_meta_data

> i32 update_entity_set_meta_data(entity_set_id, metadata_update)
Updates the EntitySet definition for the given EntitySet UUID with the given metadata.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**metadata_update** | [**MetadataUpdate**](MetadataUpdate.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_entity_set_property_metadata

> update_entity_set_property_metadata(entity_set_id, property_type_id, metadata_update)
Updates the property type metadata for the given entity set.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |
**metadata_update** | [**MetadataUpdate**](MetadataUpdate.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

