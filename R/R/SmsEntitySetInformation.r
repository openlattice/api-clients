# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech


#' SmsEntitySetInformation Class
#'
#' @field phoneNumber 
#' @field organizationId 
#' @field entitysetIds 
#' @field tags 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SmsEntitySetInformation <- R6::R6Class(
  'SmsEntitySetInformation',
  public = list(
    `phoneNumber` = NULL,
    `organizationId` = NULL,
    `entitysetIds` = NULL,
    `tags` = NULL,
    initialize = function(`phoneNumber`, `organizationId`, `entitysetIds`, `tags`){
      if (!missing(`phoneNumber`)) {
                stopifnot(is.character(`phoneNumber`), length(`phoneNumber`) == 1)
        self$`phoneNumber` <- `phoneNumber`
      }
      if (!missing(`organizationId`)) {
                stopifnot(is.character(`organizationId`), length(`organizationId`) == 1)
        self$`organizationId` <- `organizationId`
      }
      if (!missing(`entitysetIds`)) {
                stopifnot(is.vector(`entitysetIds`), length(`entitysetIds`) != 0)
                sapply(`entitysetIds`, function(x) stopifnot(is.character(x)))
        self$`entitysetIds` <- `entitysetIds`
      }
      if (!missing(`tags`)) {
                stopifnot(is.vector(`tags`), length(`tags`) != 0)
                sapply(`tags`, function(x) stopifnot(is.character(x)))
        self$`tags` <- `tags`
      }
    },
    toJSON = function() {
      SmsEntitySetInformationObject <- list()
      if (!is.null(self$`phoneNumber`)) {
        SmsEntitySetInformationObject[['phoneNumber']] <-
                self$`phoneNumber`
      }
      if (!is.null(self$`organizationId`)) {
        SmsEntitySetInformationObject[['organizationId']] <-
                self$`organizationId`
      }
      if (!is.null(self$`entitysetIds`)) {
        SmsEntitySetInformationObject[['entitysetIds']] <-
                self$`entitysetIds`
      }
      if (!is.null(self$`tags`)) {
        SmsEntitySetInformationObject[['tags']] <-
                self$`tags`
      }

      SmsEntitySetInformationObject
    },
    fromJSON = function(SmsEntitySetInformationJson) {
      SmsEntitySetInformationObject <- jsonlite::fromJSON(SmsEntitySetInformationJson)
      if (!is.null(SmsEntitySetInformationObject$`phoneNumber`)) {
                self$`phoneNumber` <- SmsEntitySetInformationObject$`phoneNumber`
      }
      if (!is.null(SmsEntitySetInformationObject$`organizationId`)) {
                self$`organizationId` <- SmsEntitySetInformationObject$`organizationId`
      }
      if (!is.null(SmsEntitySetInformationObject$`entitysetIds`)) {
                self$`entitysetIds` <- SmsEntitySetInformationObject$`entitysetIds`
      }
      if (!is.null(SmsEntitySetInformationObject$`tags`)) {
                self$`tags` <- SmsEntitySetInformationObject$`tags`
      }
    },
    toJSONString = function() {
       outstring <- sprintf(
        '{
           "phoneNumber":
                      
                      "%s"
                  
              ,
           "organizationId":
                      
                      "%s"
                  
              ,
           "entitysetIds":
                      
                      ["%s"]
                  
              ,
           "tags":
                      
                      ["%s"]
                  
              
        }',
                self$`phoneNumber`,
                self$`organizationId`,
                paste0(self$`entitysetIds`, collapse='","'),
                paste0(self$`tags`, collapse='","')
      )
      gsub("[\r\n]| ", "", outstring)
    },
    fromJSONString = function(SmsEntitySetInformationJson) {
      SmsEntitySetInformationObject <- jsonlite::fromJSON(SmsEntitySetInformationJson)
              self$`phoneNumber` <- SmsEntitySetInformationObject$`phoneNumber`
              self$`organizationId` <- SmsEntitySetInformationObject$`organizationId`
              self$`entitysetIds` <- SmsEntitySetInformationObject$`entitysetIds`
              self$`tags` <- SmsEntitySetInformationObject$`tags`
    }
  )
)
