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
 * The NeighborSearchFilter model module.
 * @module model/NeighborSearchFilter
 * @version 0.0.1
 */
class NeighborSearchFilter {
    /**
     * Constructs a new <code>NeighborSearchFilter</code>.
     * @alias module:model/NeighborSearchFilter
     */
    constructor() { 
        
        NeighborSearchFilter.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>NeighborSearchFilter</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/NeighborSearchFilter} obj Optional instance to populate.
     * @return {module:model/NeighborSearchFilter} The populated <code>NeighborSearchFilter</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new NeighborSearchFilter();

            if (data.hasOwnProperty('entityKeyIds')) {
                obj['entityKeyIds'] = ApiClient.convertToType(data['entityKeyIds'], ['String']);
            }
            if (data.hasOwnProperty('src')) {
                obj['src'] = ApiClient.convertToType(data['src'], ['String']);
            }
            if (data.hasOwnProperty('dst')) {
                obj['dst'] = ApiClient.convertToType(data['dst'], ['String']);
            }
            if (data.hasOwnProperty('edge')) {
                obj['edge'] = ApiClient.convertToType(data['edge'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {Array.<String>} entityKeyIds
 */
NeighborSearchFilter.prototype['entityKeyIds'] = undefined;

/**
 * @member {Array.<String>} src
 */
NeighborSearchFilter.prototype['src'] = undefined;

/**
 * @member {Array.<String>} dst
 */
NeighborSearchFilter.prototype['dst'] = undefined;

/**
 * @member {Array.<String>} edge
 */
NeighborSearchFilter.prototype['edge'] = undefined;






export default NeighborSearchFilter;

