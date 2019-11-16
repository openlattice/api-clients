# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' SearchDetails Class
#'
#' @field searchTerm 
#' @field property 
#' @field exact 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SearchDetails <- R6::R6Class(
  'SearchDetails',
  public = list(
    `searchTerm` = NULL,
    `property` = NULL,
    `exact` = NULL,
    initialize = function(`searchTerm`, `property`, `exact`){
      if (!missing(`searchTerm`)) {
                stopifnot(is.character(`searchTerm`), length(`searchTerm`) == 1)
        self$`searchTerm` <- `searchTerm`
      }
      if (!missing(`property`)) {
                stopifnot(is.character(`property`), length(`property`) == 1)
        self$`property` <- `property`
      }
      if (!missing(`exact`)) {
        self$`exact` <- `exact`
      }
    },
    toJSON = function() {
      SearchDetailsObject <- list()
      if (!is.null(self$`searchTerm`)) {
        SearchDetailsObject[['searchTerm']] <-
                self$`searchTerm`
      }
      if (!is.null(self$`property`)) {
        SearchDetailsObject[['property']] <-
                self$`property`
      }
      if (!is.null(self$`exact`)) {
        SearchDetailsObject[['exact']] <-
                self$`exact`
      }

      SearchDetailsObject
    },
    fromJSON = function(SearchDetailsJson) {
      SearchDetailsObject <- jsonlite::fromJSON(SearchDetailsJson)
      if (!is.null(SearchDetailsObject$`searchTerm`)) {
                self$`searchTerm` <- SearchDetailsObject$`searchTerm`
      }
      if (!is.null(SearchDetailsObject$`property`)) {
                self$`property` <- SearchDetailsObject$`property`
      }
      if (!is.null(SearchDetailsObject$`exact`)) {
                self$`exact` <- SearchDetailsObject$`exact`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "searchTerm":
                      
                      "%s"
                  
              ,
           "property":
                      
                      "%s"
                  
              ,
           "exact":
                      
                      "%s"
                  
              
        }',
                self$`searchTerm`,
                self$`property`,
                self$`exact`
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(SearchDetailsJson) {
      SearchDetailsObject <- jsonlite::fromJSON(SearchDetailsJson)
              self$`searchTerm` <- SearchDetailsObject$`searchTerm`
              self$`property` <- SearchDetailsObject$`property`
              self$`exact` <- SearchDetailsObject$`exact`
    }
  )
)