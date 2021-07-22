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
import DataMetadata from './DataMetadata';

/**
 * The DataSetMetadata model module.
 * @module model/DataSetMetadata
 * @version 0.0.1
 */
class DataSetMetadata {
    /**
     * Constructs a new <code>DataSetMetadata</code>.
     * @alias module:model/DataSetMetadata
     */
    constructor() { 
        
        DataSetMetadata.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>DataSetMetadata</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/DataSetMetadata} obj Optional instance to populate.
     * @return {module:model/DataSetMetadata} The populated <code>DataSetMetadata</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new DataSetMetadata();

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
                obj['metadata'] = DataMetadata.constructFromObject(data['metadata']);
            }
        }
        return obj;
    }


}

/**
 * @member {String} id
 */
DataSetMetadata.prototype['id'] = undefined;

/**
 * @member {String} name
 */
DataSetMetadata.prototype['name'] = undefined;

/**
 * @member {String} organizationId
 */
DataSetMetadata.prototype['organizationId'] = undefined;

/**
 * @member {String} externalId
 */
DataSetMetadata.prototype['externalId'] = undefined;

/**
 * @member {module:model/DataSetMetadata.DataSetTypeEnum} dataSetType
 */
DataSetMetadata.prototype['dataSetType'] = undefined;

/**
 * @member {module:model/DataMetadata} metadata
 */
DataSetMetadata.prototype['metadata'] = undefined;





/**
 * Allowed values for the <code>dataSetType</code> property.
 * @enum {String}
 * @readonly
 */
DataSetMetadata['DataSetTypeEnum'] = {

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



export default DataSetMetadata;
