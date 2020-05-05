=begin
#OpenLattice API

#OpenLattice API

The version of the OpenAPI document: 0.0.1
Contact: support@openlattice.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::DatasetApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DatasetApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::DatasetApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DatasetApi' do
    it 'should create an instance of DatasetApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::DatasetApi)
    end
  end

  # unit tests for delete_external_database_column
  # Deletes an OrganizationExternalDatabaseColumn object, which represents an organization&#39;s column in an external database. This deletes both the object and the column in the database. It is a hard delete.
  # @param organization_id 
  # @param table_name 
  # @param column_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_external_database_column test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_external_database_columns
  # Deletes multiple OrganizationExternalDatabaseColumn objects and the columns they represent within an organization&#39;s table in an external database. It is a hard delete
  # @param organization_id 
  # @param table_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_external_database_columns test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_external_database_table
  # Deletes an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database. This deletes both the object and the table in the database. It is a hard delete.
  # @param organization_id 
  # @param table_name 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_external_database_table test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_external_database_tables
  # Deletes multiple OrganizationExternalDatabaseTable objects and the tables they represent in the database. It is a hard delete.
  # @param organization_id 
  # @param request_body 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_external_database_tables test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_authorized_external_db_tables_with_column_metadata
  # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
  # @param organization_id 
  # @param permission 
  # @param [Hash] opts the optional parameters
  # @return [Array<OrganizationExternalDatabaseTableColumnsPair>]
  describe 'get_authorized_external_db_tables_with_column_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_external_database_column
  # Gets an OrganizationExternalDatabaseColumn object, which represents a column within an organization&#39;s table in an external database.
  # @param organization_id 
  # @param table_name 
  # @param column_name 
  # @param [Hash] opts the optional parameters
  # @return [OrganizationExternalDatabaseColumn]
  describe 'get_external_database_column test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_external_database_table
  # Gets an OrganizationExternalDatabaseTable object, which represents an organization&#39;s table in an external database.
  # @param organization_id 
  # @param table_name 
  # @param [Hash] opts the optional parameters
  # @return [OrganizationExternalDatabaseTable]
  describe 'get_external_database_table test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_external_database_table_with_column_metadata
  # Gets an object containing an OrganizationExternalDatabaseTable object and its OrganizationExternalDatabase columns for an organization
  # @param organization_id 
  # @param table_id 
  # @param [Hash] opts the optional parameters
  # @return [OrganizationExternalDatabaseTableColumnsPair]
  describe 'get_external_database_table_with_column_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_external_database_tables
  # Gets all OrganizationExternalDatabaseTable objects for an organization
  # @param organization_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<OrganizationExternalDatabaseTable>]
  describe 'get_external_database_tables test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_external_database_tables_with_column_metadata
  # Gets a map of all OrganizationExternalDatabaseTable objects to OrganizationExternalDatabase columns that are contained within each table.
  # @param organization_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<OrganizationExternalDatabaseTableColumnsPair>]
  describe 'get_external_database_tables_with_column_metadata test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_external_database_column
  # Updates an OrganizationExternalDatabaseTableColumn object&#39;s fields that are included within the given metadata.
  # @param organization_id 
  # @param table_name 
  # @param column_name 
  # @param metadata_update 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_external_database_column test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_external_database_table
  # Updates an OrganizationExternalDatabaseTable object&#39;s fields that are included within the given metadata.
  # @param organization_id 
  # @param table_name 
  # @param metadata_update 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_external_database_table test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
