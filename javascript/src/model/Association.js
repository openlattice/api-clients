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
import EntityKey from './EntityKey';

/**
 * The Association model module.
 * @module model/Association
 * @version 0.0.1
 */
class Association {
    /**
     * Constructs a new <code>Association</code>.
     * @alias module:model/Association
     */
    constructor() { 
        
        Association.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Association</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Association} obj Optional instance to populate.
     * @return {module:model/Association} The populated <code>Association</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Association();

            if (data.hasOwnProperty('key')) {
                obj['key'] = EntityKey.constructFromObject(data['key']);
            }
            if (data.hasOwnProperty('src')) {
                obj['src'] = EntityKey.constructFromObject(data['src']);
            }
            if (data.hasOwnProperty('dst')) {
                obj['dst'] = EntityKey.constructFromObject(data['dst']);
            }
            if (data.hasOwnProperty('details')) {
                obj['details'] = ApiClient.convertToType(data['details'], {'String': 'String'});
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/EntityKey} key
 */
Association.prototype['key'] = undefined;

/**
 * @member {module:model/EntityKey} src
 */
Association.prototype['src'] = undefined;

/**
 * @member {module:model/EntityKey} dst
 */
Association.prototype['dst'] = undefined;

/**
 * @member {Object.<String, String>} details
 */
Association.prototype['details'] = undefined;






export default Association;

