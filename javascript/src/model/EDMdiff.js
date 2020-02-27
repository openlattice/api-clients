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
import EDM from './EDM';

/**
 * The EDMdiff model module.
 * @module model/EDMdiff
 * @version 0.0.1
 */
class EDMdiff {
    /**
     * Constructs a new <code>EDMdiff</code>.
     * @alias module:model/EDMdiff
     */
    constructor() { 
        
        EDMdiff.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>EDMdiff</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/EDMdiff} obj Optional instance to populate.
     * @return {module:model/EDMdiff} The populated <code>EDMdiff</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new EDMdiff();

            if (data.hasOwnProperty('conflicts')) {
                obj['conflicts'] = EDM.constructFromObject(data['conflicts']);
            }
            if (data.hasOwnProperty('diff')) {
                obj['diff'] = EDM.constructFromObject(data['diff']);
            }
        }
        return obj;
    }


}

/**
 * @member {module:model/EDM} conflicts
 */
EDMdiff.prototype['conflicts'] = undefined;

/**
 * @member {module:model/EDM} diff
 */
EDMdiff.prototype['diff'] = undefined;






export default EDMdiff;

