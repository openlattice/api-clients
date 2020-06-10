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

/**
 * The EntityKeyPair model module.
 * @module model/EntityKeyPair
 * @version 0.0.1
 */
class EntityKeyPair {
    /**
     * Constructs a new <code>EntityKeyPair</code>.
     * @alias module:model/EntityKeyPair
     */
    constructor() { 
        
        EntityKeyPair.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>EntityKeyPair</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntityKeyPair} obj Optional instance to populate.
     * @return {module:model/EntityKeyPair} The populated <code>EntityKeyPair</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntityKeyPair();

            if (data.hasOwnProperty('first')) {
                obj['first'] = ApiClient.convertToType(data['first'], 'String');
            }
            if (data.hasOwnProperty('second')) {
                obj['second'] = ApiClient.convertToType(data['second'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} first
 */
EntityKeyPair.prototype['first'] = undefined;

/**
 * @member {String} second
 */
EntityKeyPair.prototype['second'] = undefined;






export default EntityKeyPair;
