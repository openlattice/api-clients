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
 * The EntitySetPropertyMetaData model module.
 * @module model/EntitySetPropertyMetaData
 * @version 0.0.1
 */
class EntitySetPropertyMetaData {
    /**
     * Constructs a new <code>EntitySetPropertyMetaData</code>.
     * @alias module:model/EntitySetPropertyMetaData
     */
    constructor() { 
        
        EntitySetPropertyMetaData.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>EntitySetPropertyMetaData</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EntitySetPropertyMetaData} obj Optional instance to populate.
     * @return {module:model/EntitySetPropertyMetaData} The populated <code>EntitySetPropertyMetaData</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EntitySetPropertyMetaData();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('propertyTags')) {
                obj['propertyTags'] = ApiClient.convertToType(data['propertyTags'], ['String']);
            }
            if (data.hasOwnProperty('defaultShow')) {
                obj['defaultShow'] = ApiClient.convertToType(data['defaultShow'], 'Boolean');
            }
        }
        return obj;
    }


}

/**
 * @member {String} title
 */
EntitySetPropertyMetaData.prototype['title'] = undefined;

/**
 * @member {String} description
 */
EntitySetPropertyMetaData.prototype['description'] = undefined;

/**
 * @member {Array.<String>} propertyTags
 */
EntitySetPropertyMetaData.prototype['propertyTags'] = undefined;

/**
 * @member {Boolean} defaultShow
 */
EntitySetPropertyMetaData.prototype['defaultShow'] = undefined;






export default EntitySetPropertyMetaData;
