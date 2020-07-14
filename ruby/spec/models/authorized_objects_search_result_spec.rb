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
require 'date'

# Unit tests for OpenapiClient::AuthorizedObjectsSearchResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthorizedObjectsSearchResult' do
  before do
    # run before each test
    @instance = OpenapiClient::AuthorizedObjectsSearchResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthorizedObjectsSearchResult' do
    it 'should create an instance of AuthorizedObjectsSearchResult' do
      expect(@instance).to be_instance_of(OpenapiClient::AuthorizedObjectsSearchResult)
    end
  end
  describe 'test attribute "paging_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "authorized_objects"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end