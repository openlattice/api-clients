=begin
#OpenLattice API

#OpenLattice API

The version of the OpenAPI document: 0.0.1
Contact: support@openlattice.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/access_check'
require 'openapi_client/models/ace'
require 'openapi_client/models/acl'
require 'openapi_client/models/acl_data'
require 'openapi_client/models/advanced_search'
require 'openapi_client/models/app'
require 'openapi_client/models/app_role'
require 'openapi_client/models/app_role_permissions'
require 'openapi_client/models/association'
require 'openapi_client/models/association_definition'
require 'openapi_client/models/association_type'
require 'openapi_client/models/auth0user_basic'
require 'openapi_client/models/authorization'
require 'openapi_client/models/authorized_objects_search_result'
require 'openapi_client/models/bulk_data_creation'
require 'openapi_client/models/collection_template_type'
require 'openapi_client/models/constraint'
require 'openapi_client/models/constraint_group'
require 'openapi_client/models/data_association'
require 'openapi_client/models/data_edge'
require 'openapi_client/models/data_edge_data'
require 'openapi_client/models/data_edge_key'
require 'openapi_client/models/data_graph'
require 'openapi_client/models/data_graph_ids'
require 'openapi_client/models/data_search_result'
require 'openapi_client/models/data_set'
require 'openapi_client/models/data_set_column'
require 'openapi_client/models/edm'
require 'openapi_client/models/ed_mdiff'
require 'openapi_client/models/edm_request'
require 'openapi_client/models/entity'
require 'openapi_client/models/entity_data_key'
require 'openapi_client/models/entity_definition'
require 'openapi_client/models/entity_key'
require 'openapi_client/models/entity_key_pair'
require 'openapi_client/models/entity_linking_features'
require 'openapi_client/models/entity_linking_feedback'
require 'openapi_client/models/entity_neighbors_filter'
require 'openapi_client/models/entity_set'
require 'openapi_client/models/entity_set_collection'
require 'openapi_client/models/entity_set_property_meta_data'
require 'openapi_client/models/entity_set_selection'
require 'openapi_client/models/entity_type'
require 'openapi_client/models/entity_type_collection'
require 'openapi_client/models/entity_type_property_metadata'
require 'openapi_client/models/filter'
require 'openapi_client/models/filtered_data_page_definition'
require 'openapi_client/models/flight'
require 'openapi_client/models/flight_plan_parameters'
require 'openapi_client/models/flight_plan_parameters_update'
require 'openapi_client/models/full_qualified_name'
require 'openapi_client/models/historical_app_config'
require 'openapi_client/models/historical_app_type_setting'
require 'openapi_client/models/indexing_state'
require 'openapi_client/models/inline_object'
require 'openapi_client/models/inline_response200'
require 'openapi_client/models/integration'
require 'openapi_client/models/integration_job'
require 'openapi_client/models/integration_results'
require 'openapi_client/models/integration_update'
require 'openapi_client/models/linking_feedback'
require 'openapi_client/models/materialized_view_account'
require 'openapi_client/models/metadata_update'
require 'openapi_client/models/neighbor_entity_details'
require 'openapi_client/models/neighbor_entity_ids'
require 'openapi_client/models/neighbor_search_filter'
require 'openapi_client/models/organization'
require 'openapi_client/models/organization_external_database_column'
require 'openapi_client/models/organization_external_database_table'
require 'openapi_client/models/organization_external_database_table_columns_pair'
require 'openapi_client/models/organization_member'
require 'openapi_client/models/principal'
require 'openapi_client/models/property_definition'
require 'openapi_client/models/property_type'
require 'openapi_client/models/property_usage_summary'
require 'openapi_client/models/role'
require 'openapi_client/models/schema'
require 'openapi_client/models/search'
require 'openapi_client/models/search_constraints'
require 'openapi_client/models/search_details'
require 'openapi_client/models/search_result'
require 'openapi_client/models/search_result_hits'
require 'openapi_client/models/search_term'
require 'openapi_client/models/securable_object_metadata_update'
require 'openapi_client/models/securable_principal'
require 'openapi_client/models/sms_entity_set_information'
require 'openapi_client/models/sort_definition'
require 'openapi_client/models/user_app_config'

# APIs
require 'openapi_client/api/admin_api'
require 'openapi_client/api/app_api'
require 'openapi_client/api/authorizations_api'
require 'openapi_client/api/collections_api'
require 'openapi_client/api/data_api'
require 'openapi_client/api/data_integrations_api'
require 'openapi_client/api/dataset_api'
require 'openapi_client/api/edm_api'
require 'openapi_client/api/entity_sets_api'
require 'openapi_client/api/linking_api'
require 'openapi_client/api/metadata_api'
require 'openapi_client/api/organizations_api'
require 'openapi_client/api/permissions_api'
require 'openapi_client/api/principal_api'
require 'openapi_client/api/search_api'
require 'openapi_client/api/shuttle_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
