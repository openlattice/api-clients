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
import EntityDataKey from '../model/EntityDataKey';
import EntityKeyPair from '../model/EntityKeyPair';
import EntityLinkingFeatures from '../model/EntityLinkingFeatures';
import EntityLinkingFeedback from '../model/EntityLinkingFeedback';
import LinkingFeedback from '../model/LinkingFeedback';

/**
* Linking service.
* @module api/LinkingApi
* @version 0.0.1
*/
export default class LinkingApi {

    /**
    * Constructs a new LinkingApi. 
    * @alias module:api/LinkingApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the addLinkingFeedback operation.
     * @callback module:api/LinkingApi~addLinkingFeedbackCallback
     * @param {String} error Error message, if any.
     * @param {Number} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Submits feedbacks for a given linking entity set and linking id in a batch format.
     * @param {module:model/LinkingFeedback} linkingFeedback 
     * @param {module:api/LinkingApi~addLinkingFeedbackCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Number}
     */
    addLinkingFeedback(linkingFeedback, callback) {
      let postBody = linkingFeedback;
      // verify the required parameter 'linkingFeedback' is set
      if (linkingFeedback === undefined || linkingFeedback === null) {
        throw new Error("Missing the required parameter 'linkingFeedback' when calling addLinkingFeedback");
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
      let returnType = 'Number';
      return this.apiClient.callApi(
        '/linker/linkingfeedback', 'PUT',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the deleteLinkingFeedback operation.
     * @callback module:api/LinkingApi~deleteLinkingFeedbackCallback
     * @param {String} error Error message, if any.
     * @param {Number} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Deletes linking feedback
     * @param {module:model/EntityKeyPair} entityKeyPair 
     * @param {module:api/LinkingApi~deleteLinkingFeedbackCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Number}
     */
    deleteLinkingFeedback(entityKeyPair, callback) {
      let postBody = entityKeyPair;
      // verify the required parameter 'entityKeyPair' is set
      if (entityKeyPair === undefined || entityKeyPair === null) {
        throw new Error("Missing the required parameter 'entityKeyPair' when calling deleteLinkingFeedback");
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
      let returnType = 'Number';
      return this.apiClient.callApi(
        '/linker/linkingfeedback', 'DELETE',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getAllLinkingFeedback operation.
     * @callback module:api/LinkingApi~getAllLinkingFeedbackCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/EntityLinkingFeedback>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Returns all feedback submitted
     * @param {module:api/LinkingApi~getAllLinkingFeedbackCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/EntityLinkingFeedback>}
     */
    getAllLinkingFeedback(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['http_auth', 'openlattice_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = [EntityLinkingFeedback];
      return this.apiClient.callApi(
        '/linker/linkingfeedback/all', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getAllLinkingFeedbackWithFeatures operation.
     * @callback module:api/LinkingApi~getAllLinkingFeedbackWithFeaturesCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/EntityLinkingFeatures>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Returns all feedback submitted walong with the features of pairwise entities
     * @param {module:api/LinkingApi~getAllLinkingFeedbackWithFeaturesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/EntityLinkingFeatures>}
     */
    getAllLinkingFeedbackWithFeatures(callback) {
      let postBody = null;

      let pathParams = {
      };
      let queryParams = {
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['openlattice_auth'];
      let contentTypes = [];
      let accepts = ['application/json'];
      let returnType = [EntityLinkingFeatures];
      return this.apiClient.callApi(
        '/linker/linkingfeedback/features/all', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getLinkingFeedbackWithFeatures operation.
     * @callback module:api/LinkingApi~getLinkingFeedbackWithFeaturesCallback
     * @param {String} error Error message, if any.
     * @param {module:model/EntityLinkingFeatures} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Returns the feedback on the given entity pair along with their features
     * @param {module:model/EntityKeyPair} entityKeyPair 
     * @param {module:api/LinkingApi~getLinkingFeedbackWithFeaturesCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/EntityLinkingFeatures}
     */
    getLinkingFeedbackWithFeatures(entityKeyPair, callback) {
      let postBody = entityKeyPair;
      // verify the required parameter 'entityKeyPair' is set
      if (entityKeyPair === undefined || entityKeyPair === null) {
        throw new Error("Missing the required parameter 'entityKeyPair' when calling getLinkingFeedbackWithFeatures");
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
      let returnType = EntityLinkingFeatures;
      return this.apiClient.callApi(
        '/linker/linkingfeedback/features', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getLinkingFeedbacksOnEntity operation.
     * @callback module:api/LinkingApi~getLinkingFeedbacksOnEntityCallback
     * @param {String} error Error message, if any.
     * @param {Array.<module:model/EntityLinkingFeedback>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Returns positive/negative/all linking feedbacks on the given entity.
     * @param {module:model/String} feedbackType 
     * @param {module:model/EntityDataKey} entityDataKey 
     * @param {module:api/LinkingApi~getLinkingFeedbacksOnEntityCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Array.<module:model/EntityLinkingFeedback>}
     */
    getLinkingFeedbacksOnEntity(feedbackType, entityDataKey, callback) {
      let postBody = entityDataKey;
      // verify the required parameter 'feedbackType' is set
      if (feedbackType === undefined || feedbackType === null) {
        throw new Error("Missing the required parameter 'feedbackType' when calling getLinkingFeedbacksOnEntity");
      }
      // verify the required parameter 'entityDataKey' is set
      if (entityDataKey === undefined || entityDataKey === null) {
        throw new Error("Missing the required parameter 'entityDataKey' when calling getLinkingFeedbacksOnEntity");
      }

      let pathParams = {
      };
      let queryParams = {
        'feedbackType': feedbackType
      };
      let headerParams = {
      };
      let formParams = {
      };

      let authNames = ['http_auth', 'openlattice_auth'];
      let contentTypes = ['application/json'];
      let accepts = ['application/json'];
      let returnType = [EntityLinkingFeedback];
      return this.apiClient.callApi(
        '/linker/linkingfeedback/entity', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}
