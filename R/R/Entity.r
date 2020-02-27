# OpenLattice API
#
# OpenLattice API
#
# The version of the OpenAPI document: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Entity
#' @description Entity Class
#' @format An \code{R6Class} generator object
#' @field key  \link{EntityKey} [optional]
#'
#' @field details  named list( character ) [optional]
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Entity <- R6::R6Class(
  'Entity',
  public = list(
    `key` = NULL,
    `details` = NULL,
    initialize = function(`key`=NULL, `details`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`key`)) {
        stopifnot(R6::is.R6(`key`))
        self$`key` <- `key`
      }
      if (!is.null(`details`)) {
        stopifnot(is.vector(`details`), length(`details`) != 0)
        sapply(`details`, function(x) stopifnot(is.character(x)))
        self$`details` <- `details`
      }
    },
    toJSON = function() {
      EntityObject <- list()
      if (!is.null(self$`key`)) {
        EntityObject[['key']] <-
          self$`key`$toJSON()
      }
      if (!is.null(self$`details`)) {
        EntityObject[['details']] <-
          self$`details`
      }

      EntityObject
    },
    fromJSON = function(EntityJson) {
      EntityObject <- jsonlite::fromJSON(EntityJson)
      if (!is.null(EntityObject$`key`)) {
        keyObject <- EntityKey$new()
        keyObject$fromJSON(jsonlite::toJSON(EntityObject$key, auto_unbox = TRUE, digits = NA))
        self$`key` <- keyObject
      }
      if (!is.null(EntityObject$`details`)) {
        self$`details` <- ApiClient$new()$deserializeObj(EntityObject$`details`, "map(character)", loadNamespace("openlattice"))
      }
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`key`)) {
        sprintf(
        '"key":
        %s
        ',
        jsonlite::toJSON(self$`key`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`details`)) {
        sprintf(
        '"details":
          "%s"
        ',
        jsonlite::toJSON(lapply(self$`details`, function(x){ x }), auto_unbox = TRUE, digits=NA)
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(EntityJson) {
      EntityObject <- jsonlite::fromJSON(EntityJson)
      self$`key` <- EntityKey$new()$fromJSON(jsonlite::toJSON(EntityObject$key, auto_unbox = TRUE, digits = NA))
      self$`details` <- ApiClient$new()$deserializeObj(EntityObject$`details`, "map(character)", loadNamespace("openlattice"))
      self
    }
  )
)
