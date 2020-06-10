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
    instance = new OpenLatticeApi.OrganizationsApi();
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

  describe('OrganizationsApi', function() {
    describe('addMember', function() {
      it('should call addMember successfully', function(done) {
        //uncomment below and update the code to test addMember
        //instance.addMember(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('addRoleToUser', function() {
      it('should call addRoleToUser successfully', function(done) {
        //uncomment below and update the code to test addRoleToUser
        //instance.addRoleToUser(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('assembleEntitySets', function() {
      it('should call assembleEntitySets successfully', function(done) {
        //uncomment below and update the code to test assembleEntitySets
        //instance.assembleEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createOrganizationIfNotExists', function() {
      it('should call createOrganizationIfNotExists successfully', function(done) {
        //uncomment below and update the code to test createOrganizationIfNotExists
        //instance.createOrganizationIfNotExists(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('createRole', function() {
      it('should call createRole successfully', function(done) {
        //uncomment below and update the code to test createRole
        //instance.createRole(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('deleteRole', function() {
      it('should call deleteRole successfully', function(done) {
        //uncomment below and update the code to test deleteRole
        //instance.deleteRole(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('destroyOrganization', function() {
      it('should call destroyOrganization successfully', function(done) {
        //uncomment below and update the code to test destroyOrganization
        //instance.destroyOrganization(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAllUsersOfRole', function() {
      it('should call getAllUsersOfRole successfully', function(done) {
        //uncomment below and update the code to test getAllUsersOfRole
        //instance.getAllUsersOfRole(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getAutoApprovedEmailDomains', function() {
      it('should call getAutoApprovedEmailDomains successfully', function(done) {
        //uncomment below and update the code to test getAutoApprovedEmailDomains
        //instance.getAutoApprovedEmailDomains(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getFlaggedOrganizationEntitySets', function() {
      it('should call getFlaggedOrganizationEntitySets successfully', function(done) {
        //uncomment below and update the code to test getFlaggedOrganizationEntitySets
        //instance.getFlaggedOrganizationEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getMembers', function() {
      it('should call getMembers successfully', function(done) {
        //uncomment below and update the code to test getMembers
        //instance.getMembers(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getOrganization', function() {
      it('should call getOrganization successfully', function(done) {
        //uncomment below and update the code to test getOrganization
        //instance.getOrganization(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getOrganizationEntitySets', function() {
      it('should call getOrganizationEntitySets successfully', function(done) {
        //uncomment below and update the code to test getOrganizationEntitySets
        //instance.getOrganizationEntitySets(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getOrganizationIntegrationAccount', function() {
      it('should call getOrganizationIntegrationAccount successfully', function(done) {
        //uncomment below and update the code to test getOrganizationIntegrationAccount
        //instance.getOrganizationIntegrationAccount(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getOrganizations', function() {
      it('should call getOrganizations successfully', function(done) {
        //uncomment below and update the code to test getOrganizations
        //instance.getOrganizations(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getRole', function() {
      it('should call getRole successfully', function(done) {
        //uncomment below and update the code to test getRole
        //instance.getRole(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('getRoles', function() {
      it('should call getRoles successfully', function(done) {
        //uncomment below and update the code to test getRoles
        //instance.getRoles(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('refreshDataChanges', function() {
      it('should call refreshDataChanges successfully', function(done) {
        //uncomment below and update the code to test refreshDataChanges
        //instance.refreshDataChanges(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removeAutoApprovedEmailDomains', function() {
      it('should call removeAutoApprovedEmailDomains successfully', function(done) {
        //uncomment below and update the code to test removeAutoApprovedEmailDomains
        //instance.removeAutoApprovedEmailDomains(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removeMember', function() {
      it('should call removeMember successfully', function(done) {
        //uncomment below and update the code to test removeMember
        //instance.removeMember(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('removeRoleFromUser', function() {
      it('should call removeRoleFromUser successfully', function(done) {
        //uncomment below and update the code to test removeRoleFromUser
        //instance.removeRoleFromUser(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('setAutoApprovedEmailDomain', function() {
      it('should call setAutoApprovedEmailDomain successfully', function(done) {
        //uncomment below and update the code to test setAutoApprovedEmailDomain
        //instance.setAutoApprovedEmailDomain(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('synchronizeEdmChanges', function() {
      it('should call synchronizeEdmChanges successfully', function(done) {
        //uncomment below and update the code to test synchronizeEdmChanges
        //instance.synchronizeEdmChanges(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateDescription', function() {
      it('should call updateDescription successfully', function(done) {
        //uncomment below and update the code to test updateDescription
        //instance.updateDescription(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateRoleDescription', function() {
      it('should call updateRoleDescription successfully', function(done) {
        //uncomment below and update the code to test updateRoleDescription
        //instance.updateRoleDescription(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateRoleTitle', function() {
      it('should call updateRoleTitle successfully', function(done) {
        //uncomment below and update the code to test updateRoleTitle
        //instance.updateRoleTitle(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
    describe('updateTitle', function() {
      it('should call updateTitle successfully', function(done) {
        //uncomment below and update the code to test updateTitle
        //instance.updateTitle(function(error) {
        //  if (error) throw error;
        //expect().to.be();
        //});
        done();
      });
    });
  });

}));