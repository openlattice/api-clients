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
pub struct DataAssociation {
    /// the ID of the source entity set
    #[serde(rename = "srcEntitySetId", skip_serializing_if = "Option::is_none")]
    pub src_entity_set_id: Option<String>,
    /// The index of an entity
    #[serde(rename = "srcEntityIndex", skip_serializing_if = "Option::is_none")]
    pub src_entity_index: Option<String>,
    /// An existing entityKeyId
    #[serde(rename = "srcEntityKeyId", skip_serializing_if = "Option::is_none")]
    pub src_entity_key_id: Option<String>,
}

impl DataAssociation {
    pub fn new() -> DataAssociation {
        DataAssociation {
            src_entity_set_id: None,
            src_entity_index: None,
            src_entity_key_id: None,
        }
    }
}


