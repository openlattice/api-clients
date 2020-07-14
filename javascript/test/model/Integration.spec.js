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
    instance = new OpenLatticeApi.Integration();
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

  describe('Integration', function() {
    it('should create an instance of Integration', function() {
      // uncomment below and update the code to test Integration
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be.a(OpenLatticeApi.Integration);
    });

    it('should have the property key (base name: "key")', function() {
      // uncomment below and update the code to test the property key
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property environment (base name: "environment")', function() {
      // uncomment below and update the code to test the property environment
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property s3Bucket (base name: "s3Bucket")', function() {
      // uncomment below and update the code to test the property s3Bucket
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property contacts (base name: "contacts")', function() {
      // uncomment below and update the code to test the property contacts
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property organizationId (base name: "organizationId")', function() {
      // uncomment below and update the code to test the property organizationId
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property entitySetId (base name: "entitySetId")', function() {
      // uncomment below and update the code to test the property entitySetId
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property maxConnections (base name: "maxConnections")', function() {
      // uncomment below and update the code to test the property maxConnections
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property callback (base name: "callback")', function() {
      // uncomment below and update the code to test the property callback
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

    it('should have the property flightPlanParameters (base name: "flightPlanParameters")', function() {
      // uncomment below and update the code to test the property flightPlanParameters
      //var instane = new OpenLatticeApi.Integration();
      //expect(instance).to.be();
    });

  });

}));
