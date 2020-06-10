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
    instance = new OpenLatticeApi.SearchTerm();
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

  describe('SearchTerm', function() {
    it('should create an instance of SearchTerm', function() {
      // uncomment below and update the code to test SearchTerm
      //var instane = new OpenLatticeApi.SearchTerm();
      //expect(instance).to.be.a(OpenLatticeApi.SearchTerm);
    });

    it('should have the property searchTerm (base name: "searchTerm")', function() {
      // uncomment below and update the code to test the property searchTerm
      //var instane = new OpenLatticeApi.SearchTerm();
      //expect(instance).to.be();
    });

    it('should have the property start (base name: "start")', function() {
      // uncomment below and update the code to test the property start
      //var instane = new OpenLatticeApi.SearchTerm();
      //expect(instance).to.be();
    });

    it('should have the property maxHits (base name: "maxHits")', function() {
      // uncomment below and update the code to test the property maxHits
      //var instane = new OpenLatticeApi.SearchTerm();
      //expect(instance).to.be();
    });

    it('should have the property fuzzy (base name: "fuzzy")', function() {
      // uncomment below and update the code to test the property fuzzy
      //var instane = new OpenLatticeApi.SearchTerm();
      //expect(instance).to.be();
    });

  });

}));