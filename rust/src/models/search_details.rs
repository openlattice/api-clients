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
pub struct SearchDetails {
    #[serde(rename = "searchTerm", skip_serializing_if = "Option::is_none")]
    pub search_term: Option<String>,
    #[serde(rename = "property", skip_serializing_if = "Option::is_none")]
    pub property: Option<String>,
    #[serde(rename = "exact", skip_serializing_if = "Option::is_none")]
    pub exact: Option<bool>,
}

impl SearchDetails {
    pub fn new() -> SearchDetails {
        SearchDetails {
            search_term: None,
            property: None,
            exact: None,
        }
    }
}


