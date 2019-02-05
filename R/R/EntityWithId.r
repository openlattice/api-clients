# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' EntityWithId Class
#'
#' @field openlattice.@id 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EntityWithId <- R6::R6Class(
  'EntityWithId',
  public = list(
    `openlattice.@id` = NULL,
    initialize = function(`openlattice.@id`){
      if (!missing(`openlattice.@id`)) {
        stopifnot(is.character(`openlattice.@id`), length(`openlattice.@id`) == 1)
        self$`openlattice.@id` <- `openlattice.@id`
      }
    },
    toJSON = function() {
      EntityWithIdObject <- list()
      if (!is.null(self$`openlattice.@id`)) {
        EntityWithIdObject[['openlattice.@id']] <- self$`openlattice.@id`
      }

      EntityWithIdObject
    },
    fromJSON = function(EntityWithIdJson) {
      EntityWithIdObject <- jsonlite::fromJSON(EntityWithIdJson)
      if (!is.null(EntityWithIdObject$`openlattice.@id`)) {
        self$`openlattice.@id` <- EntityWithIdObject$`openlattice.@id`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "openlattice.@id": %s
        }',
        self$`openlattice.@id`
      )
    },
    fromJSONString = function(EntityWithIdJson) {
      EntityWithIdObject <- jsonlite::fromJSON(EntityWithIdJson)
      self$`openlattice.@id` <- EntityWithIdObject$`openlattice.@id`
    }
  )
)
