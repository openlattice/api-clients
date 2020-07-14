# OpenapiClient::EntityTypeCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An optional UUID for the entity type collection. | [optional] 
**type** | [**FullQualifiedName**](FullQualifiedName.md) |  | [optional] 
**title** | **String** | The friendly name for the entity type collection. | [optional] 
**description** | **String** | A description of the entity type collection. | [optional] 
**schemas** | [**Array&lt;FullQualifiedName&gt;**](FullQualifiedName.md) | A list of schemas the entity type collection should belong to. | [optional] 
**template** | [**Array&lt;CollectionTemplateType&gt;**](CollectionTemplateType.md) | A set of CollectionTemplateType objects, which describe the entity types involved in the entity type collection and the purposes they serve | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EntityTypeCollection.new(id: null,
                                 type: null,
                                 title: null,
                                 description: null,
                                 schemas: null,
                                 template: null)
```


