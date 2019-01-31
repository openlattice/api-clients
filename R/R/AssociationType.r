# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' AssociationType Class
#'
#' @field entityType 
#' @field src 
#' @field dst 
#' @field bidirectional 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AssociationType <- R6::R6Class(
  'AssociationType',
  public = list(
    `entityType` = NULL,
    `src` = NULL,
    `dst` = NULL,
    `bidirectional` = NULL,
    initialize = function(`entityType`, `src`, `dst`, `bidirectional`){
      if (!missing(`entityType`)) {
        stopifnot(R6::is.R6(`entityType`))
        self$`entityType` <- `entityType`
      }
      if (!missing(`src`)) {
        stopifnot(is.list(`src`), length(`src`) != 0)
        lapply(`src`, function(x) stopifnot(is.character(x)))
        self$`src` <- `src`
      }
      if (!missing(`dst`)) {
        stopifnot(is.list(`dst`), length(`dst`) != 0)
        lapply(`dst`, function(x) stopifnot(is.character(x)))
        self$`dst` <- `dst`
      }
      if (!missing(`bidirectional`)) {
        self$`bidirectional` <- `bidirectional`
      }
    },
    toJSON = function() {
      AssociationTypeObject <- list()
      if (!is.null(self$`entityType`)) {
        AssociationTypeObject[['entityType']] <- self$`entityType`$toJSON()
      }
      if (!is.null(self$`src`)) {
        AssociationTypeObject[['src']] <- self$`src`
      }
      if (!is.null(self$`dst`)) {
        AssociationTypeObject[['dst']] <- self$`dst`
      }
      if (!is.null(self$`bidirectional`)) {
        AssociationTypeObject[['bidirectional']] <- self$`bidirectional`
      }

      AssociationTypeObject
    },
    fromJSON = function(AssociationTypeJson) {
      AssociationTypeObject <- jsonlite::fromJSON(AssociationTypeJson)
      if (!is.null(AssociationTypeObject$`entityType`)) {
        entityTypeObject <- EntityType$new()
        entityTypeObject$fromJSON(jsonlite::toJSON(AssociationTypeObject$entityType, auto_unbox = TRUE))
        self$`entityType` <- entityTypeObject
      }
      if (!is.null(AssociationTypeObject$`src`)) {
        self$`src` <- AssociationTypeObject$`src`
      }
      if (!is.null(AssociationTypeObject$`dst`)) {
        self$`dst` <- AssociationTypeObject$`dst`
      }
      if (!is.null(AssociationTypeObject$`bidirectional`)) {
        self$`bidirectional` <- AssociationTypeObject$`bidirectional`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "entityType": %s,
           "src": [%s],
           "dst": [%s],
           "bidirectional": %s
        }',
        self$`entityType`$toJSON(),
        lapply(self$`src`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`dst`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`bidirectional`
      )
    },
    fromJSONString = function(AssociationTypeJson) {
      AssociationTypeObject <- jsonlite::fromJSON(AssociationTypeJson)
      EntityTypeObject <- EntityType$new()
      self$`entityType` <- EntityTypeObject$fromJSON(jsonlite::toJSON(AssociationTypeObject$entityType, auto_unbox = TRUE))
      self$`src` <- AssociationTypeObject$`src`
      self$`dst` <- AssociationTypeObject$`dst`
      self$`bidirectional` <- AssociationTypeObject$`bidirectional`
    }
  )
)
