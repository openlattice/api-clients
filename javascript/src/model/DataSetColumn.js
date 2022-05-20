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

import ApiClient from '../ApiClient';
import SecurableObjectMetadataUpdate from './SecurableObjectMetadataUpdate';

/**
 * The DataSetColumn model module.
 * @module model/DataSetColumn
 * @version 0.0.1
 */
class DataSetColumn {
    /**
     * Constructs a new <code>DataSetColumn</code>.
     * @alias module:model/DataSetColumn
     */
    constructor() { 
        
        DataSetColumn.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DataSetColumn</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DataSetColumn} obj Optional instance to populate.
     * @return {module:model/DataSetColumn} The populated <code>DataSetColumn</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DataSetColumn();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('dataSetId')) {
                obj['dataSetId'] = ApiClient.convertToType(data['dataSetId'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('organizationId')) {
                obj['organizationId'] = ApiClient.convertToType(data['organizationId'], 'String');
            }
            if (data.hasOwnProperty('dataType')) {
                obj['dataType'] = ApiClient.convertToType(data['dataType'], 'String');
            }
            if (data.hasOwnProperty('metadata')) {
                obj['metadata'] = SecurableObjectMetadataUpdate.constructFromObject(data['metadata']);
            }
            if (data.hasOwnProperty('aclKey')) {
                obj['aclKey'] = ApiClient.convertToType(data['aclKey'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} id
 */
DataSetColumn.prototype['id'] = undefined;

/**
 * @member {String} dataSetId
 */
DataSetColumn.prototype['dataSetId'] = undefined;

/**
 * @member {String} name
 */
DataSetColumn.prototype['name'] = undefined;

/**
 * @member {String} organizationId
 */
DataSetColumn.prototype['organizationId'] = undefined;

/**
 * @member {String} dataType
 */
DataSetColumn.prototype['dataType'] = undefined;

/**
 * @member {module:model/SecurableObjectMetadataUpdate} metadata
 */
DataSetColumn.prototype['metadata'] = undefined;

/**
 * @member {Array.<String>} aclKey
 */
DataSetColumn.prototype['aclKey'] = undefined;






export default DataSetColumn;
