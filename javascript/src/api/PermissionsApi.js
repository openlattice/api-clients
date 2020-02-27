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
import Acl from '../model/Acl';
import AclData from '../model/AclData';

/**
* Permissions service.
* @module api/PermissionsApi
* @version 0.0.1
*/
export default class PermissionsApi {

    /**
    * Constructs a new PermissionsApi. 
    * @alias module:api/PermissionsApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getAcl operation.
     * @callback module:api/PermissionsApi~getAclCallback
     * @param {String} error Error message, if any.
     * @param {module:model/Acl} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Get the ACL for the given ACL Key, only if the user is the owner of the ACL Key.
     * @param {Array.<String>} requestBody 
     * @param {module:api/PermissionsApi~getAclCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/Acl}
     */
    getAcl(requestBody, callback) {
      let postBody = requestBody;
      // verify the required parameter 'requestBody' is set
      if (requestBody === undefined || requestBody === null) {
        throw new Error("Missing the required parameter 'requestBody' when calling getAcl");
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
      let returnType = Acl;
      return this.apiClient.callApi(
        '/datastore/permissions', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the updateAcl operation.
     * @callback module:api/PermissionsApi~updateAclCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Updates the ACL for a particular ACL Key, only if the user is the owner of the ACL Key.
     * @param {module:model/AclData} aclData 
     * @param {module:api/PermissionsApi~updateAclCallback} callback The callback function, accepting three arguments: error, data, response
     */
    updateAcl(aclData, callback) {
      let postBody = aclData;
      // verify the required parameter 'aclData' is set
      if (aclData === undefined || aclData === null) {
        throw new Error("Missing the required parameter 'aclData' when calling updateAcl");
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
      let accepts = [];
      let returnType = null;
      return this.apiClient.callApi(
        '/datastore/permissions', 'PATCH',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
