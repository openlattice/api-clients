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
pub struct NeighborSearchFilter {
    #[serde(rename = "entityKeyIds", skip_serializing_if = "Option::is_none")]
    pub entity_key_ids: Option<Vec<String>>,
    #[serde(rename = "src", skip_serializing_if = "Option::is_none")]
    pub src: Option<Vec<String>>,
    #[serde(rename = "dst", skip_serializing_if = "Option::is_none")]
    pub dst: Option<Vec<String>>,
    #[serde(rename = "edge", skip_serializing_if = "Option::is_none")]
    pub edge: Option<Vec<String>>,
}

impl NeighborSearchFilter {
    pub fn new() -> NeighborSearchFilter {
        NeighborSearchFilter {
            entity_key_ids: None,
            src: None,
            dst: None,
            edge: None,
        }
    }
}


