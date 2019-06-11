/**
 * OpenLattice API
 * OpenLattice API
 *
 * OpenAPI spec version: 0.0.1
 * Contact: support@openlattice.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

import ApiClient from '../ApiClient';
import OrientedPropertyTypeId from './OrientedPropertyTypeId';

/**
 * The Aggregation model module.
 * @module model/Aggregation
 * @version 0.0.1
 */
class Aggregation {
    /**
     * Constructs a new <code>Aggregation</code>.
     * @alias module:model/Aggregation
     */
    constructor() { 
        
        Aggregation.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Aggregation</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Aggregation} obj Optional instance to populate.
     * @return {module:model/Aggregation} The populated <code>Aggregation</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Aggregation();

            if (data.hasOwnProperty('property')) {
                obj['property'] = OrientedPropertyTypeId.constructFromObject(data['property']);
            }
            if (data.hasOwnProperty('aggregationType')) {
                obj['aggregationType'] = ApiClient.convertToType(data['aggregationType'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/OrientedPropertyTypeId} property
 */
Aggregation.prototype['property'] = undefined;

/**
 * @member {module:model/Aggregation.AggregationTypeEnum} aggregationType
 */
Aggregation.prototype['aggregationType'] = undefined;





/**
 * Allowed values for the <code>aggregationType</code> property.
 * @enum {String}
 * @readonly
 */
Aggregation['AggregationTypeEnum'] = {

    /**
     * value: "SUM"
     * @const
     */
    "SUM": "SUM",

    /**
     * value: "AVG"
     * @const
     */
    "AVG": "AVG",

    /**
     * value: "MIN"
     * @const
     */
    "MIN": "MIN",

    /**
     * value: "MAX"
     * @const
     */
    "MAX": "MAX",

    /**
     * value: "COUNT"
     * @const
     */
    "COUNT": "COUNT"
};



export default Aggregation;

