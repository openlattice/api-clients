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
import FullQualifiedName from './FullQualifiedName';

/**
 * The PropertyType model module.
 * @module model/PropertyType
 * @version 0.0.1
 */
class PropertyType {
    /**
     * Constructs a new <code>PropertyType</code>.
     * @alias module:model/PropertyType
     */
    constructor() { 
        
        PropertyType.initialize(this);
    }

    /**
     * Initializes the fields of this object.
     * This method is used by the constructors of any subclasses, in order to implement multiple inheritance (mix-ins).
     * Only for internal use.
     */
    static initialize(obj) { 
    }

    /**
     * Constructs a <code>PropertyType</code> from a plain JavaScript object, optionally creating a new instance.
     * Copies all relevant properties from <code>data</code> to <code>obj</code> if supplied or a new instance if not.
     * @param {Object} data The plain JavaScript object bearing properties of interest.
     * @param {module:model/PropertyType} obj Optional instance to populate.
     * @return {module:model/PropertyType} The populated <code>PropertyType</code> instance.
     */
    static constructFromObject(data, obj) {
        if (data) {
            obj = obj || new PropertyType();

            if (data.hasOwnProperty('title')) {
                obj['title'] = ApiClient.convertToType(data['title'], 'String');
            }
            if (data.hasOwnProperty('id')) {
                obj['id'] = ApiClient.convertToType(data['id'], 'String');
            }
            if (data.hasOwnProperty('type')) {
                obj['type'] = FullQualifiedName.constructFromObject(data['type']);
            }
            if (data.hasOwnProperty('description')) {
                obj['description'] = ApiClient.convertToType(data['description'], 'String');
            }
            if (data.hasOwnProperty('schemas')) {
                obj['schemas'] = ApiClient.convertToType(data['schemas'], [FullQualifiedName]);
            }
            if (data.hasOwnProperty('datatype')) {
                obj['datatype'] = ApiClient.convertToType(data['datatype'], 'String');
            }
            if (data.hasOwnProperty('pii')) {
                obj['pii'] = ApiClient.convertToType(data['pii'], 'Boolean');
            }
            if (data.hasOwnProperty('multiValued')) {
                obj['multiValued'] = ApiClient.convertToType(data['multiValued'], 'Boolean');
            }
            if (data.hasOwnProperty('analyzer')) {
                obj['analyzer'] = ApiClient.convertToType(data['analyzer'], 'String');
            }
            if (data.hasOwnProperty('enumValues')) {
                obj['enumValues'] = ApiClient.convertToType(data['enumValues'], ['String']);
            }
            if (data.hasOwnProperty('indexType')) {
                obj['indexType'] = ApiClient.convertToType(data['indexType'], 'String');
            }
        }
        return obj;
    }


}

/**
 * @member {String} title
 */
PropertyType.prototype['title'] = undefined;

/**
 * @member {String} id
 */
PropertyType.prototype['id'] = undefined;

/**
 * @member {module:model/FullQualifiedName} type
 */
PropertyType.prototype['type'] = undefined;

/**
 * @member {String} description
 */
PropertyType.prototype['description'] = undefined;

/**
 * @member {Array.<module:model/FullQualifiedName>} schemas
 */
PropertyType.prototype['schemas'] = undefined;

/**
 * @member {module:model/PropertyType.DatatypeEnum} datatype
 */
PropertyType.prototype['datatype'] = undefined;

/**
 * @member {Boolean} pii
 */
PropertyType.prototype['pii'] = undefined;

/**
 * @member {Boolean} multiValued
 */
PropertyType.prototype['multiValued'] = undefined;

/**
 * @member {module:model/PropertyType.AnalyzerEnum} analyzer
 */
PropertyType.prototype['analyzer'] = undefined;

/**
 * @member {Array.<String>} enumValues
 */
PropertyType.prototype['enumValues'] = undefined;

/**
 * @member {module:model/PropertyType.IndexTypeEnum} indexType
 */
PropertyType.prototype['indexType'] = undefined;





/**
 * Allowed values for the <code>datatype</code> property.
 * @enum {String}
 * @readonly
 */
