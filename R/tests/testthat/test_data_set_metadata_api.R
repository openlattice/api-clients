# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test DataSetMetadataApi")

api.instance <- DataSetMetadataApi$new()

test_that("get_data_set_column_metadata", {
  # tests for get_data_set_column_metadata
  # base path: https://api.openlattice.com
  # Gets the dataset column metadata objects using data ID and column ID
  # @param data_id character 
  # @param column_id character 
  # @return [DataSetColumn]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("get_data_set_columns_metadata", {
  # tests for get_data_set_columns_metadata
  # base path: https://api.openlattice.com
  # Gets all data set column metadata objects that caller has READ on that belong to given data set ids
  # @param request_body array[character]  (optional)
  # @return [list(array[DataSetColumn])]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("get_data_set_metadata", {
  # tests for get_data_set_metadata
  # base path: https://api.openlattice.com
  # Gets dataset metadata object with given data set ID
  # @param data_id character 
  # @return [DataSet]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("get_data_sets_metadata", {
  # tests for get_data_sets_metadata
  # base path: https://api.openlattice.com
  # Gets the dataset metadata objects given data set ids the caller has READ permissions on
  # @param request_body array[character]  (optional)
  # @return [list(DataSet)]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("get_organization_data_sets_metadata", {
  # tests for get_organization_data_sets_metadata
  # base path: https://api.openlattice.com
  # Gets all data set column metadata objects that caller has READ on that belong to given data set ids
  # @param organization_id character 
  # @return [list(DataSet)]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("update_data_set_column_metadata", {
  # tests for update_data_set_column_metadata
  # base path: https://api.openlattice.com
  # Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
  # @param data_id character 
  # @param column_id character 
  # @param securable_object_metadata_update SecurableObjectMetadataUpdate  (optional)
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

test_that("update_data_set_metadata", {
  # tests for update_data_set_metadata
  # base path: https://api.openlattice.com
  # Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
  # @param data_id character 
  # @param securable_object_metadata_update SecurableObjectMetadataUpdate  (optional)
  # @return [Void]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})

