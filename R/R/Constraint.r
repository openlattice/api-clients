# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' Constraint Class
#'
#' @field type 
#' @field searchTerm 
#' @field fuzzy 
#' @field searchFields 
#' @field propertyTypeId 
#' @field latitude 
#' @field longitude 
#' @field radius 
#' @field unit 
#' @field zones 
#' @field start 
#' @field end 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Constraint <- R6::R6Class(
  'Constraint',
  public = list(
    `type` = NULL,
    `searchTerm` = NULL,
    `fuzzy` = NULL,
    `searchFields` = NULL,
    `propertyTypeId` = NULL,
    `latitude` = NULL,
    `longitude` = NULL,
    `radius` = NULL,
    `unit` = NULL,
    `zones` = NULL,
    `start` = NULL,
    `end` = NULL,
    initialize = function(`type`, `searchTerm`, `fuzzy`, `searchFields`, `propertyTypeId`, `latitude`, `longitude`, `radius`, `unit`, `zones`, `start`, `end`){
      if (!missing(`type`)) {
                stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`searchTerm`)) {
                stopifnot(is.character(`searchTerm`), length(`searchTerm`) == 1)
        self$`searchTerm` <- `searchTerm`
      }
      if (!missing(`fuzzy`)) {
        self$`fuzzy` <- `fuzzy`
      }
      if (!missing(`searchFields`)) {
                stopifnot(is.vector(`searchFields`), length(`searchFields`) != 0)
                sapply(`searchFields`, function(x) stopifnot(R6::is.R6(x)))
        self$`searchFields` <- `searchFields`
      }
      if (!missing(`propertyTypeId`)) {
                stopifnot(is.character(`propertyTypeId`), length(`propertyTypeId`) == 1)
        self$`propertyTypeId` <- `propertyTypeId`
      }
      if (!missing(`latitude`)) {
                stopifnot(is.numeric(`latitude`), length(`latitude`) == 1)
        self$`latitude` <- `latitude`
      }
      if (!missing(`longitude`)) {
                stopifnot(is.numeric(`longitude`), length(`longitude`) == 1)
        self$`longitude` <- `longitude`
      }
      if (!missing(`radius`)) {
                stopifnot(is.numeric(`radius`), length(`radius`) == 1)
        self$`radius` <- `radius`
      }
      if (!missing(`unit`)) {
                stopifnot(is.character(`unit`), length(`unit`) == 1)
        self$`unit` <- `unit`
      }
      if (!missing(`zones`)) {
                stopifnot(is.vector(`zones`), length(`zones`) != 0)
                sapply(`zones`, function(x) stopifnot(R6::is.R6(x)))
        self$`zones` <- `zones`
      }
      if (!missing(`start`)) {
                stopifnot(is.character(`start`), length(`start`) == 1)
        self$`start` <- `start`
      }
      if (!missing(`end`)) {
                stopifnot(is.character(`end`), length(`end`) == 1)
        self$`end` <- `end`
      }
    },
    toJSON = function() {
      ConstraintObject <- list()
      if (!is.null(self$`type`)) {
        ConstraintObject[['type']] <-
                self$`type`
      }
      if (!is.null(self$`searchTerm`)) {
        ConstraintObject[['searchTerm']] <-
                self$`searchTerm`
      }
      if (!is.null(self$`fuzzy`)) {
        ConstraintObject[['fuzzy']] <-
                self$`fuzzy`
      }
      if (!is.null(self$`searchFields`)) {
        ConstraintObject[['searchFields']] <-
                sapply(self$`searchFields`, function(x) x$toJSON())
      }
      if (!is.null(self$`propertyTypeId`)) {
        ConstraintObject[['propertyTypeId']] <-
                self$`propertyTypeId`
      }
      if (!is.null(self$`latitude`)) {
        ConstraintObject[['latitude']] <-
                self$`latitude`
      }
      if (!is.null(self$`longitude`)) {
        ConstraintObject[['longitude']] <-
                self$`longitude`
      }
      if (!is.null(self$`radius`)) {
        ConstraintObject[['radius']] <-
                self$`radius`
      }
      if (!is.null(self$`unit`)) {
        ConstraintObject[['unit']] <-
                self$`unit`
      }
      if (!is.null(self$`zones`)) {
        ConstraintObject[['zones']] <-
                sapply(self$`zones`, function(x) x$toJSON())
      }
      if (!is.null(self$`start`)) {
        ConstraintObject[['start']] <-
                self$`start`
      }
      if (!is.null(self$`end`)) {
        ConstraintObject[['end']] <-
                self$`end`
      }

      ConstraintObject
    },
    fromJSON = function(ConstraintJson) {
      ConstraintObject <- jsonlite::fromJSON(ConstraintJson)
      if (!is.null(ConstraintObject$`type`)) {
                self$`type` <- ConstraintObject$`type`
      }
      if (!is.null(ConstraintObject$`searchTerm`)) {
                self$`searchTerm` <- ConstraintObject$`searchTerm`
      }
      if (!is.null(ConstraintObject$`fuzzy`)) {
                self$`fuzzy` <- ConstraintObject$`fuzzy`
      }
      if (!is.null(ConstraintObject$`searchFields`)) {
                self$`searchFields` <- sapply(ConstraintObject$`searchFields`, function(x) {
                  searchFieldsObject <- SearchDetails$new()
                  searchFieldsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
                  searchFieldsObject
            })
      }
      if (!is.null(ConstraintObject$`propertyTypeId`)) {
                self$`propertyTypeId` <- ConstraintObject$`propertyTypeId`
      }
      if (!is.null(ConstraintObject$`latitude`)) {
                self$`latitude` <- ConstraintObject$`latitude`
      }
      if (!is.null(ConstraintObject$`longitude`)) {
                self$`longitude` <- ConstraintObject$`longitude`
      }
      if (!is.null(ConstraintObject$`radius`)) {
                self$`radius` <- ConstraintObject$`radius`
      }
      if (!is.null(ConstraintObject$`unit`)) {
                self$`unit` <- ConstraintObject$`unit`
      }
      if (!is.null(ConstraintObject$`zones`)) {
                self$`zones` <- sapply(ConstraintObject$`zones`, function(x) {
                  zonesObject <- numeric$new()
                  zonesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
                  zonesObject
            })
      }
      if (!is.null(ConstraintObject$`start`)) {
                self$`start` <- ConstraintObject$`start`
      }
      if (!is.null(ConstraintObject$`end`)) {
                self$`end` <- ConstraintObject$`end`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "type":
                      
                      "%s"
                  
              ,
           "searchTerm":
                      
                      "%s"
                  
              ,
           "fuzzy":
                      
                      "%s"
                  
              ,
           "searchFields":
                  ["%s"]
              ,
           "propertyTypeId":
                      
                      "%s"
                  
              ,
           "latitude":
                      %d
                      
                  
              ,
           "longitude":
                      %d
                      
                  
              ,
           "radius":
                      %d
                      
                  
              ,
           "unit":
                      
                      "%s"
                  
              ,
           "zones":
                  ["%s"]
              ,
           "start":
                      
                      "%s"
                  
              ,
           "end":
                      
                      "%s"
                  
              
        }',
                self$`type`,
                self$`searchTerm`,
                self$`fuzzy`,
                paste0(sapply(self$`searchFields`, function(x) x$toJSON()), collapse='","'),
                self$`propertyTypeId`,
                self$`latitude`,
                self$`longitude`,
                self$`radius`,
                self$`unit`,
                paste0(sapply(self$`zones`, function(x) x$toJSON()), collapse='","'),
                self$`start`,
                self$`end`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(ConstraintJson) {
      ConstraintObject <- jsonlite::fromJSON(ConstraintJson)
              self$`type` <- ConstraintObject$`type`
              self$`searchTerm` <- ConstraintObject$`searchTerm`
              self$`fuzzy` <- ConstraintObject$`fuzzy`
              self$`searchFields` <- sapply(ConstraintObject$`searchFields`, function(x) SearchDetails$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
              self$`propertyTypeId` <- ConstraintObject$`propertyTypeId`
              self$`latitude` <- ConstraintObject$`latitude`
              self$`longitude` <- ConstraintObject$`longitude`
              self$`radius` <- ConstraintObject$`radius`
              self$`unit` <- ConstraintObject$`unit`
              self$`zones` <- sapply(ConstraintObject$`zones`, function(x) numeric$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
              self$`start` <- ConstraintObject$`start`
              self$`end` <- ConstraintObject$`end`
    }
  )
)