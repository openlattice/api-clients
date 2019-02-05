# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' EntitySet Class
#'
#' @field name 
#' @field id 
#' @field title 
#' @field contacts 
#' @field entityTypeId 
#' @field description 
#' @field linking 
#' @field linked_entity_sets 
#' @field external 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
EntitySet <- R6::R6Class(
  'EntitySet',
  public = list(
    `name` = NULL,
    `id` = NULL,
    `title` = NULL,
    `contacts` = NULL,
    `entityTypeId` = NULL,
    `description` = NULL,
    `linking` = NULL,
    `linked_entity_sets` = NULL,
    `external` = NULL,
    initialize = function(`name`, `id`, `title`, `contacts`, `entityTypeId`, `description`, `linking`, `linked_entity_sets`, `external`){
      if (!missing(`name`)) {
        stopifnot(is.character(`name`), length(`name`) == 1)
        self$`name` <- `name`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`title`)) {
        stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`contacts`)) {
        stopifnot(is.list(`contacts`), length(`contacts`) != 0)
        lapply(`contacts`, function(x) stopifnot(is.character(x)))
        self$`contacts` <- `contacts`
      }
      if (!missing(`entityTypeId`)) {
        stopifnot(is.character(`entityTypeId`), length(`entityTypeId`) == 1)
        self$`entityTypeId` <- `entityTypeId`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`linking`)) {
        self$`linking` <- `linking`
      }
      if (!missing(`linked_entity_sets`)) {
        stopifnot(is.list(`linked_entity_sets`), length(`linked_entity_sets`) != 0)
        lapply(`linked_entity_sets`, function(x) stopifnot(is.character(x)))
        self$`linked_entity_sets` <- `linked_entity_sets`
      }
      if (!missing(`external`)) {
        self$`external` <- `external`
      }
    },
    toJSON = function() {
      EntitySetObject <- list()
      if (!is.null(self$`name`)) {
        EntitySetObject[['name']] <- self$`name`
      }
      if (!is.null(self$`id`)) {
        EntitySetObject[['id']] <- self$`id`
      }
      if (!is.null(self$`title`)) {
        EntitySetObject[['title']] <- self$`title`
      }
      if (!is.null(self$`contacts`)) {
        EntitySetObject[['contacts']] <- self$`contacts`
      }
      if (!is.null(self$`entityTypeId`)) {
        EntitySetObject[['entityTypeId']] <- self$`entityTypeId`
      }
      if (!is.null(self$`description`)) {
        EntitySetObject[['description']] <- self$`description`
      }
      if (!is.null(self$`linking`)) {
        EntitySetObject[['linking']] <- self$`linking`
      }
      if (!is.null(self$`linked_entity_sets`)) {
        EntitySetObject[['linked_entity_sets']] <- self$`linked_entity_sets`
      }
      if (!is.null(self$`external`)) {
        EntitySetObject[['external']] <- self$`external`
      }

      EntitySetObject
    },
    fromJSON = function(EntitySetJson) {
      EntitySetObject <- jsonlite::fromJSON(EntitySetJson)
      if (!is.null(EntitySetObject$`name`)) {
        self$`name` <- EntitySetObject$`name`
      }
      if (!is.null(EntitySetObject$`id`)) {
        self$`id` <- EntitySetObject$`id`
      }
      if (!is.null(EntitySetObject$`title`)) {
        self$`title` <- EntitySetObject$`title`
      }
      if (!is.null(EntitySetObject$`contacts`)) {
        self$`contacts` <- EntitySetObject$`contacts`
      }
      if (!is.null(EntitySetObject$`entityTypeId`)) {
        self$`entityTypeId` <- EntitySetObject$`entityTypeId`
      }
      if (!is.null(EntitySetObject$`description`)) {
        self$`description` <- EntitySetObject$`description`
      }
      if (!is.null(EntitySetObject$`linking`)) {
        self$`linking` <- EntitySetObject$`linking`
      }
      if (!is.null(EntitySetObject$`linked_entity_sets`)) {
        self$`linked_entity_sets` <- EntitySetObject$`linked_entity_sets`
      }
      if (!is.null(EntitySetObject$`external`)) {
        self$`external` <- EntitySetObject$`external`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "name": %s,
           "id": %s,
           "title": %s,
           "contacts": [%s],
           "entityTypeId": %s,
           "description": %s,
           "linking": %s,
           "linked_entity_sets": [%s],
           "external": %s
        }',
        self$`name`,
        self$`id`,
        self$`title`,
        lapply(self$`contacts`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`entityTypeId`,
        self$`description`,
        self$`linking`,
        lapply(self$`linked_entity_sets`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`external`
      )
    },
    fromJSONString = function(EntitySetJson) {
      EntitySetObject <- jsonlite::fromJSON(EntitySetJson)
      self$`name` <- EntitySetObject$`name`
      self$`id` <- EntitySetObject$`id`
      self$`title` <- EntitySetObject$`title`
      self$`contacts` <- EntitySetObject$`contacts`
      self$`entityTypeId` <- EntitySetObject$`entityTypeId`
      self$`description` <- EntitySetObject$`description`
      self$`linking` <- EntitySetObject$`linking`
      self$`linked_entity_sets` <- EntitySetObject$`linked_entity_sets`
      self$`external` <- EntitySetObject$`external`
    }
  )
)
