# openlattice::EntityTypeCollection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **character** | An optional UUID for the entity type collection. | [optional] 
**type** | [**FullQualifiedName**](FullQualifiedName.md) |  | [optional] 
**title** | **character** | The friendly name for the entity type collection. | [optional] 
**description** | **character** | A description of the entity type collection. | [optional] 
**schemas** | [**array[FullQualifiedName]**](FullQualifiedName.md) | A list of schemas the entity type collection should belong to. | [optional] 
**template** | [**array[CollectionTemplateType]**](CollectionTemplateType.md) | A set of CollectionTemplateType objects, which describe the entity types involved in the entity type collection and the purposes they serve | [optional] 


