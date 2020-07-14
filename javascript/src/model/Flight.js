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
import AssociationDefinition from './AssociationDefinition';
import EntityDefinition from './EntityDefinition';

/**
 * The Flight model module.
 * @module model/Flight
 * @version 0.0.1
 */
class Flight {
    /**
     * Constructs a new <code>Flight</code>.
     * @alias module:model/Flight
     */
    constructor() { 
        
        Flight.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>Flight</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/Flight} obj Optional instance to populate.
     * @return {module:model/Flight} The populated <code>Flight</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new Flight();

            if (data.hasOwnProperty('name')) {
                obj['name'] = ApiClient.convertToType(data['name'], 'String');
            }
            if (data.hasOwnProperty('tags')) {
                obj['tags'] = ApiClient.convertToType(data['tags'], ['String']);
            }
            if (data.hasOwnProperty('organizationId')) {
                obj['organizationId'] = ApiClient.convertToType(data['organizationId'], 'String');
            }
            if (data.hasOwnProperty('entityDefinitions')) {
                obj['entityDefinitions'] = ApiClient.convertToType(data['entityDefinitions'], {'String': EntityDefinition});
            }
            if (data.hasOwnProperty('associationDefinitions')) {
                obj['associationDefinitions'] = ApiClient.convertToType(data['associationDefinitions'], {'String': AssociationDefinition});
            }
        }
        return obj;
    }


}

/**
 * @member {String} name
 */
Flight.prototype['name'] = undefined;

/**
 * @member {Array.<String>} tags
 */
Flight.prototype['tags'] = undefined;

/**
 * @member {String} organizationId
 */
Flight.prototype['organizationId'] = undefined;

/**
 * @member {Object.<String, module:model/EntityDefinition>} entityDefinitions
 */
Flight.prototype['entityDefinitions'] = undefined;

/**
 * @member {Object.<String, module:model/AssociationDefinition>} associationDefinitions
 */
Flight.prototype['associationDefinitions'] = undefined;






export default Flight;
