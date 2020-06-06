

# EntitySetCollection

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**UUID**](UUID.md) | An optional UUID for the entity set collection. |  [optional]
**name** | **String** | The unique name of the entity set collection. |  [optional]
**title** | **String** | The friendly name for the entity set collection. |  [optional]
**description** | **String** | A description of the entity set collection. |  [optional]
**entityTypeCollectionId** | [**UUID**](UUID.md) | The id of the entity type collection that this entity set collection maps to. |  [optional]
**template** | [**Map&lt;String, UUID&gt;**](UUID.md) | A mapping from collection template type ids to entity set ids. |  [optional]
**contacts** | **List&lt;String&gt;** | A set of contact methods for the owners of this entity set collection. |  [optional]
**organizationId** | [**UUID**](UUID.md) | The id of the organization that this entity set collection belongs to. |  [optional]




