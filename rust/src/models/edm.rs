/*
 * OpenLattice API
 *
 * OpenLattice API
 *
 * The version of the OpenAPI document: 0.0.1
 * Contact: support@openlattice.com
 * Generated by: https://openapi-generator.tech
 */




#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct Edm {
    #[serde(rename = "namespaces", skip_serializing_if = "Option::is_none")]
    pub namespaces: Option<Vec<String>>,
    #[serde(rename = "schemas", skip_serializing_if = "Option::is_none")]
    pub schemas: Option<Vec<crate::models::Schema>>,
    #[serde(rename = "propertyTypes", skip_serializing_if = "Option::is_none")]
    pub property_types: Option<Vec<crate::models::PropertyType>>,
    #[serde(rename = "entityTypes", skip_serializing_if = "Option::is_none")]
    pub entity_types: Option<Vec<crate::models::EntityType>>,
    #[serde(rename = "associationTypes", skip_serializing_if = "Option::is_none")]
    pub association_types: Option<Vec<crate::models::AssociationType>>,
}

impl Edm {
    pub fn new() -> Edm {
        Edm {
            namespaces: None,
            schemas: None,
            property_types: None,
            entity_types: None,
            association_types: None,
        }
    }
}


