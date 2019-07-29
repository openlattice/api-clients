# OpenLattice API
#
# OpenLattice API
#
# OpenAPI spec version: 0.0.1
# Contact: support@openlattice.com
# Generated by: https://openapi-generator.tech

#' @title Organizations operations
#' @description openlattice.Organizations
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' add_member Add member to an organization
#'
#'
#' add_role_to_user Add a role to a user
#'
#'
#' assemble_entity_sets Materializes entity sets into the organization database.
#'
#'
#' create_organization_if_not_exists Create an organization if it doesn&#39;t exist.
#'
#'
#' create_role Create role
#'
#'
#' delete_role Remove role for an organization
#'
#'
#' destroy_organization Remove an organization from the organizationId
#'
#'
#' get_all_users_of_role Get members of a role for an organization from a roleId
#'
#'
#' get_auto_approved_email_domains Get auto-approved email domains
#'
#'
#' get_flagged_organization_entity_sets Get the entity sets for an organization for a certain flag
#'
#'
#' get_members Get members of a certain organization
#'
#'
#' get_organization Get an organization from the organizationId
#'
#'
#' get_organization_entity_sets Get the entity sets for an organization for a certain filter
#'
#'
#' get_organizations Get all organizations
#'
#'
#' get_role Get role for an organization from a roleId
#'
#'
#' get_roles Get roles for an organization
#'
#'
#' remove_auto_approved_email_domains Remove auto-approved email domains
#'
#'
#' remove_member Remove member from an organization
#'
#'
#' remove_role_from_user Remove a role from a user
#'
#'
#' set_auto_approved_email_domain Set auto-approved email domains
#'
#'
#' update_description Update the organization description
#'
#'
#' update_role_description Update role description for an organization from a roleId
#'
#'
#' update_role_title Update role title for an organization from a roleId
#'
#'
#' update_title Update the organization title
#'
#' }
#'
#' @export
OrganizationsApi <- R6::R6Class(
  'OrganizationsApi',
  public = list(
    userAgent = "OpenAPI-Generator/0.1.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    add_member = function(organization_id, user_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/members/{userId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`user_id`)) {
        urlPath <- gsub(paste0("\\{", "userId", "\\}"), `user_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    add_role_to_user = function(organization_id, role_id, user_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`role_id`)) {
        urlPath <- gsub(paste0("\\{", "roleId", "\\}"), `role_id`, urlPath)
      }

      if (!missing(`user_id`)) {
        urlPath <- gsub(paste0("\\{", "userId", "\\}"), `user_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    assemble_entity_sets = function(organization_id, request_body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`request_body`)) {
        body <- `request_body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/entity-sets/assemble"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    create_organization_if_not_exists = function(organization, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`organization`)) {
        body <- `organization`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    create_role = function(role, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`role`)) {
        body <- `role`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/roles"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    delete_role = function(organization_id, role_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles/{roleId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`role_id`)) {
        urlPath <- gsub(paste0("\\{", "roleId", "\\}"), `role_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    destroy_organization = function(organization_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_all_users_of_role = function(organization_id, role_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles/{roleId}/members/"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`role_id`)) {
        urlPath <- gsub(paste0("\\{", "roleId", "\\}"), `role_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_auto_approved_email_domains = function(organization_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/email-domains"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_flagged_organization_entity_sets = function(organization_id, request_body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`request_body`)) {
        body <- `request_body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/entity-sets"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_members = function(organization_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/members"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_organization = function(organization_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_organization_entity_sets = function(organization_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/entity-sets"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_organizations = function(...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_role = function(organization_id, role_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles/{roleId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`role_id`)) {
        urlPath <- gsub(paste0("\\{", "roleId", "\\}"), `role_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_roles = function(organization_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
                jsonlite::fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    remove_auto_approved_email_domains = function(organization_id, request_body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`request_body`)) {
        body <- `request_body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/email-domains"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    remove_member = function(organization_id, user_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/members/{userId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`user_id`)) {
        urlPath <- gsub(paste0("\\{", "userId", "\\}"), `user_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    remove_role_from_user = function(organization_id, role_id, user_id, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles/{roleId}/members/{userId}"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`role_id`)) {
        urlPath <- gsub(paste0("\\{", "roleId", "\\}"), `role_id`, urlPath)
      }

      if (!missing(`user_id`)) {
        urlPath <- gsub(paste0("\\{", "userId", "\\}"), `user_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "DELETE",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    set_auto_approved_email_domain = function(organization_id, request_body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`request_body`)) {
        body <- `request_body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/email-domains"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_description = function(organization_id, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/description"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_role_description = function(organization_id, role_id, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles/{roleId}/description"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`role_id`)) {
        urlPath <- gsub(paste0("\\{", "roleId", "\\}"), `role_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "POST",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_role_title = function(organization_id, role_id, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/principals/roles/{roleId}/title"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      if (!missing(`role_id`)) {
        urlPath <- gsub(paste0("\\{", "roleId", "\\}"), `role_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    update_title = function(organization_id, body, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`body`)) {
        body <- `body`$toJSONString()
      } else {
        body <- NULL
      }

      urlPath <- "/datastore/organizations/{organizationId}/title"
      if (!missing(`organization_id`)) {
        urlPath <- gsub(paste0("\\{", "organizationId", "\\}"), `organization_id`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "PUT",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
            # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
