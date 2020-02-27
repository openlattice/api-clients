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
pub struct DataGraphIds {
    #[serde(rename = "entityKeyIds", skip_serializing_if = "Option::is_none")]
    pub entity_key_ids: Option<::std::collections::HashMap<String, Vec<String>>>,
    #[serde(rename = "entitySetIds", skip_serializing_if = "Option::is_none")]
    pub entity_set_ids: Option<::std::collections::HashMap<String, Vec<String>>>,
}

impl DataGraphIds {
    pub fn new() -> DataGraphIds {
        DataGraphIds {
            entity_key_ids: None,
            entity_set_ids: None,
        }
    }
}


