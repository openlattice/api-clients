use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient {
    admin_api: Box<dyn crate::apis::AdminApi>,
    authorizations_api: Box<dyn crate::apis::AuthorizationsApi>,
    data_api: Box<dyn crate::apis::DataApi>,
    data_integrations_api: Box<dyn crate::apis::DataIntegrationsApi>,
    dataset_api: Box<dyn crate::apis::DatasetApi>,
    edm_api: Box<dyn crate::apis::EdmApi>,
    entity_sets_api: Box<dyn crate::apis::EntitySetsApi>,
    linking_api: Box<dyn crate::apis::LinkingApi>,
    organizations_api: Box<dyn crate::apis::OrganizationsApi>,
    permissions_api: Box<dyn crate::apis::PermissionsApi>,
    principal_api: Box<dyn crate::apis::PrincipalApi>,
    search_api: Box<dyn crate::apis::SearchApi>,
}

impl APIClient {
    pub fn new<C: hyper::client::Connect>(configuration: Configuration<C>) -> APIClient {
        let rc = Rc::new(configuration);

        APIClient {
            admin_api: Box::new(crate::apis::AdminApiClient::new(rc.clone())),
            authorizations_api: Box::new(crate::apis::AuthorizationsApiClient::new(rc.clone())),
            data_api: Box::new(crate::apis::DataApiClient::new(rc.clone())),
            data_integrations_api: Box::new(crate::apis::DataIntegrationsApiClient::new(rc.clone())),
            dataset_api: Box::new(crate::apis::DatasetApiClient::new(rc.clone())),
            edm_api: Box::new(crate::apis::EdmApiClient::new(rc.clone())),
            entity_sets_api: Box::new(crate::apis::EntitySetsApiClient::new(rc.clone())),
            linking_api: Box::new(crate::apis::LinkingApiClient::new(rc.clone())),
            organizations_api: Box::new(crate::apis::OrganizationsApiClient::new(rc.clone())),
            permissions_api: Box::new(crate::apis::PermissionsApiClient::new(rc.clone())),
            principal_api: Box::new(crate::apis::PrincipalApiClient::new(rc.clone())),
            search_api: Box::new(crate::apis::SearchApiClient::new(rc.clone())),
        }
    }

    pub fn admin_api(&self) -> &dyn crate::apis::AdminApi{
        self.admin_api.as_ref()
    }

    pub fn authorizations_api(&self) -> &dyn crate::apis::AuthorizationsApi{
        self.authorizations_api.as_ref()
    }

    pub fn data_api(&self) -> &dyn crate::apis::DataApi{
        self.data_api.as_ref()
    }

    pub fn data_integrations_api(&self) -> &dyn crate::apis::DataIntegrationsApi{
        self.data_integrations_api.as_ref()
    }

    pub fn dataset_api(&self) -> &dyn crate::apis::DatasetApi{
        self.dataset_api.as_ref()
    }

    pub fn edm_api(&self) -> &dyn crate::apis::EdmApi{
        self.edm_api.as_ref()
    }

    pub fn entity_sets_api(&self) -> &dyn crate::apis::EntitySetsApi{
        self.entity_sets_api.as_ref()
    }

    pub fn linking_api(&self) -> &dyn crate::apis::LinkingApi{
        self.linking_api.as_ref()
    }

    pub fn organizations_api(&self) -> &dyn crate::apis::OrganizationsApi{
        self.organizations_api.as_ref()
    }

    pub fn permissions_api(&self) -> &dyn crate::apis::PermissionsApi{
        self.permissions_api.as_ref()
    }

    pub fn principal_api(&self) -> &dyn crate::apis::PrincipalApi{
        self.principal_api.as_ref()
    }

    pub fn search_api(&self) -> &dyn crate::apis::SearchApi{
        self.search_api.as_ref()
    }

}
