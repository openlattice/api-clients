# \EdmApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_dst_entity_type_to_association_type**](EdmApi.md#add_dst_entity_type_to_association_type) | **Put** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**add_entity_sets_to_linking_entity_set**](EdmApi.md#add_entity_sets_to_linking_entity_set) | **Post** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
[**add_entity_sets_to_linking_entity_sets**](EdmApi.md#add_entity_sets_to_linking_entity_sets) | **Put** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
[**add_primary_key_to_entity_type**](EdmApi.md#add_primary_key_to_entity_type) | **Put** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Adds a primary key with a given ID to an entity type with a given ID.
[**add_property_type_to_entity_type**](EdmApi.md#add_property_type_to_entity_type) | **Put** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
[**add_src_entity_type_to_association_type**](EdmApi.md#add_src_entity_type_to_association_type) | **Put** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
[**create_association_type**](EdmApi.md#create_association_type) | **Post** /datastore/edm/association/type/ | Creates a new AssociationType definition, if it doesn't exist.
[**create_empty_schema**](EdmApi.md#create_empty_schema) | **Put** /datastore/edm/schema/{namespace}/{name} | Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
[**create_entity_sets**](EdmApi.md#create_entity_sets) | **Post** /datastore/entity-sets | Creates new EntitySet definitions if they don't exist.
[**create_entity_type**](EdmApi.md#create_entity_type) | **Post** /datastore/edm/entity/type/ | Creates a new EntityType definition, if it doesn't exist.
[**create_property_type**](EdmApi.md#create_property_type) | **Post** /datastore/edm/property/type/ | Creates a new PropertyType definition, if it doesn\"t exist.
[**create_schema_if_not_exists**](EdmApi.md#create_schema_if_not_exists) | **Post** /datastore/edm/schema | Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.
[**delete_association_type**](EdmApi.md#delete_association_type) | **Delete** /datastore/edm/association/type/{associationTypeId} | Deletes the AssociationType definition for the given AssociationType UUID.
[**delete_entity_set**](EdmApi.md#delete_entity_set) | **Delete** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
[**delete_entity_type**](EdmApi.md#delete_entity_type) | **Delete** /datastore/edm/entity/type/{entityTypeId} | Deletes the EntityType definition for the given EntityType UUID.
[**delete_property_type**](EdmApi.md#delete_property_type) | **Delete** /datastore/edm/property/type/{propertyTypeId} | Deletes the PropertyType definition for the given PropertyType UUID.
[**force_delete_property_type**](EdmApi.md#force_delete_property_type) | **Delete** /datastore/edm/property/type/{propertyTypeId}/force | Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
[**force_remove_property_type_from_entity_type**](EdmApi.md#force_remove_property_type_from_entity_type) | **Delete** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId}/force | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
[**get_all_association_entity_types**](EdmApi.md#get_all_association_entity_types) | **Get** /datastore/edm/association/type/ | Gets all association EntityType definitions.
[**get_all_available_association_types**](EdmApi.md#get_all_available_association_types) | **Get** /datastore/edm/association/type/{associationTypeId}/available | Get all available associations for the given AssociationType UUID.
[**get_all_entity_set_property_metadata**](EdmApi.md#get_all_entity_set_property_metadata) | **Get** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
[**get_all_entity_sets**](EdmApi.md#get_all_entity_sets) | **Get** /datastore/entity-sets | Get all EntitySet definitions.
[**get_all_entity_type_property_metadata**](EdmApi.md#get_all_entity_type_property_metadata) | **Get** /datastore/edm/entity/type/{entityTypeId}/property/type | Get all EntityType propertyType metadata
[**get_all_entity_types**](EdmApi.md#get_all_entity_types) | **Get** /datastore/edm/entity/type/ | Gets all EntityType definitions.
[**get_all_property_types**](EdmApi.md#get_all_property_types) | **Get** /datastore/edm/property/type/ | Gets all PropertyType definitions.
[**get_all_property_types_in_namespace**](EdmApi.md#get_all_property_types_in_namespace) | **Get** /datastore/edm/property/type/namespace/{namespace} | Gets all PropertyType definitions under the given namespace.
[**get_all_property_usage_summaries**](EdmApi.md#get_all_property_usage_summaries) | **Get** /datastore/edm/summary | Get Property Usage Summary for all properties.
[**get_association_type**](EdmApi.md#get_association_type) | **Get** /datastore/edm/association/type/{associationTypeId} | Get the AssociationType definition for the given AssociationType UUID.
[**get_association_type_details**](EdmApi.md#get_association_type_details) | **Get** /datastore/edm/association/type/{associationTypeId}/detailed | Get details about the AssociationType for the given AssociationType UUID.
[**get_entity_data_model**](EdmApi.md#get_entity_data_model) | **Get** /datastore/edm/ | Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
[**get_entity_data_model_diff**](EdmApi.md#get_entity_data_model_diff) | **Post** /datastore/edm/diff/ | Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
[**get_entity_set**](EdmApi.md#get_entity_set) | **Get** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
[**get_entity_set_id**](EdmApi.md#get_entity_set_id) | **Get** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
[**get_entity_set_ids**](EdmApi.md#get_entity_set_ids) | **Post** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
[**get_entity_set_property_metadata**](EdmApi.md#get_entity_set_property_metadata) | **Get** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
[**get_entity_type**](EdmApi.md#get_entity_type) | **Get** /datastore/edm/entity/type/{entityTypeId} | Gets the EntityType definition for the given EntityType UUID.
[**get_entity_type_hierarchy**](EdmApi.md#get_entity_type_hierarchy) | **Patch** /datastore/edm/entity/type/{entityTypeId}/hierarchy | Get the EntityType hierarchy for the given EntityType UUID.
[**get_entity_type_id**](EdmApi.md#get_entity_type_id) | **Get** /datastore/edm/ids/entity/type/{namespace}/{name} | Gets the EntityType UUID for the given EntityType FQN.
[**get_entity_type_property_metadata**](EdmApi.md#get_entity_type_property_metadata) | **Get** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Get EntityType propertyType metadata
[**get_property_metadata_for_entity_sets**](EdmApi.md#get_property_metadata_for_entity_sets) | **Post** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
[**get_property_type**](EdmApi.md#get_property_type) | **Get** /datastore/edm/property/type/{propertyTypeId} | Gets the PropertyType definition for the given PropertyType UUID.
[**get_property_type_id**](EdmApi.md#get_property_type_id) | **Get** /datastore/edm/ids/property/type/{namespace}/{name} | Gets the PropertyType UUID for the given PropertyType FQN.
[**get_property_types_for_entity_set**](EdmApi.md#get_property_types_for_entity_set) | **Get** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
[**get_property_usage_summary**](EdmApi.md#get_property_usage_summary) | **Get** /datastore/edm/summary/{propertyTypeId} | Get Property Usage Summary for property with given ID.
[**get_schema_contents**](EdmApi.md#get_schema_contents) | **Get** /datastore/edm/schema/{namespace}/{name} | Gets the schema contents for a corresponding namespace and name.
[**get_schemas**](EdmApi.md#get_schemas) | **Get** /datastore/edm/schema | Gets all schemas.
[**get_schemas_in_namespace**](EdmApi.md#get_schemas_in_namespace) | **Get** /datastore/edm/schema/{namespace} | Gets all schemas associated with a given namespace and accessible by the caller.
[**remove_dst_entity_type_from_association_type**](EdmApi.md#remove_dst_entity_type_from_association_type) | **Delete** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**remove_entity_sets_from_linking_entity_set**](EdmApi.md#remove_entity_sets_from_linking_entity_set) | **Delete** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
[**remove_entity_sets_from_linking_entity_sets**](EdmApi.md#remove_entity_sets_from_linking_entity_sets) | **Delete** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
[**remove_primary_key_from_entity_type**](EdmApi.md#remove_primary_key_from_entity_type) | **Delete** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Removes a primary key with a given ID from an entity type with a given ID.
[**remove_property_type_from_entity_type**](EdmApi.md#remove_property_type_from_entity_type) | **Delete** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
[**remove_src_entity_type_from_association_type**](EdmApi.md#remove_src_entity_type_from_association_type) | **Delete** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
[**reorder_property_types_in_entity_type**](EdmApi.md#reorder_property_types_in_entity_type) | **Patch** /datastore/edm/entity/type/{entityTypeId}/property/type | Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
[**update_entity_data_model**](EdmApi.md#update_entity_data_model) | **Patch** /datastore/edm/ | Updates the entity data model, including schemas, entity types, association types, and property types.
[**update_entity_set_meta_data**](EdmApi.md#update_entity_set_meta_data) | **Patch** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
[**update_entity_set_property_metadata**](EdmApi.md#update_entity_set_property_metadata) | **Post** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.
[**update_entity_type_meta_data**](EdmApi.md#update_entity_type_meta_data) | **Patch** /datastore/edm/entity/type/{entityTypeId} | Updates the EntityType definition for the given EntityType UUID with the given metadata.
[**update_entity_type_property_metadata**](EdmApi.md#update_entity_type_property_metadata) | **Post** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Update EntityType Property metadata
[**update_property_type_meta_data**](EdmApi.md#update_property_type_meta_data) | **Patch** /datastore/edm/property/type/{propertyTypeId} | Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
[**update_schema**](EdmApi.md#update_schema) | **Patch** /datastore/edm/schema/{namespace}/{name} | Edits the schema contents for a corresponding namespace and name.



## add_dst_entity_type_to_association_type

> add_dst_entity_type_to_association_type(association_type_id, entity_type_id)
Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


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


## add_primary_key_to_entity_type

> add_primary_key_to_entity_type(entity_type_id, property_type_id)
Adds a primary key with a given ID to an entity type with a given ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_property_type_to_entity_type

> add_property_type_to_entity_type(entity_type_id, property_type_id)
Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## add_src_entity_type_to_association_type

> add_src_entity_type_to_association_type(association_type_id, entity_type_id)
Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_association_type

> create_association_type(association_type)
Creates a new AssociationType definition, if it doesn't exist.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type** | [**Vec<crate::models::AssociationType>**](AssociationType.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_empty_schema

> create_empty_schema(namespace, name)
Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**namespace** | **String** |  | [required] |
**name** | **String** |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

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


## create_entity_type

> create_entity_type(entity_type)
Creates a new EntityType definition, if it doesn't exist.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type** | [**EntityType**](EntityType.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_property_type

> create_property_type(property_type)
Creates a new PropertyType definition, if it doesn\"t exist.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**property_type** | [**PropertyType**](PropertyType.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## create_schema_if_not_exists

> create_schema_if_not_exists(schema)
Creates an empty schema, if it doesn't exist. If schema exists then no action is taken.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**schema** | [**Schema**](Schema.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_association_type

> delete_association_type(association_type_id)
Deletes the AssociationType definition for the given AssociationType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
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


## delete_entity_type

> delete_entity_type(entity_type_id)
Deletes the EntityType definition for the given EntityType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_property_type

> delete_property_type(property_type_id)
Deletes the PropertyType definition for the given PropertyType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## force_delete_property_type

> force_delete_property_type(property_type_id)
Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## force_remove_property_type_from_entity_type

> force_remove_property_type_from_entity_type(entity_type_id, property_type_id)
Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_association_entity_types

> Vec<crate::models::AssociationType> get_all_association_entity_types()
Gets all association EntityType definitions.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::AssociationType>**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_available_association_types

> Vec<crate::models::AssociationType> get_all_available_association_types(association_type_id)
Get all available associations for the given AssociationType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<crate::models::AssociationType>**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

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


## get_all_entity_type_property_metadata

> ::std::collections::HashMap<String, crate::models::EntityTypePropertyMetadata> get_all_entity_type_property_metadata(entity_type_id)
Get all EntityType propertyType metadata

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

[**::std::collections::HashMap<String, crate::models::EntityTypePropertyMetadata>**](EntityTypePropertyMetadata.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_entity_types

> Vec<crate::models::EntityType> get_all_entity_types()
Gets all EntityType definitions.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::EntityType>**](EntityType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_property_types

> Vec<crate::models::PropertyType> get_all_property_types()
Gets all PropertyType definitions.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::PropertyType>**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_property_types_in_namespace

> Vec<crate::models::PropertyType> get_all_property_types_in_namespace(namespace)
Gets all PropertyType definitions under the given namespace.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**namespace** | **String** |  | [required] |

### Return type

[**Vec<crate::models::PropertyType>**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_all_property_usage_summaries

> ::std::collections::HashMap<String, crate::models::PropertyUsageSummary> get_all_property_usage_summaries()
Get Property Usage Summary for all properties.

### Parameters

This endpoint does not need any parameter.

### Return type

[**::std::collections::HashMap<String, crate::models::PropertyUsageSummary>**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_association_type

> crate::models::AssociationType get_association_type(association_type_id)
Get the AssociationType definition for the given AssociationType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_association_type_details

> crate::models::AssociationType get_association_type_details(association_type_id)
Get details about the AssociationType for the given AssociationType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::AssociationType**](AssociationType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_data_model

> crate::models::Edm get_entity_data_model()
Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.

### Parameters

This endpoint does not need any parameter.

### Return type

[**crate::models::Edm**](EDM.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_data_model_diff

> crate::models::EdMdiff get_entity_data_model_diff(ed_mdiff)
Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**ed_mdiff** | [**EdMdiff**](EdMdiff.md) |  | [required] |

### Return type

[**crate::models::EdMdiff**](EDMdiff.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
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


## get_entity_type

> crate::models::EntityType get_entity_type(entity_type_id)
Gets the EntityType definition for the given EntityType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::EntityType**](EntityType.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_type_hierarchy

> get_entity_type_hierarchy(entity_type_id)
Get the EntityType hierarchy for the given EntityType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_type_id

> String get_entity_type_id(namespace, name)
Gets the EntityType UUID for the given EntityType FQN.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**namespace** | **String** |  | [required] |
**name** | **String** |  | [required] |

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_entity_type_property_metadata

> crate::models::EntityTypePropertyMetadata get_entity_type_property_metadata(entity_type_id, property_type_id)
Get EntityType propertyType metadata

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::EntityTypePropertyMetadata**](EntityTypePropertyMetadata.md)

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


## get_property_type

> crate::models::PropertyType get_property_type(property_type_id)
Gets the PropertyType definition for the given PropertyType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

[**crate::models::PropertyType**](PropertyType.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_property_type_id

> String get_property_type_id(namespace, name)
Gets the PropertyType UUID for the given PropertyType FQN.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**namespace** | **String** |  | [required] |
**name** | **String** |  | [required] |

### Return type

**String**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
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


## get_property_usage_summary

> Vec<crate::models::PropertyUsageSummary> get_property_usage_summary(property_type_id)
Get Property Usage Summary for property with given ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

[**Vec<crate::models::PropertyUsageSummary>**](PropertyUsageSummary.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_schema_contents

> crate::models::Schema get_schema_contents(namespace, name, file_type)
Gets the schema contents for a corresponding namespace and name.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**namespace** | **String** |  | [required] |
**name** | **String** |  | [required] |
**file_type** | Option<**String**> |  |  |[default to yaml]

### Return type

[**crate::models::Schema**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_schemas

> Vec<crate::models::Schema> get_schemas()
Gets all schemas.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<crate::models::Schema>**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_schemas_in_namespace

> Vec<crate::models::Schema> get_schemas_in_namespace(namespace)
Gets all schemas associated with a given namespace and accessible by the caller.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**namespace** | **String** |  | [required] |

### Return type

[**Vec<crate::models::Schema>**](Schema.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_dst_entity_type_from_association_type

> remove_dst_entity_type_from_association_type(association_type_id, entity_type_id)
Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

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


## remove_primary_key_from_entity_type

> remove_primary_key_from_entity_type(entity_type_id, property_type_id)
Removes a primary key with a given ID from an entity type with a given ID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_property_type_from_entity_type

> remove_property_type_from_entity_type(entity_type_id, property_type_id)
Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## remove_src_entity_type_from_association_type

> remove_src_entity_type_from_association_type(association_type_id, entity_type_id)
Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**association_type_id** | [**String**](.md) |  | [required] |
**entity_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## reorder_property_types_in_entity_type

> reorder_property_types_in_entity_type(entity_type_id, property_type_ids)
Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_ids** | [**Vec<String>**](String.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_entity_data_model

> update_entity_data_model(edm)
Updates the entity data model, including schemas, entity types, association types, and property types.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**edm** | [**Edm**](Edm.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

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


## update_entity_type_meta_data

> update_entity_type_meta_data(entity_type_id, metadata_update)
Updates the EntityType definition for the given EntityType UUID with the given metadata.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**metadata_update** | [**MetadataUpdate**](MetadataUpdate.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_entity_type_property_metadata

> update_entity_type_property_metadata(entity_type_id, property_type_id)
Update EntityType Property metadata

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**entity_type_id** | [**String**](.md) |  | [required] |
**property_type_id** | [**String**](.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_property_type_meta_data

> update_property_type_meta_data(property_type_id, metadata_update)
Updates the PropertyType definition for the given PropertyType UUID with the given metadata.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
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


## update_schema

> update_schema(namespace, name, edm_request)
Edits the schema contents for a corresponding namespace and name.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**namespace** | **String** |  | [required] |
**name** | **String** |  | [required] |
**edm_request** | [**EdmRequest**](EdmRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

