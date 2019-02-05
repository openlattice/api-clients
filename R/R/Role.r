# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' Role Class
#'
#' @field id 
#' @field organizationId 
#' @field principal 
#' @field title 
#' @field description 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Role <- R6::R6Class(
  'Role',
  public = list(
    `id` = NULL,
    `organizationId` = NULL,
    `principal` = NULL,
    `title` = NULL,
    `description` = NULL,
    initialize = function(`id`, `organizationId`, `principal`, `title`, `description`){
      if (!missing(`id`)) {
                stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`organizationId`)) {
                stopifnot(is.character(`organizationId`), length(`organizationId`) == 1)
        self$`organizationId` <- `organizationId`
      }
      if (!missing(`principal`)) {
                stopifnot(R6::is.R6(`principal`))
        self$`principal` <- `principal`
      }
      if (!missing(`title`)) {
                stopifnot(is.character(`title`), length(`title`) == 1)
        self$`title` <- `title`
      }
      if (!missing(`description`)) {
                stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
    },
    toJSON = function() {
      RoleObject <- list()
      if (!is.null(self$`id`)) {
        RoleObject[['id']] <-
                self$`id`
      }
      if (!is.null(self$`organizationId`)) {
        RoleObject[['organizationId']] <-
                self$`organizationId`
      }
      if (!is.null(self$`principal`)) {
        RoleObject[['principal']] <-
                self$`principal`$toJSON()
      }
      if (!is.null(self$`title`)) {
        RoleObject[['title']] <-
                self$`title`
      }
      if (!is.null(self$`description`)) {
        RoleObject[['description']] <-
                self$`description`
      }

      RoleObject
    },
    fromJSON = function(RoleJson) {
      RoleObject <- jsonlite::fromJSON(RoleJson)
      if (!is.null(RoleObject$`id`)) {
                self$`id` <- RoleObject$`id`
      }
      if (!is.null(RoleObject$`organizationId`)) {
                self$`organizationId` <- RoleObject$`organizationId`
      }
      if (!is.null(RoleObject$`principal`)) {
                principalObject <- Principal$new()
                principalObject$fromJSON(jsonlite::toJSON(RoleObject$principal, auto_unbox = TRUE))
                self$`principal` <- principalObject
      }
      if (!is.null(RoleObject$`title`)) {
                self$`title` <- RoleObject$`title`
      }
      if (!is.null(RoleObject$`description`)) {
                self$`description` <- RoleObject$`description`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "id":
                      
                      "%s"
                  
              ,
           "organizationId":
                      
                      "%s"
                  
              ,
           "principal":
                  "%s"
              ,
           "title":
                      
                      "%s"
                  
              ,
           "description":
                      
                      "%s"
                  
              
        }',
                self$`id`,
                self$`organizationId`,
                self$`principal`$toJSON(),
                self$`title`,
                self$`description`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(RoleJson) {
      RoleObject <- jsonlite::fromJSON(RoleJson)
              self$`id` <- RoleObject$`id`
              self$`organizationId` <- RoleObject$`organizationId`
              PrincipalObject <- Principal$new()
              self$`principal` <- PrincipalObject$fromJSON(jsonlite::toJSON(RoleObject$principal, auto_unbox = TRUE))
              self$`title` <- RoleObject$`title`
              self$`description` <- RoleObject$`description`
    }
  )
)
