library(openlattice)
library(testthat)

test_that("getting the edm", {
  
  # define api client
  basepath = "https://api.openlattice.com"
  header_params = unlist(list("Authorization" = paste("Bearer", "{mytoken}")))
  client <- ApiClient$new(
    defaultHeaders = header_params,
    basePath = basepath
  )
  
  # get edm api
  edmApi <- EdmApi$new(apiClient = client)
  
  # load edm
  edm = edmApi$get_entity_data_model()
  
  # is it a list?
  expect_equal(typeof(edm), "list")
})
