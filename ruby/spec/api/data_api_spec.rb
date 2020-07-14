=begin
#OpenLattice API

#OpenLattice API

The version of the OpenAPI document: 0.0.1
Contact: support@openlattice.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::DataApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DataApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::DataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DataApi' do
    it 'should create an instance of DataApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::DataApi)
    end
  end

  # unit tests for create_associations
  # Creates a new set of associations.
  # @param inline_object 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Array<String>>]
  describe 'create_associations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_edges
  # Creates a new set of associations.
  # @param data_edge_key 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'create_edges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_entities
  # Creates a new set of entities.
  # @param set_id 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'create_entities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_entity_and_association_data
  # Creates entities and assocations
  # @param data_graph 
  # @param [Hash] opts the optional parameters
  # @return [DataGraphIds]
  describe 'create_entity_and_association_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_all_entities_from_entity_set
  # Clears the Entity matching the given Entity id and all of its neighbor Entities
  # @param entity_set_id 
  # @param type 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_all_entities_from_entity_set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_entities
  # Deletes multiple entities from an entity set.
  # @param entity_set_id 
  # @param type 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'delete_entities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_entities_and_neighbors
  # Deletes the entities matching the given entity ids and all of its neighbor entities provided in the filter.
  # @param entity_set_id 
  # @param type 
  # @param entity_neighbors_filter 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'delete_entities_and_neighbors test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_entity
  # Deletes a single entity from an entity set.
  # @param entity_set_id 
  # @param entity_key_id 
  # @param type 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_entity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_entity_properties
  # Deletes properties from an entity.
  # @param entity_set_id 
  # @param entity_key_id 
  # @param type 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_entity_properties test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entity
  # Loads a single entity by its entityKeyId and entitySetId
  # @param entity_set_id 
  # @param entity_key_id 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Array<String>>]
  describe 'get_entity test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entity_property_values
  # Loads property  values for a single entity by its entityKeyId, entitySetId and propertyTypeId
  # @param entity_set_id 
  # @param entity_key_id 
  # @param property_type_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_entity_property_values test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_entity_set_size
  # Gets the number of entities in an entity set.
  # @param entity_set_id 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'get_entity_set_size test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for load_entity_set_data
  # Gets an iterable containing the entity data, using property type FQNs as key
  # @param entity_set_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<Hash<String, Array<String>>>]
  describe 'load_entity_set_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for load_linked_entity_set_breakdown
  # Loads a linked entity set breakdown with the selected linked entities and properties.
  # @param linked_entity_set_id 
  # @param entity_set_selection 
  # @param [Hash] opts the optional parameters
  # @return [Hash<String, Hash<String, Hash<String, Hash<String, Array<String>>>>>]
  describe 'load_linked_entity_set_breakdown test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for load_selected_entity_set_data
  # Gets a list of entities by UUIDs
  # @param entity_set_id 
  # @param entity_set_selection 
  # @param [Hash] opts the optional parameters
  # @return [Array<Hash<String, Array<String>>>]
  describe 'load_selected_entity_set_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_association_data
  # Replaces Association Data
  # @param partial 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'replace_association_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_entity_properties
  # Replaces Entity Properties
  # @param entity_set_id 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'replace_entity_properties test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_entities_in_entity_set
  # Perform one of the following bulk update operations on entities (type &#x3D; Merge) adds new properties without affecting existing data, (type &#x3D; PartialReplace) replaces all values for supplied property types, but does not not affect other property types for an entity, (type &#x3D; Replace) replaces all entity data with the supplied properties.
  # @param entity_set_id 
  # @param type 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [Integer]
  describe 'update_entities_in_entity_set test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
