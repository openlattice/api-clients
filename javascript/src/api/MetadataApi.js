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
import DataMetadata from '../model/DataMetadata';
import DataSetColumnMetadata from '../model/DataSetColumnMetadata';
import DataSetMetadata from '../model/DataSetMetadata';

/**
* Metadata service.
* @module api/MetadataApi
* @version 0.0.1
*/
export default class MetadataApi {

    /**
    * Constructs a new MetadataApi. 
    * @alias module:api/MetadataApi
    * @class
    * @param {module:ApiClient} [apiClient] Optional API client implementation to use,
    * default to {@link module:ApiClient#instance} if unspecified.
    */
    constructor(apiClient) {
        this.apiClient = apiClient || ApiClient.instance;
    }


    /**
     * Callback function to receive the result of the getDataSetColumnMetadata operation.
     * @callback module:api/MetadataApi~getDataSetColumnMetadataCallback
     * @param {String} error Error message, if any.
     * @param {module:model/DataSetColumnMetadata} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Gets the dataset column metadata objects using data ID and column ID
     * @param {String} dataId 
     * @param {String} columnId 
     * @param {module:api/MetadataApi~getDataSetColumnMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/DataSetColumnMetadata}
     */
    getDataSetColumnMetadata(dataId, columnId, callback) {
      let postBody = null;
      // verify the required parameter 'dataId' is set
      if (dataId === undefined || dataId === null) {
        throw new Error("Missing the required parameter 'dataId' when calling getDataSetColumnMetadata");
      }
      // verify the required parameter 'columnId' is set
      if (columnId === undefined || columnId === null) {
        throw new Error("Missing the required parameter 'columnId' when calling getDataSetColumnMetadata");
      }

      let pathParams = {
        'dataId': dataId,
        'columnId': columnId
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
      let returnType = DataSetColumnMetadata;
      return this.apiClient.callApi(
        '/datastore/metadata/columns/{dataId}/{columnId}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getDataSetColumnsMetadata operation.
     * @callback module:api/MetadataApi~getDataSetColumnsMetadataCallback
     * @param {String} error Error message, if any.
     * @param {Object.<String, {String: [DataSetColumnMetadata]}>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Gets all data set column metadata objects that caller has READ on that belong to given data set ids
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.requestBody 
     * @param {module:api/MetadataApi~getDataSetColumnsMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object.<String, {String: [DataSetColumnMetadata]}>}
     */
    getDataSetColumnsMetadata(opts, callback) {
      opts = opts || {};
      let postBody = opts['requestBody'];

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
      let returnType = {'String': [DataSetColumnMetadata]};
      return this.apiClient.callApi(
        '/datastore/metadata/columns', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getDataSetMetadata operation.
     * @callback module:api/MetadataApi~getDataSetMetadataCallback
     * @param {String} error Error message, if any.
     * @param {module:model/DataSetMetadata} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Gets dataset metadata object with given data set ID
     * @param {String} dataId 
     * @param {module:api/MetadataApi~getDataSetMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link module:model/DataSetMetadata}
     */
    getDataSetMetadata(dataId, callback) {
      let postBody = null;
      // verify the required parameter 'dataId' is set
      if (dataId === undefined || dataId === null) {
        throw new Error("Missing the required parameter 'dataId' when calling getDataSetMetadata");
      }

      let pathParams = {
        'dataId': dataId
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
      let returnType = DataSetMetadata;
      return this.apiClient.callApi(
        '/datastore/metadata/datasets/{dataId}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getDataSetsMetadata operation.
     * @callback module:api/MetadataApi~getDataSetsMetadataCallback
     * @param {String} error Error message, if any.
     * @param {Object.<String, module:model/{String: DataSetMetadata}>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Gets the dataset metadata objects given data set ids the caller has READ permissions on
     * @param {Object} opts Optional parameters
     * @param {Array.<String>} opts.requestBody 
     * @param {module:api/MetadataApi~getDataSetsMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object.<String, module:model/{String: DataSetMetadata}>}
     */
    getDataSetsMetadata(opts, callback) {
      opts = opts || {};
      let postBody = opts['requestBody'];

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
      let returnType = {'String': DataSetMetadata};
      return this.apiClient.callApi(
        '/datastore/metadata/datasets', 'POST',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the getOrganizationDataSetsMetadata operation.
     * @callback module:api/MetadataApi~getOrganizationDataSetsMetadataCallback
     * @param {String} error Error message, if any.
     * @param {Object.<String, module:model/{String: DataSetMetadata}>} data The data returned by the service call.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Gets all data set column metadata objects that caller has READ on that belong to given data set ids
     * @param {String} organizationId 
     * @param {module:api/MetadataApi~getOrganizationDataSetsMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     * data is of type: {@link Object.<String, module:model/{String: DataSetMetadata}>}
     */
    getOrganizationDataSetsMetadata(organizationId, callback) {
      let postBody = null;
      // verify the required parameter 'organizationId' is set
      if (organizationId === undefined || organizationId === null) {
        throw new Error("Missing the required parameter 'organizationId' when calling getOrganizationDataSetsMetadata");
      }

      let pathParams = {
        'organizationId': organizationId
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
      let returnType = {'String': DataSetMetadata};
      return this.apiClient.callApi(
        '/datastore/metadata/datasets/organizations/{organizationId}', 'GET',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the updateDataSetColumnMetadata operation.
     * @callback module:api/MetadataApi~updateDataSetColumnMetadataCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
     * @param {String} dataId 
     * @param {String} columnId 
     * @param {Object} opts Optional parameters
     * @param {module:model/DataMetadata} opts.dataMetadata 
     * @param {module:api/MetadataApi~updateDataSetColumnMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     */
    updateDataSetColumnMetadata(dataId, columnId, opts, callback) {
      opts = opts || {};
      let postBody = opts['dataMetadata'];
      // verify the required parameter 'dataId' is set
      if (dataId === undefined || dataId === null) {
        throw new Error("Missing the required parameter 'dataId' when calling updateDataSetColumnMetadata");
      }
      // verify the required parameter 'columnId' is set
      if (columnId === undefined || columnId === null) {
        throw new Error("Missing the required parameter 'columnId' when calling updateDataSetColumnMetadata");
      }

      let pathParams = {
        'dataId': dataId,
        'columnId': columnId
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
        '/datastore/metadata/update/{dataId}/{columnId}', 'PATCH',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }

    /**
     * Callback function to receive the result of the updateDataSetMetadata operation.
     * @callback module:api/MetadataApi~updateDataSetMetadataCallback
     * @param {String} error Error message, if any.
     * @param data This operation does not return a value.
     * @param {String} response The complete HTTP response.
     */

    /**
     * Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
     * @param {String} dataId 
     * @param {Object} opts Optional parameters
     * @param {module:model/DataMetadata} opts.dataMetadata 
     * @param {module:api/MetadataApi~updateDataSetMetadataCallback} callback The callback function, accepting three arguments: error, data, response
     */
    updateDataSetMetadata(dataId, opts, callback) {
      opts = opts || {};
      let postBody = opts['dataMetadata'];
      // verify the required parameter 'dataId' is set
      if (dataId === undefined || dataId === null) {
        throw new Error("Missing the required parameter 'dataId' when calling updateDataSetMetadata");
      }

      let pathParams = {
        'dataId': dataId
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
        '/datastore/metadata/update/{dataId}', 'PATCH',
        pathParams, queryParams, headerParams, formParams, postBody,
        authNames, contentTypes, accepts, returnType, null, callback
      );
    }


}