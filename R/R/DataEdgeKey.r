# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' DataEdgeKey Class
#'
#' @field src 
#' @field dst 
#' @field data 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
DataEdgeKey <- R6::R6Class(
  'DataEdgeKey',
  public = list(
    `src` = NULL,
    `dst` = NULL,
    `data` = NULL,
    initialize = function(`src`, `dst`, `data`){
      if (!missing(`src`)) {
                stopifnot(is.character(`src`), length(`src`) == 1)
        self$`src` <- `src`
      }
      if (!missing(`dst`)) {
                stopifnot(is.character(`dst`), length(`dst`) == 1)
        self$`dst` <- `dst`
      }
      if (!missing(`data`)) {
        self$`data` <- `data`
      }
    },
    toJSON = function() {
      DataEdgeKeyObject <- list()
      if (!is.null(self$`src`)) {
        DataEdgeKeyObject[['src']] <-
                self$`src`
      }
      if (!is.null(self$`dst`)) {
        DataEdgeKeyObject[['dst']] <-
                self$`dst`
      }
      if (!is.null(self$`data`)) {
        DataEdgeKeyObject[['data']] <-
                self$`data`
      }

      DataEdgeKeyObject
    },
    fromJSON = function(DataEdgeKeyJson) {
      DataEdgeKeyObject <- jsonlite::fromJSON(DataEdgeKeyJson)
      if (!is.null(DataEdgeKeyObject$`src`)) {
                self$`src` <- DataEdgeKeyObject$`src`
      }
      if (!is.null(DataEdgeKeyObject$`dst`)) {
                self$`dst` <- DataEdgeKeyObject$`dst`
      }
      if (!is.null(DataEdgeKeyObject$`data`)) {
                self$`data` <- DataEdgeKeyObject$`data`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "src":
                      
                      "%s"
                  
              ,
           "dst":
                      
                      "%s"
                  
              ,
           "data":
                      
                      "%s"
                  
              
        }',
                self$`src`,
                self$`dst`,
                self$`data`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(DataEdgeKeyJson) {
      DataEdgeKeyObject <- jsonlite::fromJSON(DataEdgeKeyJson)
              self$`src` <- DataEdgeKeyObject$`src`
              self$`dst` <- DataEdgeKeyObject$`dst`
              self$`data` <- DataEdgeKeyObject$`data`
    }
  )
)
