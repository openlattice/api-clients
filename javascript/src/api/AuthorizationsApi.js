/**
 * OpenLattice API
 * OpenLattice API
 *
 * The version of the OpenAPI document: 0.0.1
 * Contact: support@openlattice.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */


import ApiClient from "../ApiClient";
import AccessCheck from '../model/AccessCheck';
import Authorization from '../model/Authorization';
import AuthorizedObjectsSearchResult from '../model/AuthorizedObjectsSearchResult';

/**
* Authorizations service.
* @module api/AuthorizationsApi
* @version 0.0.1
*/
export default class AuthorizationsApi {

    /**
    * Constructs a new AuthorizationsApi. 
    * @alias module:api/AuthorizationsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the checkAuthorizations operation.
     * @callback module:api/AuthorizationsApi~checkAuthorizationsCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/Authorization>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Check authorizations
     * @param {module:model/AccessCheck} accessCheck 
     * @param {module:api/AuthorizationsApi~checkAuthorizationsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/Authorization>}
     */
    checkAuthorizations(accessCheck, callback) {
      let postBody = accessCheck;
      // verify the required parameter 'accessCheck' is set
      if (accessCheck === undefined || accessCheck === null) {
        throw new Error("Missing the required parameter 'accessCheck' when calling checkAuthorizations");
      }

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['http_auth', 'openlattice_auth'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = [Authorization];
      return this.apiClient.callApi(
        '/datastore/authorizations', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getAccessibleObjects operation.
     * @callback module:api/AuthorizationsApi~getAccessibleObjectsCallback
     * @param {String} error Error message, if any.
     * @param {module:model/AuthorizedObjectsSearchResult} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Returns paged results for all authorized objects of specified objectType, that the current user has specified permission for.
     * @param {Object} opts Optional parameters
     * @param {module:model/String} opts.objectType 
     * @param {module:model/String} opts.permission 
     * @param {String} opts.pagingToken 
     * @param {module:api/AuthorizationsApi~getAccessibleObjectsCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/AuthorizedObjectsSearchResult}
     */
    getAccessibleObjects(opts, callback) {
      opts = opts || {};
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
        'objectType': opts['objectType'],
        'permission': opts['permission'],
        'pagingToken': opts['pagingToken']
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['http_auth', 'openlattice_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = AuthorizedObjectsSearchResult;
      return this.apiClient.callApi(
        '/datastore/authorizations', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}