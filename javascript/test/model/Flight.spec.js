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
    instance = new OpenLatticeApi.Flight();
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

  describe('Flight', function() {
    it('should create an instance of Flight', function() {
      // uncomment below and update the code to test Flight
      //var instane = new OpenLatticeApi.Flight();
      //expect(instance).to.be.a(OpenLatticeApi.Flight);
    });

    it('should have the property name (base name: "name")', function() {
      // uncomment below and update the code to test the property name
      //var instane = new OpenLatticeApi.Flight();
      //expect(instance).to.be();
    });

    it('should have the property tags (base name: "tags")', function() {
      // uncomment below and update the code to test the property tags
      //var instane = new OpenLatticeApi.Flight();
      //expect(instance).to.be();
    });

    it('should have the property organizationId (base name: "organizationId")', function() {
      // uncomment below and update the code to test the property organizationId
      //var instane = new OpenLatticeApi.Flight();
      //expect(instance).to.be();
    });

    it('should have the property entityDefinitions (base name: "entityDefinitions")', function() {
      // uncomment below and update the code to test the property entityDefinitions
      //var instane = new OpenLatticeApi.Flight();
      //expect(instance).to.be();
    });

    it('should have the property associationDefinitions (base name: "associationDefinitions")', function() {
      // uncomment below and update the code to test the property associationDefinitions
      //var instane = new OpenLatticeApi.Flight();
      //expect(instance).to.be();
    });

  });

}));