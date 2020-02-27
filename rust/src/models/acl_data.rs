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
pub struct AclData {
    #[serde(rename = "action", skip_serializing_if = "Option::is_none")]
    pub action: Option<String>,
    #[serde(rename = "acl", skip_serializing_if = "Option::is_none")]
    pub acl: Option<crate::models::Acl>,
}

impl AclData {
    pub fn new() -> AclData {
        AclData {
            action: None,
            acl: None,
        }
    }
}


