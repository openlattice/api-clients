# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' InlineObject Class
#'
#' @field additionalProperties 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
InlineObject <- R6::R6Class(
  'InlineObject',
  public = list(
    `additionalProperties` = NULL,
    initialize = function(`additionalProperties`){
      if (!missing(`additionalProperties`)) {
                stopifnot(is.vector(`additionalProperties`), length(`additionalProperties`) != 0)
                sapply(`additionalProperties`, function(x) stopifnot(R6::is.R6(x)))
        self$`additionalProperties` <- `additionalProperties`
      }
    },
    toJSON = function() {
      InlineObjectObject <- list()
      if (!is.null(self$`additionalProperties`)) {
        InlineObjectObject[['additionalProperties']] <-
                sapply(self$`additionalProperties`, function(x) x$toJSON())
      }

      InlineObjectObject
    },
    fromJSON = function(InlineObjectJson) {
      InlineObjectObject <- jsonlite::fromJSON(InlineObjectJson)
      if (!is.null(InlineObjectObject$`additionalProperties`)) {
                self$`additionalProperties` <- sapply(InlineObjectObject$`additionalProperties`, function(x) {
                  additionalPropertiesObject <- DataEdge$new()
                  additionalPropertiesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
                  additionalPropertiesObject
            })
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "additionalProperties":
                  ["%s"]
              
        }',
                paste0(sapply(self$`additionalProperties`, function(x) x$toJSON()), collapse='","')
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(InlineObjectJson) {
      InlineObjectObject <- jsonlite::fromJSON(InlineObjectJson)
              self$`additionalProperties` <- sapply(InlineObjectObject$`additionalProperties`, function(x) DataEdge$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)