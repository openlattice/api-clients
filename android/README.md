# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.AdminApi;

public class AdminApiExample {

    public static void main(String[] args) {
        AdminApi apiInstance = new AdminApi();
        try {
            Integer result = apiInstance.clearIndexingQueue();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AdminApi#clearIndexingQueue");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://api.openlattice.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AdminApi* | [**clearIndexingQueue**](docs/AdminApi.md#clearIndexingQueue) | **DELETE** /indexer/index/reindex | Clears all the data currently being indexed in the queue.
*AdminApi* | [**getIndexingState**](docs/AdminApi.md#getIndexingState) | **GET** /indexer/index/reindex | Retrieve the current state of reindexing jobs
*AdminApi* | [**reindex**](docs/AdminApi.md#reindex) | **POST** /indexer/index/reindex | Merge job descriptions for performing a partial or full reindex of provided entity sets.
*AdminApi* | [**updateReindex**](docs/AdminApi.md#updateReindex) | **PUT** /indexer/index/reindex | Replaces job descriptions for performing a partial or full reindex of provided entity sets.
*AppApi* | [**createApp**](docs/AppApi.md#createApp) | **POST** /datastore/app | Create an app if it doesn&#39;t exist.
*AppApi* | [**createAppRole**](docs/AppApi.md#createAppRole) | **POST** /datastore/app/update/{appId}/role | Create an app role
*AppApi* | [**deleteApp**](docs/AppApi.md#deleteApp) | **DELETE** /datastore/app/{appId} | Delete an app
*AppApi* | [**deleteRoleFromApp**](docs/AppApi.md#deleteRoleFromApp) | **DELETE** /datastore/app/update/{appId}/role/{roleId} | Delete an app role
*AppApi* | [**getApp**](docs/AppApi.md#getApp) | **GET** /datastore/app/{appId} | Get an app based on the ID
*AppApi* | [**getAppByName**](docs/AppApi.md#getAppByName) | **GET** /datastore/app/lookup/{name} | Get an app based on the name
*AppApi* | [**getApps**](docs/AppApi.md#getApps) | **GET** /datastore/app | Get all apps
*AppApi* | [**getAvailableAppConfigs**](docs/AppApi.md#getAvailableAppConfigs) | **GET** /datastore/app/config | Get available app configurations
*AppApi* | [**getAvailableAppConfigsOld**](docs/AppApi.md#getAvailableAppConfigsOld) | **GET** /datastore/app/config/{appId} | Get historical app configurations for an app
*AuthorizationsApi* | [**checkAuthorizations**](docs/AuthorizationsApi.md#checkAuthorizations) | **POST** /datastore/authorizations | Check authorizations
*AuthorizationsApi* | [**getAccessibleObjects**](docs/AuthorizationsApi.md#getAccessibleObjects) | **GET** /datastore/authorizations | Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.
*CollectionsApi* | [**addTypeToEntityTypeCollectionTemplate**](docs/CollectionsApi.md#addTypeToEntityTypeCollectionTemplate) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId}/template | Appends type to template of the specified EntityTypeCollection
*CollectionsApi* | [**createEntitySetCollection**](docs/CollectionsApi.md#createEntitySetCollection) | **POST** /datastore/collections/entity/set | Creates a new EntitySetCollection
*CollectionsApi* | [**createEntityTypeCollection**](docs/CollectionsApi.md#createEntityTypeCollection) | **POST** /datastore/collections/entity/type | Creates a new EntityTypeCollection
*CollectionsApi* | [**deleteEntitySetCollection**](docs/CollectionsApi.md#deleteEntitySetCollection) | **DELETE** /datastore/collections/entity/set/{entitySetCollectionId} | Deletes the specified EntitySetCollection
*CollectionsApi* | [**deleteEntityTypeCollection**](docs/CollectionsApi.md#deleteEntityTypeCollection) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId} | Deletes the specified EntityTypeCollection
*CollectionsApi* | [**getAllEntitySetCollections**](docs/CollectionsApi.md#getAllEntitySetCollections) | **GET** /datastore/collections/entity/set | Returns all EntitySetCollection objects
*CollectionsApi* | [**getAllEntityTypeCollections**](docs/CollectionsApi.md#getAllEntityTypeCollections) | **GET** /datastore/collections/entity/type | Returns all EntityTypeCollection objects
*CollectionsApi* | [**getEntitySetCollection**](docs/CollectionsApi.md#getEntitySetCollection) | **GET** /datastore/collections/entity/set/{entitySetCollectionId} | Returns the EntitySetCollection object for a given id
*CollectionsApi* | [**getEntitySetCollectionsOfType**](docs/CollectionsApi.md#getEntitySetCollectionsOfType) | **GET** /datastore/collections/entity/set/entity/type/{entitySetCollectionId} | Returns all authorized EntitySetCollections for a given EntityTypeCollection id
*CollectionsApi* | [**getEntityTypeCollection**](docs/CollectionsApi.md#getEntityTypeCollection) | **GET** /datastore/collections/entity/type/{entityTypeCollectionId} | Returns the EntityTypeCollection object for a given id
*CollectionsApi* | [**removeTypeFromEntityTypeCollectionTemplate**](docs/CollectionsApi.md#removeTypeFromEntityTypeCollectionTemplate) | **DELETE** /datastore/collections/entity/type/{entityTypeCollectionId}/template/{typeId} | Removes a key from an EntityTypeCollection template
*CollectionsApi* | [**updateEntitySetCollectionMetadata**](docs/CollectionsApi.md#updateEntitySetCollectionMetadata) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId} | Updates metadata of the specified EntitySetCollection
*CollectionsApi* | [**updateEntitySetCollectionTemplate**](docs/CollectionsApi.md#updateEntitySetCollectionTemplate) | **PATCH** /datastore/collections/entity/set/{entitySetCollectionId}/template | Updates template of the specified EntitySetCollection
*CollectionsApi* | [**updateEntityTypeCollectionMetadata**](docs/CollectionsApi.md#updateEntityTypeCollectionMetadata) | **PATCH** /datastore/collections/entity/type/{entityTypeCollectionId} | Updates metadata of the specified EntityTypeCollection
*DataApi* | [**createAssociations**](docs/DataApi.md#createAssociations) | **POST** /datastore/data/association | Creates a new set of associations.
*DataApi* | [**createEdges**](docs/DataApi.md#createEdges) | **PUT** /datastore/data/association | Creates a new set of associations.
*DataApi* | [**createEntities**](docs/DataApi.md#createEntities) | **POST** /datastore/data/set/ | Creates a new set of entities.
*DataApi* | [**createEntityAndAssociationData**](docs/DataApi.md#createEntityAndAssociationData) | **POST** /datastore/data | Creates entities and assocations
*DataApi* | [**deleteAllEntitiesFromEntitySet**](docs/DataApi.md#deleteAllEntitiesFromEntitySet) | **DELETE** /datastore/data/set/{entitySetId}/all | Clears the Entity matching the given Entity id and all of its neighbor Entities
*DataApi* | [**deleteEntities**](docs/DataApi.md#deleteEntities) | **DELETE** /datastore/data/set/{entitySetId} | Deletes multiple entities from an entity set.
*DataApi* | [**deleteEntitiesAndNeighbors**](docs/DataApi.md#deleteEntitiesAndNeighbors) | **POST** /datastore/data/set/{entitySetId}/neighbors | Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
*DataApi* | [**deleteEntity**](docs/DataApi.md#deleteEntity) | **DELETE** /datastore/data/set/{entitySetId}/{entityKeyId} | Deletes a single entity from an entity set.
*DataApi* | [**deleteEntityProperties**](docs/DataApi.md#deleteEntityProperties) | **DELETE** /datastore/data/{entitySetId}/{entityKeyId}/properties | Deletes properties from an entity.
*DataApi* | [**getEntity**](docs/DataApi.md#getEntity) | **GET** /datastore/data/{entitySetId}/{entityKeyId} | Loads a single entity by its entityKeyId and entitySetId
*DataApi* | [**getEntityPropertyValues**](docs/DataApi.md#getEntityPropertyValues) | **GET** /datastore/data/{entitySetId}/{entityKeyId}/{propertyTypeId} | Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
*DataApi* | [**getEntitySetSize**](docs/DataApi.md#getEntitySetSize) | **GET** /datastore/data/{entitySetId}/count | Gets the number of entities in an entity set.
*DataApi* | [**loadEntitySetData**](docs/DataApi.md#loadEntitySetData) | **GET** /datastore/data/set/{entitySetId} | Gets an iterable containing the entity data, using property type FQNs as key
*DataApi* | [**loadFilteredEntitySetData**](docs/DataApi.md#loadFilteredEntitySetData) | **POST** /datastore/data/set/{entitySetId}/filtered | Loads data in multiple pages
*DataApi* | [**loadLinkedEntitySetBreakdown**](docs/DataApi.md#loadLinkedEntitySetBreakdown) | **POST** /datastore/data/set/{linkedEntitySetId}/detailed | Loads a linked entity set breakdown with the selected linked entities and properties.
*DataApi* | [**loadSelectedEntitySetData**](docs/DataApi.md#loadSelectedEntitySetData) | **POST** /datastore/data/set/{entitySetId} | Gets a list of entities by UUIDs
*DataApi* | [**replaceAssociationData**](docs/DataApi.md#replaceAssociationData) | **PATCH** /datastore/data/association | Replaces Association Data
*DataApi* | [**replaceEntityProperties**](docs/DataApi.md#replaceEntityProperties) | **PATCH** /datastore/data/set/{entitySetId} | Replaces Entity Properties
*DataApi* | [**updateEntitiesInEntitySet**](docs/DataApi.md#updateEntitiesInEntitySet) | **PUT** /datastore/data/set/{entitySetId} | Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.
*DataIntegrationsApi* | [**getEntityKeyIds**](docs/DataIntegrationsApi.md#getEntityKeyIds) | **POST** /datastore/integration/entityKeyIds | Get entity key IDs
*DataIntegrationsApi* | [**integrateEntityAndAssociationData**](docs/DataIntegrationsApi.md#integrateEntityAndAssociationData) | **POST** /datastore/integration | Integrate entity and association data
*DataSetMetadataApi* | [**getDataSetColumnMetadata**](docs/DataSetMetadataApi.md#getDataSetColumnMetadata) | **GET** /datastore/metadata/columns/{dataId}/{columnId} | Gets the dataset column metadata objects using data ID and column ID
*DataSetMetadataApi* | [**getDataSetColumnsMetadata**](docs/DataSetMetadataApi.md#getDataSetColumnsMetadata) | **POST** /datastore/metadata/columns | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
*DataSetMetadataApi* | [**getDataSetMetadata**](docs/DataSetMetadataApi.md#getDataSetMetadata) | **GET** /datastore/metadata/datasets/{dataId} | Gets dataset metadata object with given data set ID
*DataSetMetadataApi* | [**getDataSetsMetadata**](docs/DataSetMetadataApi.md#getDataSetsMetadata) | **POST** /datastore/metadata/datasets | Gets the dataset metadata objects given data set ids the caller has READ permissions on
*DataSetMetadataApi* | [**getOrganizationDataSetsMetadata**](docs/DataSetMetadataApi.md#getOrganizationDataSetsMetadata) | **GET** /datastore/metadata/datasets/organizations/{organizationId} | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
*DataSetMetadataApi* | [**updateDataSetColumnMetadata**](docs/DataSetMetadataApi.md#updateDataSetColumnMetadata) | **PATCH** /datastore/metadata/update/{dataId}/{columnId} | Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
*DataSetMetadataApi* | [**updateDataSetMetadata**](docs/DataSetMetadataApi.md#updateDataSetMetadata) | **PATCH** /datastore/metadata/update/{dataId} | Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
*DatasetApi* | [**deleteExternalDatabaseColumn**](docs/DatasetApi.md#deleteExternalDatabaseColumn) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Deletes an OrganizationExternalDatabaseColumn object, which represents an organization&#39;s column in an external database. This deletes both the object and the column in the database. It is a hard delete.
*DatasetApi* | [**deleteExternalDatabaseColumns**](docs/DatasetApi.md#deleteExternalDatabaseColumns) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-column | Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization&#39;s table in an external database. It is a hard delete
*DatasetApi* | [**deleteExternalDatabaseTable**](docs/DatasetApi.md#deleteExternalDatabaseTable) | **DELETE** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Deletes an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database. This deletes both the object and the table in the database. It is a hard delete.
*DatasetApi* | [**deleteExternalDatabaseTables**](docs/DatasetApi.md#deleteExternalDatabaseTables) | **DELETE** /datastore/organization-database/{organizationId}/external-database-table | Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
*DatasetApi* | [**getAuthorizedExternalDbTablesWithColumnMetadata**](docs/DatasetApi.md#getAuthorizedExternalDbTablesWithColumnMetadata) | **GET** /datastore/organization-database/{organizationId}/{permission}/external-database-table/external-database-column/authorized | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
*DatasetApi* | [**getExternalDatabaseColumn**](docs/DatasetApi.md#getExternalDatabaseColumn) | **GET** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization&#39;s table in an external database.
*DatasetApi* | [**getExternalDatabaseTable**](docs/DatasetApi.md#getExternalDatabaseTable) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table | Gets an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database.
*DatasetApi* | [**getExternalDatabaseTableData**](docs/DatasetApi.md#getExternalDatabaseTableData) | **GET** /datastore/organization-database/{organizationId}/{tableId}/{rowCount}/data | Gets an OrganizationExternalDatabaseTable object with user specified number of rows of raw data for an organization
*DatasetApi* | [**getExternalDatabaseTableWithColumnMetadata**](docs/DatasetApi.md#getExternalDatabaseTableWithColumnMetadata) | **GET** /datastore/organization-database/{organizationId}/{tableId}/external-database-table/external-database-column | Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
*DatasetApi* | [**getExternalDatabaseTables**](docs/DatasetApi.md#getExternalDatabaseTables) | **GET** /datastore/organization-database/{organizationId}/external-database-table | Gets all OrganizationExternalDatabaseTable objects for an organization
*DatasetApi* | [**getExternalDatabaseTablesWithColumnMetadata**](docs/DatasetApi.md#getExternalDatabaseTablesWithColumnMetadata) | **GET** /datastore/organization-database/{organizationId}/external-database-table/external-database-column | Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
*DatasetApi* | [**updateExternalDatabaseColumn**](docs/DatasetApi.md#updateExternalDatabaseColumn) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/{columnName}/external-database-column | Updates an OrganizationExternalDatabaseTableColumn object&#39;s fields that are included within the given metadata.
*DatasetApi* | [**updateExternalDatabaseTable**](docs/DatasetApi.md#updateExternalDatabaseTable) | **PATCH** /datastore/organization-database/{organizationId}/{tableName}/external-database-table | Updates an OrganizationExternalDatabaseTable object&#39;s fields that are included within the given metadata.
*EdmApi* | [**addDstEntityTypeToAssociationType**](docs/EdmApi.md#addDstEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Update the AssociationType dst entity types for the given AssociationType UUID by adding the given EntityType UUID.
*EdmApi* | [**addPrimaryKeyToEntityType**](docs/EdmApi.md#addPrimaryKeyToEntityType) | **PUT** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Adds a primary key with a given ID to an entity type with a given ID.
*EdmApi* | [**addPropertyTypeToEntityType**](docs/EdmApi.md#addPropertyTypeToEntityType) | **PUT** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by adding the given PropertyType UUID.
*EdmApi* | [**addSrcEntityTypeToAssociationType**](docs/EdmApi.md#addSrcEntityTypeToAssociationType) | **PUT** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Update the AssociationType src entity types for the given AssociationType UUID by adding the given EntityType UUID.
*EdmApi* | [**createAssociationType**](docs/EdmApi.md#createAssociationType) | **POST** /datastore/edm/association/type/ | Creates a new AssociationType definition, if it doesn&#39;t exist.
*EdmApi* | [**createEmptySchema**](docs/EdmApi.md#createEmptySchema) | **PUT** /datastore/edm/schema/{namespace}/{name} | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
*EdmApi* | [**createEntityType**](docs/EdmApi.md#createEntityType) | **POST** /datastore/edm/entity/type/ | Creates a new EntityType definition, if it doesn&#39;t exist.
*EdmApi* | [**createPropertyType**](docs/EdmApi.md#createPropertyType) | **POST** /datastore/edm/property/type/ | Creates a new PropertyType definition, if it doesn\&quot;t exist.
*EdmApi* | [**createSchemaIfNotExists**](docs/EdmApi.md#createSchemaIfNotExists) | **POST** /datastore/edm/schema | Creates an empty schema, if it doesn&#39;t exist. If schema exists then no action is taken.
*EdmApi* | [**deleteAssociationType**](docs/EdmApi.md#deleteAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId} | Deletes the AssociationType definition for the given AssociationType UUID.
*EdmApi* | [**deleteEntityType**](docs/EdmApi.md#deleteEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId} | Deletes the EntityType definition for the given EntityType UUID.
*EdmApi* | [**deletePropertyType**](docs/EdmApi.md#deletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId} | Deletes the PropertyType definition for the given PropertyType UUID.
*EdmApi* | [**forceDeletePropertyType**](docs/EdmApi.md#forceDeletePropertyType) | **DELETE** /datastore/edm/property/type/{propertyTypeId}/force | Deletes the PropertyType definition for the given PropertyType UUID regardless of whether or not there is data associated with it.
*EdmApi* | [**forceRemovePropertyTypeFromEntityType**](docs/EdmApi.md#forceRemovePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId}/force | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID, regardless of whether or not there is data associated with the entity type.
*EdmApi* | [**getAllAssociationEntityTypes**](docs/EdmApi.md#getAllAssociationEntityTypes) | **GET** /datastore/edm/association/type/ | Gets all association EntityType definitions.
*EdmApi* | [**getAllAvailableAssociationTypes**](docs/EdmApi.md#getAllAvailableAssociationTypes) | **GET** /datastore/edm/association/type/{associationTypeId}/available | Get all available associations for the given AssociationType UUID.
*EdmApi* | [**getAllEntityTypePropertyMetadata**](docs/EdmApi.md#getAllEntityTypePropertyMetadata) | **GET** /datastore/edm/entity/type/{entityTypeId}/property/type | Get all EntityType propertyType metadata
*EdmApi* | [**getAllEntityTypes**](docs/EdmApi.md#getAllEntityTypes) | **GET** /datastore/edm/entity/type/ | Gets all EntityType definitions.
*EdmApi* | [**getAllPropertyTypes**](docs/EdmApi.md#getAllPropertyTypes) | **GET** /datastore/edm/property/type/ | Gets all PropertyType definitions.
*EdmApi* | [**getAllPropertyTypesInNamespace**](docs/EdmApi.md#getAllPropertyTypesInNamespace) | **GET** /datastore/edm/property/type/namespace/{namespace} | Gets all PropertyType definitions under the given namespace.
*EdmApi* | [**getAllPropertyUsageSummaries**](docs/EdmApi.md#getAllPropertyUsageSummaries) | **GET** /datastore/edm/summary | Get Property Usage Summary for all properties.
*EdmApi* | [**getAssociationType**](docs/EdmApi.md#getAssociationType) | **GET** /datastore/edm/association/type/{associationTypeId} | Get the AssociationType definition for the given AssociationType UUID.
*EdmApi* | [**getAssociationTypeDetails**](docs/EdmApi.md#getAssociationTypeDetails) | **GET** /datastore/edm/association/type/{associationTypeId}/detailed | Get details about the AssociationType for the given AssociationType UUID.
*EdmApi* | [**getEntityDataModel**](docs/EdmApi.md#getEntityDataModel) | **GET** /datastore/edm/ | Gets the entity data model, including namespaces, schemas, entity types, association types, and property types.
*EdmApi* | [**getEntityDataModelDiff**](docs/EdmApi.md#getEntityDataModelDiff) | **POST** /datastore/edm/diff/ | Gets the changes between the existing entity data model and the entity data model passed in, including schemas, association types, entity types, and property types.
*EdmApi* | [**getEntityType**](docs/EdmApi.md#getEntityType) | **GET** /datastore/edm/entity/type/{entityTypeId} | Gets the EntityType definition for the given EntityType UUID.
*EdmApi* | [**getEntityTypeHierarchy**](docs/EdmApi.md#getEntityTypeHierarchy) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/hierarchy | Get the EntityType hierarchy for the given EntityType UUID.
*EdmApi* | [**getEntityTypeId**](docs/EdmApi.md#getEntityTypeId) | **GET** /datastore/edm/ids/entity/type/{namespace}/{name} | Gets the EntityType UUID for the given EntityType FQN.
*EdmApi* | [**getEntityTypePropertyMetadata**](docs/EdmApi.md#getEntityTypePropertyMetadata) | **GET** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Get EntityType propertyType metadata
*EdmApi* | [**getPropertyType**](docs/EdmApi.md#getPropertyType) | **GET** /datastore/edm/property/type/{propertyTypeId} | Gets the PropertyType definition for the given PropertyType UUID.
*EdmApi* | [**getPropertyTypeId**](docs/EdmApi.md#getPropertyTypeId) | **GET** /datastore/edm/ids/property/type/{namespace}/{name} | Gets the PropertyType UUID for the given PropertyType FQN.
*EdmApi* | [**getPropertyUsageSummary**](docs/EdmApi.md#getPropertyUsageSummary) | **GET** /datastore/edm/summary/{propertyTypeId} | Get Property Usage Summary for property with given ID.
*EdmApi* | [**getSchemaContents**](docs/EdmApi.md#getSchemaContents) | **GET** /datastore/edm/schema/{namespace}/{name} | Gets the schema contents for a corresponding namespace and name.
*EdmApi* | [**getSchemas**](docs/EdmApi.md#getSchemas) | **GET** /datastore/edm/schema | Gets all schemas.
*EdmApi* | [**getSchemasInNamespace**](docs/EdmApi.md#getSchemasInNamespace) | **GET** /datastore/edm/schema/{namespace} | Gets all schemas associated with a given namespace and accessible by the caller.
*EdmApi* | [**removeDstEntityTypeFromAssociationType**](docs/EdmApi.md#removeDstEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/dst/{entityTypeId} | Updates the AssociationType dst entity types for the given AssociationType UUID by removing the given EntityType UUID.
*EdmApi* | [**removePrimaryKeyFromEntityType**](docs/EdmApi.md#removePrimaryKeyFromEntityType) | **DELETE** /datastore/edm/entity/type/key/{entityTypeId}/{propertyTypeId} | Removes a primary key with a given ID from an entity type with a given ID.
*EdmApi* | [**removePropertyTypeFromEntityType**](docs/EdmApi.md#removePropertyTypeFromEntityType) | **DELETE** /datastore/edm/entity/type/{entityTypeId}/{propertyTypeId} | Updates the EntityType definition for the given EntityType UUID by removing the given PropertyType UUID.
*EdmApi* | [**removeSrcEntityTypeFromAssociationType**](docs/EdmApi.md#removeSrcEntityTypeFromAssociationType) | **DELETE** /datastore/edm/association/type/{associationTypeId}/src/{entityTypeId} | Updates the AssociationType src entity types for the given AssociationType UUID by removing the given EntityType UUID.
*EdmApi* | [**reorderPropertyTypesInEntityType**](docs/EdmApi.md#reorderPropertyTypesInEntityType) | **PATCH** /datastore/edm/entity/type/{entityTypeId}/property/type | Updates the EntityType definition for the given EntityType UUID by reordering its properties as specified by the provided list.
*EdmApi* | [**updateEntityDataModel**](docs/EdmApi.md#updateEntityDataModel) | **PATCH** /datastore/edm/ | Updates the entity data model, including schemas, entity types, association types, and property types.
*EdmApi* | [**updateEntityTypeMetaData**](docs/EdmApi.md#updateEntityTypeMetaData) | **PATCH** /datastore/edm/entity/type/{entityTypeId} | Updates the EntityType definition for the given EntityType UUID with the given metadata.
*EdmApi* | [**updateEntityTypePropertyMetadata**](docs/EdmApi.md#updateEntityTypePropertyMetadata) | **POST** /datastore/edm/entity/type/{entityTypeId}/property/type/{propertyTypeId} | Update EntityType Property metadata
*EdmApi* | [**updatePropertyTypeMetaData**](docs/EdmApi.md#updatePropertyTypeMetaData) | **PATCH** /datastore/edm/property/type/{propertyTypeId} | Updates the PropertyType definition for the given PropertyType UUID with the given metadata.
*EdmApi* | [**updateSchema**](docs/EdmApi.md#updateSchema) | **PATCH** /datastore/edm/schema/{namespace}/{name} | Edits the schema contents for a corresponding namespace and name.
*EntitySetsApi* | [**addEntitySetsToLinkingEntitySet**](docs/EntitySetsApi.md#addEntitySetsToLinkingEntitySet) | **POST** /datastore/entity-sets/linking/{linkingEntitySetId} | Adds the entity sets as linked entity sets to the linking entity set
*EntitySetsApi* | [**addEntitySetsToLinkingEntitySets**](docs/EntitySetsApi.md#addEntitySetsToLinkingEntitySets) | **PUT** /datastore/entity-sets/linking/ | Adds the entity sets as linked entity sets to the linking entity sets
*EntitySetsApi* | [**createEntitySets**](docs/EntitySetsApi.md#createEntitySets) | **POST** /datastore/entity-sets | Creates new EntitySet definitions if they don&#39;t exist.
*EntitySetsApi* | [**deleteEntitySet**](docs/EntitySetsApi.md#deleteEntitySet) | **DELETE** /datastore/entity-sets/all/{entitySetId} | Deletes the EntitySet definition for the given EntitySet UUID.
*EntitySetsApi* | [**getAllEntitySetPropertyMetadata**](docs/EntitySetsApi.md#getAllEntitySetPropertyMetadata) | **GET** /datastore/entity-sets/all/{entitySetId}/metadata | Get all entity set property metadata.
*EntitySetsApi* | [**getAllEntitySets**](docs/EntitySetsApi.md#getAllEntitySets) | **GET** /datastore/entity-sets | Get all EntitySet definitions.
*EntitySetsApi* | [**getEntitySet**](docs/EntitySetsApi.md#getEntitySet) | **GET** /datastore/entity-sets/all/{entitySetId} | Get the EntitySet definition for the given EntitySet UUID.
*EntitySetsApi* | [**getEntitySetId**](docs/EntitySetsApi.md#getEntitySetId) | **GET** /datastore/entity-sets/ids/{entitySetName} | Gets the EntitySet UUID for the given EntitySet name.
*EntitySetsApi* | [**getEntitySetIds**](docs/EntitySetsApi.md#getEntitySetIds) | **POST** /datastore/entity-sets/ids/ | Get IDs for entity sets given their names.
*EntitySetsApi* | [**getEntitySetPropertyMetadata**](docs/EntitySetsApi.md#getEntitySetPropertyMetadata) | **GET** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Get specified property type metadata for an entity set.
*EntitySetsApi* | [**getPropertyMetadataForEntitySets**](docs/EntitySetsApi.md#getPropertyMetadataForEntitySets) | **POST** /datastore/entity-sets/all/metadata | Get property metadata for entity sets.
*EntitySetsApi* | [**getPropertyTypesForEntitySet**](docs/EntitySetsApi.md#getPropertyTypesForEntitySet) | **GET** /datastore/entity-sets/all/{entitySetId}/properties | Get all Property Types for entity set
*EntitySetsApi* | [**removeEntitySetsFromLinkingEntitySet**](docs/EntitySetsApi.md#removeEntitySetsFromLinkingEntitySet) | **DELETE** /datastore/entity-sets/linking/{linkingEntitySetId} | Removes/unlinks the linked entity sets from the linking entity set
*EntitySetsApi* | [**removeEntitySetsFromLinkingEntitySets**](docs/EntitySetsApi.md#removeEntitySetsFromLinkingEntitySets) | **DELETE** /datastore/entity-sets/linking/ | Removes/unlinks the linked entity sets from the linking entity set
*EntitySetsApi* | [**repartitionEntitySet**](docs/EntitySetsApi.md#repartitionEntitySet) | **PUT** /datastore/entity-sets/{entitySetId}/partitions | Used to repartition an entity set. This will shuffle corresponding ids, edges, and data table rows for the entity set.
*EntitySetsApi* | [**updateEntitySetMetaData**](docs/EntitySetsApi.md#updateEntitySetMetaData) | **PATCH** /datastore/entity-sets/all/{entitySetId}/metadata/ | Updates the EntitySet definition for the given EntitySet UUID with the given metadata.
*EntitySetsApi* | [**updateEntitySetPropertyMetadata**](docs/EntitySetsApi.md#updateEntitySetPropertyMetadata) | **POST** /datastore/entity-sets/all/{entitySetId}/properties/{propertyTypeId}/ | Updates the property type metadata for the given entity set.
*LinkingApi* | [**addLinkingFeedback**](docs/LinkingApi.md#addLinkingFeedback) | **PUT** /linker/linkingfeedback | Submits feedbacks for a given linking entity set and linking id in a batch format.
*LinkingApi* | [**deleteLinkingFeedback**](docs/LinkingApi.md#deleteLinkingFeedback) | **DELETE** /linker/linkingfeedback | Deletes linking feedback
*LinkingApi* | [**getAllLinkingFeedback**](docs/LinkingApi.md#getAllLinkingFeedback) | **GET** /linker/linkingfeedback/all | Returns all feedback submitted
*LinkingApi* | [**getAllLinkingFeedbackWithFeatures**](docs/LinkingApi.md#getAllLinkingFeedbackWithFeatures) | **GET** /linker/linkingfeedback/features/all | Returns all feedback submitted walong with the features of pairwise entities
*LinkingApi* | [**getLinkingFeedbackWithFeatures**](docs/LinkingApi.md#getLinkingFeedbackWithFeatures) | **POST** /linker/linkingfeedback/features | Returns the feedback on the given entity pair along with their features
*LinkingApi* | [**getLinkingFeedbacksOnEntity**](docs/LinkingApi.md#getLinkingFeedbacksOnEntity) | **POST** /linker/linkingfeedback/entity | Returns positive/negative/all linking feedbacks on the given entity.
*OrganizationsApi* | [**addMember**](docs/OrganizationsApi.md#addMember) | **PUT** /datastore/organizations/{organizationId}/principals/members/{userId} | Add member to an organization
*OrganizationsApi* | [**addRoleToUser**](docs/OrganizationsApi.md#addRoleToUser) | **PUT** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Add a role to a user
*OrganizationsApi* | [**assembleEntitySets**](docs/OrganizationsApi.md#assembleEntitySets) | **POST** /datastore/organizations/{organizationId}/entity-sets/assemble | Materializes entity sets into the organization database.
*OrganizationsApi* | [**createOrganizationIfNotExists**](docs/OrganizationsApi.md#createOrganizationIfNotExists) | **POST** /datastore/organizations | Creates an organization if it doesn&#39;t exist.
*OrganizationsApi* | [**createRole**](docs/OrganizationsApi.md#createRole) | **POST** /datastore/organizations/roles | Creates role
*OrganizationsApi* | [**deleteRole**](docs/OrganizationsApi.md#deleteRole) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Remove role for an organization
*OrganizationsApi* | [**destroyOrganization**](docs/OrganizationsApi.md#destroyOrganization) | **DELETE** /datastore/organizations/{organizationId} | Remove an organization from the organizationId
*OrganizationsApi* | [**getAllUsersOfRole**](docs/OrganizationsApi.md#getAllUsersOfRole) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/ | Get members of a role for an organization from a roleId
*OrganizationsApi* | [**getAutoApprovedEmailDomains**](docs/OrganizationsApi.md#getAutoApprovedEmailDomains) | **GET** /datastore/organizations/{organizationId}/email-domains | Get auto-approved email domains
*OrganizationsApi* | [**getFlaggedOrganizationEntitySets**](docs/OrganizationsApi.md#getFlaggedOrganizationEntitySets) | **POST** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain flag
*OrganizationsApi* | [**getMembers**](docs/OrganizationsApi.md#getMembers) | **GET** /datastore/organizations/{organizationId}/principals/members | Get members of a certain organization
*OrganizationsApi* | [**getOrganization**](docs/OrganizationsApi.md#getOrganization) | **GET** /datastore/organizations/{organizationId} | Get an organization from the organizationId
*OrganizationsApi* | [**getOrganizationDatabaseName**](docs/OrganizationsApi.md#getOrganizationDatabaseName) | **GET** /datastore/organizations/{organizationId}/database | Get database name for an organization
*OrganizationsApi* | [**getOrganizationEntitySets**](docs/OrganizationsApi.md#getOrganizationEntitySets) | **GET** /datastore/organizations/{organizationId}/entity-sets | Get the entity sets for an organization for a certain filter
*OrganizationsApi* | [**getOrganizationIntegrationAccount**](docs/OrganizationsApi.md#getOrganizationIntegrationAccount) | **GET** /datastore/organizations/{organizationId}/integration | Get the integrations account for an organization from the organizationId
*OrganizationsApi* | [**getOrganizations**](docs/OrganizationsApi.md#getOrganizations) | **GET** /datastore/organizations | Get all organizations
*OrganizationsApi* | [**getRole**](docs/OrganizationsApi.md#getRole) | **GET** /datastore/organizations/{organizationId}/principals/roles/{roleId} | Get role for an organization from a roleId
*OrganizationsApi* | [**getRoles**](docs/OrganizationsApi.md#getRoles) | **GET** /datastore/organizations/{organizationId}/principals/roles | Get roles for an organization
*OrganizationsApi* | [**promoteStagingTable**](docs/OrganizationsApi.md#promoteStagingTable) | **POST** /datastore/organizations/promote/{organizationId} | Moves the specified table from the staging schema to the openlattice schema in organization&#39;s external database
*OrganizationsApi* | [**refreshDataChanges**](docs/OrganizationsApi.md#refreshDataChanges) | **POST** /datastore/organizations/{organizationId}/{entitySetId}/refresh | Refreshes the requested materialized entity set with data changes in the organization.
*OrganizationsApi* | [**removeAutoApprovedEmailDomains**](docs/OrganizationsApi.md#removeAutoApprovedEmailDomains) | **DELETE** /datastore/organizations/{organizationId}/email-domains | Remove auto-approved email domains
*OrganizationsApi* | [**removeMember**](docs/OrganizationsApi.md#removeMember) | **DELETE** /datastore/organizations/{organizationId}/principals/members/{userId} | Remove member from an organization
*OrganizationsApi* | [**removeRoleFromUser**](docs/OrganizationsApi.md#removeRoleFromUser) | **DELETE** /datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId} | Remove a role from a user
*OrganizationsApi* | [**renameOrganizationDatabase**](docs/OrganizationsApi.md#renameOrganizationDatabase) | **PATCH** /datastore/organizations/{organizationId}/database | Rename the database of organization
*OrganizationsApi* | [**setAutoApprovedEmailDomain**](docs/OrganizationsApi.md#setAutoApprovedEmailDomain) | **PUT** /datastore/organizations/{organizationId}/email-domains | Set auto-approved email domains
*OrganizationsApi* | [**synchronizeEdmChanges**](docs/OrganizationsApi.md#synchronizeEdmChanges) | **POST** /datastore/organizations/{organizationId}/{entitySetId}/synchronize | Synchronizes EDM changes to the requested materialized entity set in the organization.
*OrganizationsApi* | [**transportEntitySet**](docs/OrganizationsApi.md#transportEntitySet) | **GET** /datastore/organizations/{organizationId}/{entitySetId}/transport | Marks entity set for transporter for materialized views
*OrganizationsApi* | [**updateDescription**](docs/OrganizationsApi.md#updateDescription) | **PUT** /datastore/organizations/{organizationId}/description | Update the organization description
*OrganizationsApi* | [**updateRoleDescription**](docs/OrganizationsApi.md#updateRoleDescription) | **POST** /datastore/organizations/{organizationId}/principals/roles/{roleId}/description | Update role description for an organization from a roleId
*OrganizationsApi* | [**updateRoleTitle**](docs/OrganizationsApi.md#updateRoleTitle) | **PUT** /datastore/organizations/{organizationId}/principals/roles/{roleId}/title | Update role title for an organization from a roleId
*OrganizationsApi* | [**updateTitle**](docs/OrganizationsApi.md#updateTitle) | **PUT** /datastore/organizations/{organizationId}/title | Update the organization title
*PermissionsApi* | [**getAcl**](docs/PermissionsApi.md#getAcl) | **POST** /datastore/permissions | Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
*PermissionsApi* | [**updateAcl**](docs/PermissionsApi.md#updateAcl) | **PATCH** /datastore/permissions | Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
*PrincipalApi* | [**getAllUsers**](docs/PrincipalApi.md#getAllUsers) | **GET** /datastore/principals/users/ | Get all users.
*PrincipalApi* | [**getCurrentRoles**](docs/PrincipalApi.md#getCurrentRoles) | **GET** /datastore/principals/roles/current/ | Get current roles.
*PrincipalApi* | [**getMaterializedViewAccount**](docs/PrincipalApi.md#getMaterializedViewAccount) | **GET** /datastore/principals/db | Get the db access credentials.
*PrincipalApi* | [**getUser**](docs/PrincipalApi.md#getUser) | **GET** /datastore/principals/users/{userId} | Get the user for the given id.
*PrincipalApi* | [**searchAllUsers**](docs/PrincipalApi.md#searchAllUsers) | **GET** /datastore/principals/users/search/{searchQuery} | Get the user id for the given search.
*PrincipalApi* | [**searchAllUsersByEmail**](docs/PrincipalApi.md#searchAllUsersByEmail) | **GET** /datastore/principals/users/search/email/&quot;{emailAddress}&quot; | Get the user id for the given email address.
*PrincipalApi* | [**syncCallingUser**](docs/PrincipalApi.md#syncCallingUser) | **GET** /datastore/principals/sync/ | Activates a user in the OpenLattice system. This call must be made once before a user will be available for use in authorization policies.
*SearchApi* | [**executeAdvancedEntitySetDataQuery**](docs/SearchApi.md#executeAdvancedEntitySetDataQuery) | **POST** /datastore/search/advanced/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
*SearchApi* | [**executeAppSearch**](docs/SearchApi.md#executeAppSearch) | **POST** /datastore/search/app | Executes a search over all apps to find ones that match the given search term
*SearchApi* | [**executeAppTypeSearch**](docs/SearchApi.md#executeAppTypeSearch) | **POST** /datastore/search/app_types | Executes a search over all app types to find ones that match the given search term
*SearchApi* | [**executeAssociationTypeSearch**](docs/SearchApi.md#executeAssociationTypeSearch) | **POST** /datastore/search/association_types | Executes a search over all association types to find ones that match the given search term
*SearchApi* | [**executeEntityNeighborSearch**](docs/SearchApi.md#executeEntityNeighborSearch) | **GET** /datastore/search/{entitySetId}/{entityKeyId} | Executes a search for all neighbors of an entity that are connected by an association
*SearchApi* | [**executeEntityNeighborSearchBulk**](docs/SearchApi.md#executeEntityNeighborSearchBulk) | **POST** /datastore/search/{entitySetId}/neighbors | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
*SearchApi* | [**executeEntitySetCollectionSearch**](docs/SearchApi.md#executeEntitySetCollectionSearch) | **POST** /datastore/search/entity_sets/collections | Executes a search over all EntitySetCollections to find ones that match the given search term
*SearchApi* | [**executeEntitySetDataQuery**](docs/SearchApi.md#executeEntitySetDataQuery) | **POST** /datastore/search/{entitySetId} | Executes a search over the data of a given entity set to find rows that match the search term
*SearchApi* | [**executeEntitySetKeywordQuery**](docs/SearchApi.md#executeEntitySetKeywordQuery) | **POST** /datastore/search | The query, entityType, and propertyTypes params are all optional, but at least one must be specified otherwise an error will be thrown. All specified params are required to be present in each entity set returned. If entityType and propertyTypes are both specified, the propertyTypes param will be ignored.
*SearchApi* | [**executeEntityTypeCollectionSearch**](docs/SearchApi.md#executeEntityTypeCollectionSearch) | **POST** /datastore/search/entity_types/collections | Executes a search over all EntityTypeCollections to find ones that match the given search term
*SearchApi* | [**executeEntityTypeSearch**](docs/SearchApi.md#executeEntityTypeSearch) | **POST** /datastore/search/entity_types | Executes a search over all entity types to find ones that match the given search term
*SearchApi* | [**executeFQNPropertyTypeSearch**](docs/SearchApi.md#executeFQNPropertyTypeSearch) | **POST** /datastore/search/property_types/fqn | Executes a search over all property types to find ones that match the given name and namespace, including partial matches
*SearchApi* | [**executeFilteredEntityNeighborIdSearch**](docs/SearchApi.md#executeFilteredEntityNeighborIdSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced/ids | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association and returns a simple version of the neighborDetails
*SearchApi* | [**executeFilteredEntityNeighborSearch**](docs/SearchApi.md#executeFilteredEntityNeighborSearch) | **POST** /datastore/search/{entitySetId}/neighbors/advanced | Executes a search for all neighbors of multiple entities of the same entity set that are connected by an association
*SearchApi* | [**executeOrganizationSearch**](docs/SearchApi.md#executeOrganizationSearch) | **POST** /datastore/search/organizations | Executes a search over all organizations to find ones that match the given search term
*SearchApi* | [**executePropertyTypeSearch**](docs/SearchApi.md#executePropertyTypeSearch) | **POST** /datastore/search/property_types | Executes a search over all property types to find ones that match the given search term
*SearchApi* | [**getEntitySets**](docs/SearchApi.md#getEntitySets) | **GET** /datastore/search/entity-sets/{start}/{numResults} | Executes a search over all existing entity sets to populate the home page. The path parameters instruct which page to return and how large the page should be.
*SearchApi* | [**getPopularEntitySet**](docs/SearchApi.md#getPopularEntitySet) | **GET** /datastore/search/popular | Get the most popular entity sets.
*SearchApi* | [**searchEntitySetData**](docs/SearchApi.md#searchEntitySetData) | **PATCH** /datastore/search | Executes a search over the data of a given entity set to find rows that match the search term
*ShuttleApi* | [**createIntegrationDefinition**](docs/ShuttleApi.md#createIntegrationDefinition) | **POST** /shuttle/integration/definition/{integrationName} | Creates a new integration definition for running recurring integrations
*ShuttleApi* | [**deleteIntegrationDefinition**](docs/ShuttleApi.md#deleteIntegrationDefinition) | **DELETE** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition
*ShuttleApi* | [**deleteIntegrationJobStatus**](docs/ShuttleApi.md#deleteIntegrationJobStatus) | **DELETE** /shuttle/integration/status/{jobId} | Deletes an integration job status from the integrationJobs map
*ShuttleApi* | [**enqueueIntegration**](docs/ShuttleApi.md#enqueueIntegration) | **GET** /shuttle/integration/{integrationName}/{integrationKey} | Enqueues an integration on Shuttle Server for a given integration
*ShuttleApi* | [**pollAllIntegrations**](docs/ShuttleApi.md#pollAllIntegrations) | **GET** /shuttle/integration/status | Polls the statuses of all running integrations
*ShuttleApi* | [**pollIntegration**](docs/ShuttleApi.md#pollIntegration) | **GET** /shuttle/integration/status/{jobId} | Polls the status of an integration
*ShuttleApi* | [**readIntegrationDefinition**](docs/ShuttleApi.md#readIntegrationDefinition) | **GET** /shuttle/integration/definition/{integrationName} | Gets an existing integration definition
*ShuttleApi* | [**updateIntegrationDefinition**](docs/ShuttleApi.md#updateIntegrationDefinition) | **PATCH** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition


## Documentation for Models

 - [AccessCheck](docs/AccessCheck.md)
 - [Ace](docs/Ace.md)
 - [Acl](docs/Acl.md)
 - [AclData](docs/AclData.md)
 - [AdvancedSearch](docs/AdvancedSearch.md)
 - [App](docs/App.md)
 - [AppRole](docs/AppRole.md)
 - [AppRolePermissions](docs/AppRolePermissions.md)
 - [Association](docs/Association.md)
 - [AssociationDefinition](docs/AssociationDefinition.md)
 - [AssociationType](docs/AssociationType.md)
 - [Auth0userBasic](docs/Auth0userBasic.md)
 - [Authorization](docs/Authorization.md)
 - [AuthorizedObjectsSearchResult](docs/AuthorizedObjectsSearchResult.md)
 - [BulkDataCreation](docs/BulkDataCreation.md)
 - [CollectionTemplateType](docs/CollectionTemplateType.md)
 - [Constraint](docs/Constraint.md)
 - [ConstraintGroup](docs/ConstraintGroup.md)
 - [DataAssociation](docs/DataAssociation.md)
 - [DataEdge](docs/DataEdge.md)
 - [DataEdgeData](docs/DataEdgeData.md)
 - [DataEdgeKey](docs/DataEdgeKey.md)
 - [DataGraph](docs/DataGraph.md)
 - [DataGraphIds](docs/DataGraphIds.md)
 - [DataSearchResult](docs/DataSearchResult.md)
 - [DataSet](docs/DataSet.md)
 - [DataSetColumn](docs/DataSetColumn.md)
 - [EDM](docs/EDM.md)
 - [EDMdiff](docs/EDMdiff.md)
 - [EdmRequest](docs/EdmRequest.md)
 - [Entity](docs/Entity.md)
 - [EntityDataKey](docs/EntityDataKey.md)
 - [EntityDefinition](docs/EntityDefinition.md)
 - [EntityKey](docs/EntityKey.md)
 - [EntityKeyPair](docs/EntityKeyPair.md)
 - [EntityLinkingFeatures](docs/EntityLinkingFeatures.md)
 - [EntityLinkingFeedback](docs/EntityLinkingFeedback.md)
 - [EntityNeighborsFilter](docs/EntityNeighborsFilter.md)
 - [EntitySet](docs/EntitySet.md)
 - [EntitySetCollection](docs/EntitySetCollection.md)
 - [EntitySetPropertyMetaData](docs/EntitySetPropertyMetaData.md)
 - [EntitySetSelection](docs/EntitySetSelection.md)
 - [EntityType](docs/EntityType.md)
 - [EntityTypeCollection](docs/EntityTypeCollection.md)
 - [EntityTypePropertyMetadata](docs/EntityTypePropertyMetadata.md)
 - [Filter](docs/Filter.md)
 - [FilteredDataPageDefinition](docs/FilteredDataPageDefinition.md)
 - [Flight](docs/Flight.md)
 - [FlightPlanParameters](docs/FlightPlanParameters.md)
 - [FlightPlanParametersUpdate](docs/FlightPlanParametersUpdate.md)
 - [FullQualifiedName](docs/FullQualifiedName.md)
 - [HistoricalAppConfig](docs/HistoricalAppConfig.md)
 - [HistoricalAppTypeSetting](docs/HistoricalAppTypeSetting.md)
 - [IndexingState](docs/IndexingState.md)
 - [InlineObject](docs/InlineObject.md)
 - [InlineResponse200](docs/InlineResponse200.md)
 - [Integration](docs/Integration.md)
 - [IntegrationJob](docs/IntegrationJob.md)
 - [IntegrationResults](docs/IntegrationResults.md)
 - [IntegrationUpdate](docs/IntegrationUpdate.md)
 - [LinkingFeedback](docs/LinkingFeedback.md)
 - [MaterializedViewAccount](docs/MaterializedViewAccount.md)
 - [MetadataUpdate](docs/MetadataUpdate.md)
 - [NeighborEntityDetails](docs/NeighborEntityDetails.md)
 - [NeighborEntityIds](docs/NeighborEntityIds.md)
 - [NeighborSearchFilter](docs/NeighborSearchFilter.md)
 - [Organization](docs/Organization.md)
 - [OrganizationExternalDatabaseColumn](docs/OrganizationExternalDatabaseColumn.md)
 - [OrganizationExternalDatabaseTable](docs/OrganizationExternalDatabaseTable.md)
 - [OrganizationExternalDatabaseTableColumnsPair](docs/OrganizationExternalDatabaseTableColumnsPair.md)
 - [OrganizationMember](docs/OrganizationMember.md)
 - [Principal](docs/Principal.md)
 - [PropertyDefinition](docs/PropertyDefinition.md)
 - [PropertyType](docs/PropertyType.md)
 - [PropertyUsageSummary](docs/PropertyUsageSummary.md)
 - [Role](docs/Role.md)
 - [Schema](docs/Schema.md)
 - [Search](docs/Search.md)
 - [SearchConstraints](docs/SearchConstraints.md)
 - [SearchDetails](docs/SearchDetails.md)
 - [SearchResult](docs/SearchResult.md)
 - [SearchResultHits](docs/SearchResultHits.md)
 - [SearchTerm](docs/SearchTerm.md)
 - [SecurableObjectMetadataUpdate](docs/SecurableObjectMetadataUpdate.md)
 - [SecurablePrincipal](docs/SecurablePrincipal.md)
 - [SmsEntitySetInformation](docs/SmsEntitySetInformation.md)
 - [SortDefinition](docs/SortDefinition.md)
 - [UserAppConfig](docs/UserAppConfig.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### http_auth

- **Type**: HTTP basic authentication

### openlattice_auth

- **Type**: API key

- **API key parameter name**: Authorization
- **Location**: HTTP header


## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@openlattice.com

