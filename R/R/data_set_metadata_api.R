# OpenLattice API
#
# OpenLattice API
#
# The version of the OpenAPI document: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title DataSetMetadata operations
#' @description openlattice.DataSetMetadata
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ get_data_set_column_metadata } \emph{ Gets the dataset column metadata objects using data ID and column ID }
#' 
#'
#' \itemize{
#' \item \emph{ @param } data_id \link{character}
#' \item \emph{ @param } column_id \link{character}
#' \item \emph{ @returnType } \link{DataSetColumn} \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : DataSetColumn 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ get_data_set_columns_metadata } \emph{ Gets all data set column metadata objects that caller has READ on that belong to given data set ids }
#' 
#'
#' \itemize{
#' \item \emph{ @param } request_body list( character )
#' \item \emph{ @returnType } named list( \link{array} ) \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : list(array[DataSetColumn]) 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ get_data_set_metadata } \emph{ Gets dataset metadata object with given data set ID }
#' 
#'
#' \itemize{
#' \item \emph{ @param } data_id \link{character}
#' \item \emph{ @returnType } \link{DataSet} \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : DataSet 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ get_data_sets_metadata } \emph{ Gets the dataset metadata objects given data set ids the caller has READ permissions on }
#' 
#'
#' \itemize{
#' \item \emph{ @param } request_body list( character )
#' \item \emph{ @returnType } named list( \link{DataSet} ) \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : list(DataSet) 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ get_organization_data_sets_metadata } \emph{ Gets all data set column metadata objects that caller has READ on that belong to given data set ids }
#' 
#'
#' \itemize{
#' \item \emph{ @param } organization_id \link{character}
#' \item \emph{ @returnType } named list( \link{DataSet} ) \cr
#'
#'
#' \item status code : 200 | Success
#'
#' \item return type : list(DataSet) 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ update_data_set_column_metadata } \emph{ Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column. }
#' 
#'
#' \itemize{
#' \item \emph{ @param } data_id \link{character}
#' \item \emph{ @param } column_id \link{character}
#' \item \emph{ @param } securable_object_metadata_update \link{SecurableObjectMetadataUpdate}
#'
#'
#' \item status code : 200 | Success
#'
#'
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ update_data_set_metadata } \emph{ Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset. }
#' 
#'
#' \itemize{
#' \item \emph{ @param } data_id \link{character}
#' \item \emph{ @param } securable_object_metadata_update \link{SecurableObjectMetadataUpdate}
#'
#'
#' \item status code : 200 | Success
#'
#'
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  get_data_set_column_metadata  ####################
#'
#' library(openlattice)
#' var.data_id <- 'data_id_example' # character | 
#' var.column_id <- 'column_id_example' # character | 
#'
#' #Gets the dataset column metadata objects using data ID and column ID
#' api.instance <- DataSetMetadataApi$new()
#'
#' #Configure HTTP basic authorization: http_auth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' #Configure API key authorization: openlattice_auth
#' api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$get_data_set_column_metadata(var.data_id, var.column_id)
#'
#'
#' ####################  get_data_set_columns_metadata  ####################
#'
#' library(openlattice)
#' var.request_body <- list('request_body_example') # array[character] | 
#'
#' #Gets all data set column metadata objects that caller has READ on that belong to given data set ids
#' api.instance <- DataSetMetadataApi$new()
#'
#' #Configure HTTP basic authorization: http_auth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' #Configure API key authorization: openlattice_auth
#' api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$get_data_set_columns_metadata(request_body=var.request_body)
#'
#'
#' ####################  get_data_set_metadata  ####################
#'
#' library(openlattice)
#' var.data_id <- 'data_id_example' # character | 
#'
#' #Gets dataset metadata object with given data set ID
#' api.instance <- DataSetMetadataApi$new()
#'
#' #Configure HTTP basic authorization: http_auth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' #Configure API key authorization: openlattice_auth
#' api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$get_data_set_metadata(var.data_id)
#'
#'
#' ####################  get_data_sets_metadata  ####################
#'
#' library(openlattice)
#' var.request_body <- list('request_body_example') # array[character] | 
#'
#' #Gets the dataset metadata objects given data set ids the caller has READ permissions on
#' api.instance <- DataSetMetadataApi$new()
#'
#' #Configure HTTP basic authorization: http_auth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' #Configure API key authorization: openlattice_auth
#' api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$get_data_sets_metadata(request_body=var.request_body)
#'
#'
#' ####################  get_organization_data_sets_metadata  ####################
#'
#' library(openlattice)
#' var.organization_id <- 'organization_id_example' # character | 
#'
#' #Gets all data set column metadata objects that caller has READ on that belong to given data set ids
#' api.instance <- DataSetMetadataApi$new()
#'
#' #Configure HTTP basic authorization: http_auth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' #Configure API key authorization: openlattice_auth
#' api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$get_organization_data_sets_metadata(var.organization_id)
#'
#'
#' ####################  update_data_set_column_metadata  ####################
#'
#' library(openlattice)
#' var.data_id <- 'data_id_example' # character | 
#' var.column_id <- 'column_id_example' # character | 
#' var.securable_object_metadata_update <- SecurableObjectMetadataUpdate$new() # SecurableObjectMetadataUpdate | 
#'
#' #Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
#' api.instance <- DataSetMetadataApi$new()
#'
#' #Configure HTTP basic authorization: http_auth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' #Configure API key authorization: openlattice_auth
#' api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$update_data_set_column_metadata(var.data_id, var.column_id, securable_object_metadata_update=var.securable_object_metadata_update)
#'
#'
#' ####################  update_data_set_metadata  ####################
#'
#' library(openlattice)
#' var.data_id <- 'data_id_example' # character | 
#' var.securable_object_metadata_update <- SecurableObjectMetadataUpdate$new() # SecurableObjectMetadataUpdate | 
#'
#' #Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
#' api.instance <- DataSetMetadataApi$new()
#'
#' #Configure HTTP basic authorization: http_auth
#' # provide your username in the user-serial format
#' api.instance$apiClient$username <- '<user-serial>'; 
#' # provide your api key generated using the developer portal
#' api.instance$apiClient$password <- '<api_key>';
#'
#' #Configure API key authorization: openlattice_auth
#' api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
#'
#' result <- api.instance$update_data_set_metadata(var.data_id, securable_object_metadata_update=var.securable_object_metadata_update)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
DataSetMetadataApi <- R6::R6Class(
  'DataSetMetadataApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_data_set_column_metadata = function(data_id, column_id, ...){
      apiResponse <- self$get_data_set_column_metadataWithHttpInfo(data_id, column_id, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    get_data_set_column_metadataWithHttpInfo = function(data_id, column_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`data_id`)) {
        stop("Missing required parameter `data_id`.")
      }

      if (missing(`column_id`)) {
        stop("Missing required parameter `column_id`.")
      }

      urlPath <- "/datastore/metadata/columns/{dataId}/{columnId}"
      if (!missing(`data_id`)) {
        urlPath <- gsub(paste0("\\{", "dataId", "\\}"), URLencode(as.character(`data_id`), reserved = TRUE), urlPath)
      }

      if (!missing(`column_id`)) {
        urlPath <- gsub(paste0("\\{", "columnId", "\\}"), URLencode(as.character(`column_id`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "DataSetColumn", loadNamespace("openlattice")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    get_data_set_columns_metadata = function(request_body=NULL, ...){
      apiResponse <- self$get_data_set_columns_metadataWithHttpInfo(request_body, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    get_data_set_columns_metadataWithHttpInfo = function(request_body=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (!missing(`request_body`)) {
        body <- sprintf(
        '
            [%s]
',
              paste(sapply(`request_body`, function(x) {
                    if ('toJSONString' %in% names(x)) {
                        x$toJSONString()
                    } else {
                        jsonlite::toJSON(x$toJSON(), auto_unbox=FALSE, digits = NA)
                    }
                    }), collapse=",")
        )
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/metadata/columns"
      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "list(array[DataSetColumn])", loadNamespace("openlattice")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    get_data_set_metadata = function(data_id, ...){
      apiResponse <- self$get_data_set_metadataWithHttpInfo(data_id, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    get_data_set_metadataWithHttpInfo = function(data_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`data_id`)) {
        stop("Missing required parameter `data_id`.")
      }

      urlPath <- "/datastore/metadata/datasets/{dataId}"
      if (!missing(`data_id`)) {
        urlPath <- gsub(paste0("\\{", "dataId", "\\}"), URLencode(as.character(`data_id`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "DataSet", loadNamespace("openlattice")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    get_data_sets_metadata = function(request_body=NULL, ...){
      apiResponse <- self$get_data_sets_metadataWithHttpInfo(request_body, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    get_data_sets_metadataWithHttpInfo = function(request_body=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (!missing(`request_body`)) {
        body <- sprintf(
        '
            [%s]
',
              paste(sapply(`request_body`, function(x) {
                    if ('toJSONString' %in% names(x)) {
                        x$toJSONString()
                    } else {
                        jsonlite::toJSON(x$toJSON(), auto_unbox=FALSE, digits = NA)
                    }
                    }), collapse=",")
        )
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/metadata/datasets"
      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "list(DataSet)", loadNamespace("openlattice")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    get_organization_data_sets_metadata = function(organization_id, ...){
      apiResponse <- self$get_organization_data_sets_metadataWithHttpInfo(organization_id, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    get_organization_data_sets_metadataWithHttpInfo = function(organization_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`organization_id`)) {
        stop("Missing required parameter `organization_id`.")
      }

      urlPath <- "/datastore/metadata/datasets/organizations/{organizationId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), URLencode(as.character(`organization_id`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "list(DataSet)", loadNamespace("openlattice")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    update_data_set_column_metadata = function(data_id, column_id, securable_object_metadata_update=NULL, ...){
      apiResponse <- self$update_data_set_column_metadataWithHttpInfo(data_id, column_id, securable_object_metadata_update, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    update_data_set_column_metadataWithHttpInfo = function(data_id, column_id, securable_object_metadata_update=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`data_id`)) {
        stop("Missing required parameter `data_id`.")
      }

      if (missing(`column_id`)) {
        stop("Missing required parameter `column_id`.")
      }

      if (!missing(`securable_object_metadata_update`)) {
        body <- sprintf(
        '
          %s
        ',
                  if ('toJSONString' %in% names(`securable_object_metadata_update`)) {
                  `securable_object_metadata_update`$toJSONString()
                  } else {
                    jsonlite::toJSON(`securable_object_metadata_update`$toJSON(), auto_unbox=FALSE, digits = NA)
                  }
        )
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/metadata/update/{dataId}/{columnId}"
      if (!missing(`data_id`)) {
        urlPath <- gsub(paste0("\\{", "dataId", "\\}"), URLencode(as.character(`data_id`), reserved = TRUE), urlPath)
      }

      if (!missing(`column_id`)) {
        urlPath <- gsub(paste0("\\{", "columnId", "\\}"), URLencode(as.character(`column_id`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PATCH",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        ApiResponse$new(NULL, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    update_data_set_metadata = function(data_id, securable_object_metadata_update=NULL, ...){
      apiResponse <- self$update_data_set_metadataWithHttpInfo(data_id, securable_object_metadata_update, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    update_data_set_metadataWithHttpInfo = function(data_id, securable_object_metadata_update=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`data_id`)) {
        stop("Missing required parameter `data_id`.")
      }

      if (!missing(`securable_object_metadata_update`)) {
        body <- sprintf(
        '
          %s
        ',
                  if ('toJSONString' %in% names(`securable_object_metadata_update`)) {
                  `securable_object_metadata_update`$toJSONString()
                  } else {
                    jsonlite::toJSON(`securable_object_metadata_update`$toJSON(), auto_unbox=FALSE, digits = NA)
                  }
        )
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/metadata/update/{dataId}"
      if (!missing(`data_id`)) {
        urlPath <- gsub(paste0("\\{", "dataId", "\\}"), URLencode(as.character(`data_id`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PATCH",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        ApiResponse$new(NULL, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)
