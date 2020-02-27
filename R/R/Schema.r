# OpenLattice API
#
# OpenLattice API
#
# The version of the OpenAPI document: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Schema
#' @description Schema Class
#' @format An \code{R6Class} generator object
#' @field entityTypes  list( \link{EntityType} ) [optional]
#'
#' @field propertyTypes  list( \link{PropertyType} ) [optional]
#'
#' @field fqn  \link{FullQualifiedName} [optional]
#'
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Schema <- R6::R6Class(
  'Schema',
  public = list(
    `entityTypes` = NULL,
    `propertyTypes` = NULL,
    `fqn` = NULL,
    initialize = function(`entityTypes`=NULL, `propertyTypes`=NULL, `fqn`=NULL, ...){
      local.optional.var <- list(...)
      if (!is.null(`entityTypes`)) {
        stopifnot(is.vector(`entityTypes`), length(`entityTypes`) != 0)
        sapply(`entityTypes`, function(x) stopifnot(R6::is.R6(x)))
        self$`entityTypes` <- `entityTypes`
      }
      if (!is.null(`propertyTypes`)) {
        stopifnot(is.vector(`propertyTypes`), length(`propertyTypes`) != 0)
        sapply(`propertyTypes`, function(x) stopifnot(R6::is.R6(x)))
        self$`propertyTypes` <- `propertyTypes`
      }
      if (!is.null(`fqn`)) {
        stopifnot(R6::is.R6(`fqn`))
        self$`fqn` <- `fqn`
      }
    },
    toJSON = function() {
      SchemaObject <- list()
      if (!is.null(self$`entityTypes`)) {
        SchemaObject[['entityTypes']] <-
          lapply(self$`entityTypes`, function(x) x$toJSON())
      }
      if (!is.null(self$`propertyTypes`)) {
        SchemaObject[['propertyTypes']] <-
          lapply(self$`propertyTypes`, function(x) x$toJSON())
      }
      if (!is.null(self$`fqn`)) {
        SchemaObject[['fqn']] <-
          self$`fqn`$toJSON()
      }

      SchemaObject
    },
    fromJSON = function(SchemaJson) {
      SchemaObject <- jsonlite::fromJSON(SchemaJson)
      if (!is.null(SchemaObject$`entityTypes`)) {
        self$`entityTypes` <- ApiClient$new()$deserializeObj(SchemaObject$`entityTypes`, "array[EntityType]", loadNamespace("openlattice"))
      }
      if (!is.null(SchemaObject$`propertyTypes`)) {
        self$`propertyTypes` <- ApiClient$new()$deserializeObj(SchemaObject$`propertyTypes`, "array[PropertyType]", loadNamespace("openlattice"))
      }
      if (!is.null(SchemaObject$`fqn`)) {
        fqnObject <- FullQualifiedName$new()
        fqnObject$fromJSON(jsonlite::toJSON(SchemaObject$fqn, auto_unbox = TRUE, digits = NA))
        self$`fqn` <- fqnObject
      }
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`entityTypes`)) {
        sprintf(
        '"entityTypes":
        [%s]
',
        paste(sapply(self$`entityTypes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`propertyTypes`)) {
        sprintf(
        '"propertyTypes":
        [%s]
',
        paste(sapply(self$`propertyTypes`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`fqn`)) {
        sprintf(
        '"fqn":
        %s
        ',
        jsonlite::toJSON(self$`fqn`$toJSON(), auto_unbox=TRUE, digits = NA)
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(SchemaJson) {
      SchemaObject <- jsonlite::fromJSON(SchemaJson)
      self$`entityTypes` <- ApiClient$new()$deserializeObj(SchemaObject$`entityTypes`, "array[EntityType]", loadNamespace("openlattice"))
      self$`propertyTypes` <- ApiClient$new()$deserializeObj(SchemaObject$`propertyTypes`, "array[PropertyType]", loadNamespace("openlattice"))
      self$`fqn` <- FullQualifiedName$new()$fromJSON(jsonlite::toJSON(SchemaObject$fqn, auto_unbox = TRUE, digits = NA))
      self
    }
  )
)
