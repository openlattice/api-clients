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
import Principal from './Principal';

/**
 * The Ace model module.
 * @module model/Ace
 * @version 0.0.1
 */
class Ace {
    /**
     * Constructs a new <code>Ace</code>.
     * @alias module:model/Ace
     */
    constructor() { 
        
        Ace.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Ace</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Ace} obj Optional instance to populate.
     * @return {module:model/Ace} The populated <code>Ace</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Ace();

            if (data.hasOwnProperty('principal')) {
                obj['principal'] = Principal.constructFromObject(data['principal']);
            }
            if (data.hasOwnProperty('permissions')) {
                obj['permissions'] = ApiClient.convertToType(data['permissions'], ['String']);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/Principal} principal
 */
Ace.prototype['principal'] = undefined;

/**
 * @member {Array.<String>} permissions
 */
Ace.prototype['permissions'] = undefined;






export default Ace;
