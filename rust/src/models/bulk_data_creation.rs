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
pub struct BulkDataCreation {
    #[serde(rename = "entities", skip_serializing_if = "Option::is_none")]
    pub entities: Option<Vec<crate::models::Entity>>,
    #[serde(rename = "associations", skip_serializing_if = "Option::is_none")]
    pub associations: Option<Vec<crate::models::Association>>,
}

impl BulkDataCreation {
    pub fn new() -> BulkDataCreation {
        BulkDataCreation {
            entities: None,
            associations: None,
        }
    }
}