PropertyType['DatatypeEnum'] = {

    /**
     * value: "Binary"
     * @const
     */
    "Binary": "Binary",

    /**
     * value: "Boolean"
     * @const
     */
    "Boolean": "Boolean",

    /**
     * value: "Byte"
     * @const
     */
    "Byte": "Byte",

    /**
     * value: "SByte"
     * @const
     */
    "SByte": "SByte",

    /**
     * value: "Date"
     * @const
     */
    "Date": "Date",

    /**
     * value: "DateTimeOffset"
     * @const
     */
    "DateTimeOffset": "DateTimeOffset",

    /**
     * value: "TimeOfDay"
     * @const
     */
    "TimeOfDay": "TimeOfDay",

    /**
     * value: "Duration"
     * @const
     */
    "Duration": "Duration",

    /**
     * value: "Decimal"
     * @const
     */
    "Decimal": "Decimal",

    /**
     * value: "Single"
     * @const
     */
    "Single": "Single",

    /**
     * value: "Double"
     * @const
     */
    "Double": "Double",

    /**
     * value: "Guid"
     * @const
     */
    "Guid": "Guid",

    /**
     * value: "Int16"
     * @const
     */
    "Int16": "Int16",

    /**
     * value: "Int32"
     * @const
     */
    "Int32": "Int32",

    /**
     * value: "Int64"
     * @const
     */
    "Int64": "Int64",

    /**
     * value: "String"
     * @const
     */
    "String": "String",

    /**
     * value: "Stream"
     * @const
     */
    "Stream": "Stream",

    /**
     * value: "Geography"
     * @const
     */
    "Geography": "Geography",

    /**
     * value: "GeographyPoint"
     * @const
     */
    "GeographyPoint": "GeographyPoint",

    /**
     * value: "GeographyLineString"
     * @const
     */
    "GeographyLineString": "GeographyLineString",

    /**
     * value: "GeographyPolygon"
     * @const
     */
    "GeographyPolygon": "GeographyPolygon",

    /**
     * value: "GeographyMultiPoint"
     * @const
     */
    "GeographyMultiPoint": "GeographyMultiPoint",

    /**
     * value: "GeographyMultiLineString"
     * @const
     */
    "GeographyMultiLineString": "GeographyMultiLineString",

    /**
     * value: "GeographyMultiPolygon"
     * @const
     */
    "GeographyMultiPolygon": "GeographyMultiPolygon",

    /**
     * value: "GeographyCollection"
     * @const
     */
    "GeographyCollection": "GeographyCollection",

    /**
     * value: "Geometry"
     * @const
     */
    "Geometry": "Geometry",

    /**
     * value: "GeometryPoint"
     * @const
     */
    "GeometryPoint": "GeometryPoint",

    /**
     * value: "GeometryLineString"
     * @const
     */
    "GeometryLineString": "GeometryLineString",

    /**
     * value: "GeometryPolygon"
     * @const
     */
    "GeometryPolygon": "GeometryPolygon",

    /**
     * value: "GeometryMultiPoint"
     * @const
     */
    "GeometryMultiPoint": "GeometryMultiPoint",

    /**
     * value: "GeometryMultiLineString"
     * @const
     */
    "GeometryMultiLineString": "GeometryMultiLineString",

    /**
     * value: "GeometryMultiPolygon"
     * @const
     */
    "GeometryMultiPolygon": "GeometryMultiPolygon",

    /**
     * value: "GeometryCollection"
     * @const
     */
    "GeometryCollection": "GeometryCollection"
};


/**
 * Allowed values for the <code>analyzer</code> property.
 * @enum {String}
 * @readonly
 */
PropertyType['AnalyzerEnum'] = {

    /**
     * value: "NONE"
     * @const
     */
    "NONE": "NONE",

    /**
     * value: "METAPHONE"
     * @const
     */
    "METAPHONE": "METAPHONE",

    /**
     * value: "STANDARD"
     * @const
     */
    "STANDARD": "STANDARD",

    /**
     * value: "NOT_ANALYZED"
     * @const
     */
    "NOT_ANALYZED": "NOT_ANALYZED"
};


/**
 * Allowed values for the <code>indexType</code> property.
 * @enum {String}
 * @readonly
 */
PropertyType['IndexTypeEnum'] = {

    /**
     * value: "BTREE"
     * @const
     */
    "BTREE": "BTREE",

    /**
     * value: "HASH"
     * @const
     */
    "HASH": "HASH",

    /**
     * value: "GIN"
     * @const
     */
    "GIN": "GIN",

    /**
     * value: "NONE"
     * @const
     */
    "NONE": "NONE"
};



export default PropertyType;
