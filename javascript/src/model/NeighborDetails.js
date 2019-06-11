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

/**
 * The NeighborDetails model module.
 * @module model/NeighborDetails
 * @version 0.0.1
 */
class NeighborDetails {
    /**
     * Constructs a new <code>NeighborDetails</code>.
     * @alias module:model/NeighborDetails
     */
    constructor() { 
        
        NeighborDetails.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>NeighborDetails</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/NeighborDetails} obj Optional instance to populate.
     * @return {module:model/NeighborDetails} The populated <code>NeighborDetails</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new NeighborDetails();

            if (data.hasOwnProperty('openlattice.@id')) {
                obj['openlattice.@id'] = ApiClient.convertToType(data['openlattice.@id'], 'String');
            }
            if (data.hasOwnProperty('ol.id')) {
                obj['ol.id'] = ApiClient.convertToType(data['ol.id'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} openlattice.@id
 */
NeighborDetails.prototype['openlattice.@id'] = undefined;

/**
 * @member {String} ol.id
 */
NeighborDetails.prototype['ol.id'] = undefined;






export default NeighborDetails;

