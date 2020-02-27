# \DataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_associations**](DataApi.md#create_associations) | **Post** /datastore/data/association | Creates a new set of associations.
[**create_edges**](DataApi.md#create_edges) | **Put** /datastore/data/association | Creates a new set of associations.
[**create_entities**](DataApi.md#create_entities) | **Post** /datastore/data/set/ | Creates a new set of entities.
[**create_entity_and_association_data**](DataApi.md#create_entity_and_association_data) | **Post** /datastore/data | Creates entities and assocations
[**delete_all_entities_from_entity_set**](DataApi.md#delete_all_entities_from_entity_set) | **Delete** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
[**delete_entities**](DataApi.md#delete_entities) | **Delete** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
[**delete_entities_and_neighbors**](DataApi.md#delete_entities_and_neighbors) | **Post** /datastore/data/set/{entitySetId}/neighbors | Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
[**delete_entity**](DataApi.md#delete_entity) | **Delete** /datastore/data/{entitySetId}/{entityKeyId} | Deletes a single entity from an entity set.
[**delete_entity_properties**](DataApi.md#delete_entity_properties) | **Delete** /datastore/data/{entitySetId}/{entityKeyId}/properties | Deletes properties from an entity.
[**get_entity**](DataApi.md#get_entity) | **Get** /datastore/data/{entitySetId}/{entityKeyId} | Loads a single entity by its entityKeyId and entitySetId
[**get_entity_property_values**](DataApi.md#get_entity_property_values) | **Get** /datastore/data/{entitySetId}/{entityKeyId}/{propertyTypeId} | Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
[**get_entity_set_size**](DataApi.md#get_entity_set_size) | **Get** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
[**load_entity_set_data**](DataApi.md#load_entity_set_data) | **Get** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
[**load_linked_entity_set_breakdown**](DataApi.md#load_linked_entity_set_breakdown) | **Post** /datastore/data/set/{linkedEntitySetId}/detailed | Loads a linked entity set breakdown with the selected linked entities and properties.
[**load_selected_entity_set_data**](DataApi.md#load_selected_entity_set_data) | **Post** /datastore/data/set/{entitySetId} | Gets a list of entities by UUIDs
[**replace_association_data**](DataApi.md#replace_association_data) | **Patch** /datastore/data/association | Replaces Association Data
[**replace_entity_properties**](DataApi.md#replace_entity_properties) | **Patch** /datastore/data/set/{entitySetId} | Replaces Entity Properties
[**update_entities_in_entity_set**](DataApi.md#update_entities_in_entity_set) | **Put** /datastore/data/set/{entitySetId} | Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.



## create_associations

> ::std::collections::HashMap<String, Vec<String>> create_associations(inline_object)
Creates a new set of associations.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**inline_object** | [**InlineObject**](InlineObject.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, Vec<String>>**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_edges

> i32 create_edges(data_edge_key)
Creates a new set of associations.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**data_edge_key** | [**Vec<crate::models::DataEdgeKey>**](DataEdgeKey.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_entities

> Vec<String> create_entities(set_id, request_body)
Creates a new set of entities.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**set_id** | [**String**](.md) |  | [required] |
**request_body** | [**Vec<::std::collections::HashMap<String, Vec<String>>>**](map.md) |  | [required] |

### Return type

**Vec<String>**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_entity_and_association_data

> crate::models::DataGraphIds create_entity_and_association_data(data_graph)
Creates entities and assocations

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**data_graph** | [**DataGraph**](DataGraph.md) |  | [required] |

### Return type

[**crate::models::DataGraphIds**](DataGraphIds.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_all_entities_from_entity_set

> delete_all_entities_from_entity_set(entity_set_id, _type)
Clears the Entity matching the given Entity id and all of its neighbor Entities

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**_type** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_entities

> i32 delete_entities(entity_set_id, _type, request_body)
Deletes multiple entities from an entity set.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**_type** | **String** |  | [required] |
**request_body** | [**Vec<String>**](String.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_entities_and_neighbors

> i32 delete_entities_and_neighbors(entity_set_id, _type, entity_neighbors_filter)
Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**_type** | **String** |  | [required] |
**entity_neighbors_filter** | [**Vec<crate::models::EntityNeighborsFilter>**](EntityNeighborsFilter.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_entity

> delete_entity(entity_set_id, entity_key_id, _type)
Deletes a single entity from an entity set.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**entity_key_id** | [**String**](.md) |  | [required] |
**_type** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_entity_properties

> delete_entity_properties(entity_set_id, entity_key_id, _type, request_body)
Deletes properties from an entity.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**entity_key_id** | [**String**](.md) |  | [required] |
**_type** | **String** |  | [required] |
**request_body** | [**Vec<String>**](String.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity

> ::std::collections::HashMap<String, Vec<String>> get_entity(entity_set_id, entity_key_id)
Loads a single entity by its entityKeyId and entitySetId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**entity_key_id** | [**String**](.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, Vec<String>>**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_property_values

> Vec<String> get_entity_property_values(entity_set_id, entity_key_id, property_type_id)
Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**entity_key_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

**Vec<String>**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_set_size

> i32 get_entity_set_size(entity_set_id)
Gets the number of entities in an entity set.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## load_entity_set_data

> Vec<::std::collections::HashMap<String, Vec<String>>> load_entity_set_data(entity_set_id)
Gets an iterable containing the entity data, using property type FQNs as key

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<::std::collections::HashMap<String, Vec<String>>>**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## load_linked_entity_set_breakdown

> ::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<String>>>>> load_linked_entity_set_breakdown(linked_entity_set_id, entity_set_selection)
Loads a linked entity set breakdown with the selected linked entities and properties.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**linked_entity_set_id** | [**String**](.md) |  | [required] |
**entity_set_selection** | [**Vec<crate::models::EntitySetSelection>**](EntitySetSelection.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<String>>>>>**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## load_selected_entity_set_data

> Vec<::std::collections::HashMap<String, Vec<String>>> load_selected_entity_set_data(entity_set_id, entity_set_selection)
Gets a list of entities by UUIDs

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**entity_set_selection** | [**Vec<crate::models::EntitySetSelection>**](EntitySetSelection.md) |  | [required] |

### Return type

[**Vec<::std::collections::HashMap<String, Vec<String>>>**](map.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## replace_association_data

> i32 replace_association_data(partial, request_body)
Replaces Association Data

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**partial** | **bool** |  | [required] |
**request_body** | [**::std::collections::HashMap<String, ::std::collections::HashMap<String, crate::models::DataEdge>>**](map.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## replace_entity_properties

> i32 replace_entity_properties(entity_set_id, request_body)
Replaces Entity Properties

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**request_body** | [**::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<::std::collections::HashMap<String, String>>>>**](map.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_entities_in_entity_set

> i32 update_entities_in_entity_set(entity_set_id, _type, request_body)
Perform one of the following bulk update operations on entities (type = Merge) adds new properties without affecting existing data, (type = PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type = Replace) replaces all entity data with the supplied properties.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_set_id** | [**String**](.md) |  | [required] |
**_type** | **String** |  | [required] |
**request_body** | [**::std::collections::HashMap<String, ::std::collections::HashMap<String, Vec<String>>>**](map.md) |  | [required] |

### Return type

**i32**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

