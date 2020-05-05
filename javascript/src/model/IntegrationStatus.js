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
* Enum class IntegrationStatus.
* @enum {}
* @readonly
*/
export default class IntegrationStatus {
    
        /**
         * value: "IN_PROGRESS"
         * @const
         */
        "IN_PROGRESS" = "IN_PROGRESS";

    
        /**
         * value: "SUCCEEDED"
         * @const
         */
        "SUCCEEDED" = "SUCCEEDED";

    
        /**
         * value: "FAILED"
         * @const
         */
        "FAILED" = "FAILED";

    
        /**
         * value: "QUEUED"
         * @const
         */
        "QUEUED" = "QUEUED";

    
        /**
         * value: "FAILED_TO_START"
         * @const
         */
        "FAILED_TO_START" = "FAILED_TO_START";

    

    /**
    * Returns a <code>IntegrationStatus</code> enum value from a Javascript object name.
    * @param {Object} data The plain JavaScript object containing the name of the enum value.
    * @return {module:model/IntegrationStatus} The enum <code>IntegrationStatus</code> value.
    */
    static constructFromObject(object) {
        return object;
    }
}

