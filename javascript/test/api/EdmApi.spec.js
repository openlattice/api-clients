/**
 * OpenLattice API
 * OpenLattice API
 *
 * The version of the OpenAPI document: 0.0.1
 * Contact: support@openlattice.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OpenLatticeApi);
  }
}(this, function(expect, OpenLatticeApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OpenLatticeApi.EdmApi();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('EdmApi', function() {
    describe('addDstEntityTypeToAssociationType', function() {
      it('should call addDstEntityTypeToAssociationType successfully', function(done) {
        //uncomment below and update the code to test addDstEntityTypeToAssociationType
        //instance.addDstEntityTypeToAssociationType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('addEntitySetsToLinkingEntitySet', function() {
      it('should call addEntitySetsToLinkingEntitySet successfully', function(done) {
        //uncomment below and update the code to test addEntitySetsToLinkingEntitySet
        //instance.addEntitySetsToLinkingEntitySet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('addEntitySetsToLinkingEntitySets', function() {
      it('should call addEntitySetsToLinkingEntitySets successfully', function(done) {
        //uncomment below and update the code to test addEntitySetsToLinkingEntitySets
        //instance.addEntitySetsToLinkingEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('addPrimaryKeyToEntityType', function() {
      it('should call addPrimaryKeyToEntityType successfully', function(done) {
        //uncomment below and update the code to test addPrimaryKeyToEntityType
        //instance.addPrimaryKeyToEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('addPropertyTypeToEntityType', function() {
      it('should call addPropertyTypeToEntityType successfully', function(done) {
        //uncomment below and update the code to test addPropertyTypeToEntityType
        //instance.addPropertyTypeToEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('addSrcEntityTypeToAssociationType', function() {
      it('should call addSrcEntityTypeToAssociationType successfully', function(done) {
        //uncomment below and update the code to test addSrcEntityTypeToAssociationType
        //instance.addSrcEntityTypeToAssociationType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createAssociationType', function() {
      it('should call createAssociationType successfully', function(done) {
        //uncomment below and update the code to test createAssociationType
        //instance.createAssociationType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createEmptySchema', function() {
      it('should call createEmptySchema successfully', function(done) {
        //uncomment below and update the code to test createEmptySchema
        //instance.createEmptySchema(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createEntitySets', function() {
      it('should call createEntitySets successfully', function(done) {
        //uncomment below and update the code to test createEntitySets
        //instance.createEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createEntityType', function() {
      it('should call createEntityType successfully', function(done) {
        //uncomment below and update the code to test createEntityType
        //instance.createEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createPropertyType', function() {
      it('should call createPropertyType successfully', function(done) {
        //uncomment below and update the code to test createPropertyType
        //instance.createPropertyType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createSchemaIfNotExists', function() {
      it('should call createSchemaIfNotExists successfully', function(done) {
        //uncomment below and update the code to test createSchemaIfNotExists
        //instance.createSchemaIfNotExists(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('deleteAssociationType', function() {
      it('should call deleteAssociationType successfully', function(done) {
        //uncomment below and update the code to test deleteAssociationType
        //instance.deleteAssociationType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('deleteEntitySet', function() {
      it('should call deleteEntitySet successfully', function(done) {
        //uncomment below and update the code to test deleteEntitySet
        //instance.deleteEntitySet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('deleteEntityType', function() {
      it('should call deleteEntityType successfully', function(done) {
        //uncomment below and update the code to test deleteEntityType
        //instance.deleteEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('deletePropertyType', function() {
      it('should call deletePropertyType successfully', function(done) {
        //uncomment below and update the code to test deletePropertyType
        //instance.deletePropertyType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('forceDeletePropertyType', function() {
      it('should call forceDeletePropertyType successfully', function(done) {
        //uncomment below and update the code to test forceDeletePropertyType
        //instance.forceDeletePropertyType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('forceRemovePropertyTypeFromEntityType', function() {
      it('should call forceRemovePropertyTypeFromEntityType successfully', function(done) {
        //uncomment below and update the code to test forceRemovePropertyTypeFromEntityType
        //instance.forceRemovePropertyTypeFromEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllAssociationEntityTypes', function() {
      it('should call getAllAssociationEntityTypes successfully', function(done) {
        //uncomment below and update the code to test getAllAssociationEntityTypes
        //instance.getAllAssociationEntityTypes(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllAvailableAssociationTypes', function() {
      it('should call getAllAvailableAssociationTypes successfully', function(done) {
        //uncomment below and update the code to test getAllAvailableAssociationTypes
        //instance.getAllAvailableAssociationTypes(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllEntitySetPropertyMetadata', function() {
      it('should call getAllEntitySetPropertyMetadata successfully', function(done) {
        //uncomment below and update the code to test getAllEntitySetPropertyMetadata
        //instance.getAllEntitySetPropertyMetadata(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllEntitySets', function() {
      it('should call getAllEntitySets successfully', function(done) {
        //uncomment below and update the code to test getAllEntitySets
        //instance.getAllEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllEntityTypePropertyMetadata', function() {
      it('should call getAllEntityTypePropertyMetadata successfully', function(done) {
        //uncomment below and update the code to test getAllEntityTypePropertyMetadata
        //instance.getAllEntityTypePropertyMetadata(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllEntityTypes', function() {
      it('should call getAllEntityTypes successfully', function(done) {
        //uncomment below and update the code to test getAllEntityTypes
        //instance.getAllEntityTypes(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllPropertyTypes', function() {
      it('should call getAllPropertyTypes successfully', function(done) {
        //uncomment below and update the code to test getAllPropertyTypes
        //instance.getAllPropertyTypes(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllPropertyTypesInNamespace', function() {
      it('should call getAllPropertyTypesInNamespace successfully', function(done) {
        //uncomment below and update the code to test getAllPropertyTypesInNamespace
        //instance.getAllPropertyTypesInNamespace(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllPropertyUsageSummaries', function() {
      it('should call getAllPropertyUsageSummaries successfully', function(done) {
        //uncomment below and update the code to test getAllPropertyUsageSummaries
        //instance.getAllPropertyUsageSummaries(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAssociationType', function() {
      it('should call getAssociationType successfully', function(done) {
        //uncomment below and update the code to test getAssociationType
        //instance.getAssociationType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAssociationTypeDetails', function() {
      it('should call getAssociationTypeDetails successfully', function(done) {
        //uncomment below and update the code to test getAssociationTypeDetails
        //instance.getAssociationTypeDetails(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntityDataModel', function() {
      it('should call getEntityDataModel successfully', function(done) {
        //uncomment below and update the code to test getEntityDataModel
        //instance.getEntityDataModel(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntityDataModelDiff', function() {
      it('should call getEntityDataModelDiff successfully', function(done) {
        //uncomment below and update the code to test getEntityDataModelDiff
        //instance.getEntityDataModelDiff(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntitySet', function() {
      it('should call getEntitySet successfully', function(done) {
        //uncomment below and update the code to test getEntitySet
        //instance.getEntitySet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntitySetId', function() {
      it('should call getEntitySetId successfully', function(done) {
        //uncomment below and update the code to test getEntitySetId
        //instance.getEntitySetId(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntitySetIds', function() {
      it('should call getEntitySetIds successfully', function(done) {
        //uncomment below and update the code to test getEntitySetIds
        //instance.getEntitySetIds(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntitySetPropertyMetadata', function() {
      it('should call getEntitySetPropertyMetadata successfully', function(done) {
        //uncomment below and update the code to test getEntitySetPropertyMetadata
        //instance.getEntitySetPropertyMetadata(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntityType', function() {
      it('should call getEntityType successfully', function(done) {
        //uncomment below and update the code to test getEntityType
        //instance.getEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntityTypeHierarchy', function() {
      it('should call getEntityTypeHierarchy successfully', function(done) {
        //uncomment below and update the code to test getEntityTypeHierarchy
        //instance.getEntityTypeHierarchy(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntityTypeId', function() {
      it('should call getEntityTypeId successfully', function(done) {
        //uncomment below and update the code to test getEntityTypeId
        //instance.getEntityTypeId(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getEntityTypePropertyMetadata', function() {
      it('should call getEntityTypePropertyMetadata successfully', function(done) {
        //uncomment below and update the code to test getEntityTypePropertyMetadata
        //instance.getEntityTypePropertyMetadata(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getPropertyMetadataForEntitySets', function() {
      it('should call getPropertyMetadataForEntitySets successfully', function(done) {
        //uncomment below and update the code to test getPropertyMetadataForEntitySets
        //instance.getPropertyMetadataForEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getPropertyType', function() {
      it('should call getPropertyType successfully', function(done) {
        //uncomment below and update the code to test getPropertyType
        //instance.getPropertyType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getPropertyTypeId', function() {
      it('should call getPropertyTypeId successfully', function(done) {
        //uncomment below and update the code to test getPropertyTypeId
        //instance.getPropertyTypeId(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getPropertyTypesForEntitySet', function() {
      it('should call getPropertyTypesForEntitySet successfully', function(done) {
        //uncomment below and update the code to test getPropertyTypesForEntitySet
        //instance.getPropertyTypesForEntitySet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getPropertyUsageSummary', function() {
      it('should call getPropertyUsageSummary successfully', function(done) {
        //uncomment below and update the code to test getPropertyUsageSummary
        //instance.getPropertyUsageSummary(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getSchemaContents', function() {
      it('should call getSchemaContents successfully', function(done) {
        //uncomment below and update the code to test getSchemaContents
        //instance.getSchemaContents(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getSchemas', function() {
      it('should call getSchemas successfully', function(done) {
        //uncomment below and update the code to test getSchemas
        //instance.getSchemas(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getSchemasInNamespace', function() {
      it('should call getSchemasInNamespace successfully', function(done) {
        //uncomment below and update the code to test getSchemasInNamespace
        //instance.getSchemasInNamespace(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removeDstEntityTypeFromAssociationType', function() {
      it('should call removeDstEntityTypeFromAssociationType successfully', function(done) {
        //uncomment below and update the code to test removeDstEntityTypeFromAssociationType
        //instance.removeDstEntityTypeFromAssociationType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removeEntitySetsFromLinkingEntitySet', function() {
      it('should call removeEntitySetsFromLinkingEntitySet successfully', function(done) {
        //uncomment below and update the code to test removeEntitySetsFromLinkingEntitySet
        //instance.removeEntitySetsFromLinkingEntitySet(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removeEntitySetsFromLinkingEntitySets', function() {
      it('should call removeEntitySetsFromLinkingEntitySets successfully', function(done) {
        //uncomment below and update the code to test removeEntitySetsFromLinkingEntitySets
        //instance.removeEntitySetsFromLinkingEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removePrimaryKeyFromEntityType', function() {
      it('should call removePrimaryKeyFromEntityType successfully', function(done) {
        //uncomment below and update the code to test removePrimaryKeyFromEntityType
        //instance.removePrimaryKeyFromEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removePropertyTypeFromEntityType', function() {
      it('should call removePropertyTypeFromEntityType successfully', function(done) {
        //uncomment below and update the code to test removePropertyTypeFromEntityType
        //instance.removePropertyTypeFromEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removeSrcEntityTypeFromAssociationType', function() {
      it('should call removeSrcEntityTypeFromAssociationType successfully', function(done) {
        //uncomment below and update the code to test removeSrcEntityTypeFromAssociationType
        //instance.removeSrcEntityTypeFromAssociationType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('reorderPropertyTypesInEntityType', function() {
      it('should call reorderPropertyTypesInEntityType successfully', function(done) {
        //uncomment below and update the code to test reorderPropertyTypesInEntityType
        //instance.reorderPropertyTypesInEntityType(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateEntityDataModel', function() {
      it('should call updateEntityDataModel successfully', function(done) {
        //uncomment below and update the code to test updateEntityDataModel
        //instance.updateEntityDataModel(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateEntitySetMetaData', function() {
      it('should call updateEntitySetMetaData successfully', function(done) {
        //uncomment below and update the code to test updateEntitySetMetaData
        //instance.updateEntitySetMetaData(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateEntitySetPropertyMetadata', function() {
      it('should call updateEntitySetPropertyMetadata successfully', function(done) {
        //uncomment below and update the code to test updateEntitySetPropertyMetadata
        //instance.updateEntitySetPropertyMetadata(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateEntityTypeMetaData', function() {
      it('should call updateEntityTypeMetaData successfully', function(done) {
        //uncomment below and update the code to test updateEntityTypeMetaData
        //instance.updateEntityTypeMetaData(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateEntityTypePropertyMetadata', function() {
      it('should call updateEntityTypePropertyMetadata successfully', function(done) {
        //uncomment below and update the code to test updateEntityTypePropertyMetadata
        //instance.updateEntityTypePropertyMetadata(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updatePropertyTypeMetaData', function() {
      it('should call updatePropertyTypeMetaData successfully', function(done) {
        //uncomment below and update the code to test updatePropertyTypeMetaData
        //instance.updatePropertyTypeMetaData(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateSchema', function() {
      it('should call updateSchema successfully', function(done) {
        //uncomment below and update the code to test updateSchema
        //instance.updateSchema(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));