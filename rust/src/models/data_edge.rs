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
pub struct DataEdge {
    #[serde(rename = "src", skip_serializing_if = "Option::is_none")]
    pub src: Option<crate::models::EntityDataKey>,
    #[serde(rename = "dst", skip_serializing_if = "Option::is_none")]
    pub dst: Option<crate::models::EntityDataKey>,
    #[serde(rename = "data", skip_serializing_if = "Option::is_none")]
    pub data: Option<crate::models::DataEdgeData>,
}

impl DataEdge {
    pub fn new() -> DataEdge {
        DataEdge {
            src: None,
            dst: None,
            data: None,
        }
    }
}


