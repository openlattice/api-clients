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
 * The DataSet model module.
 * @module model/DataSet
 * @version 0.0.1
 */
class DataSet {
    /**
     * Constructs a new <code>DataSet</code>.
     * @alias module:model/DataSet
     */
    constructor() { 
        
        DataSet.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DataSet</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DataSet} obj Optional instance to populate.
     * @return {module:model/DataSet} The populated <code>DataSet</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DataSet();

            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('organizationId')) {
                obj['organizationId'] = ApiClient.convertToType(data['organizationId'], 'String');
            }
            if (data.hasOwnProperty('externalId')) {
                obj['externalId'] = ApiClient.convertToType(data['externalId'], 'String');
            }
            if (data.hasOwnProperty('dataSetType')) {
                obj['dataSetType'] = ApiClient.convertToType(data['dataSetType'], 'String');
            }
            if (data.hasOwnProperty('metadata')) {
                obj['metadata'] = SecurableObjectMetadataUpdate.constructFromObject(data['metadata']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} id
 */
DataSet.prototype['id'] = undefined;

/**
 * @member {String} name
 */
DataSet.prototype['name'] = undefined;

/**
 * @member {String} organizationId
 */
DataSet.prototype['organizationId'] = undefined;

/**
 * @member {String} externalId
 */
DataSet.prototype['externalId'] = undefined;

/**
 * @member {module:model/DataSet.DataSetTypeEnum} dataSetType
 */
DataSet.prototype['dataSetType'] = undefined;

/**
 * @member {module:model/SecurableObjectMetadataUpdate} metadata
 */
DataSet.prototype['metadata'] = undefined;





/**
 * Allowed values for the <code>dataSetType</code> property.
 * @enum {String}
 * @readonly
 */
DataSet['DataSetTypeEnum'] = {

    /**
     * value: "EntitySet"
     * @const
     */
    "EntitySet": "EntitySet",

    /**
     * value: "ExternalTable"
     * @const
     */
    "ExternalTable": "ExternalTable"
};



export default DataSet;

