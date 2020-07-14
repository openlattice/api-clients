# OpenapiClient::EntitySetCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An optional UUID for the entity set collection. | [optional] 
**name** | **String** | The unique name of the entity set collection. | [optional] 
**title** | **String** | The friendly name for the entity set collection. | [optional] 
**description** | **String** | A description of the entity set collection. | [optional] 
**entity_type_collection_id** | **String** | The id of the entity type collection that this entity set collection maps to. | [optional] 
**template** | **Hash&lt;String, String&gt;** | A mapping from collection template type ids to entity set ids. | [optional] 
**contacts** | **Array&lt;String&gt;** | A set of contact methods for the owners of this entity set collection. | [optional] 
**organization_id** | **String** | The id of the organization that this entity set collection belongs to. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EntitySetCollection.new(id: null,
                                 name: null,
                                 title: null,
                                 description: null,
                                 entity_type_collection_id: null,
                                 template: null,
                                 contacts: null,
                                 organization_id: null)
```


