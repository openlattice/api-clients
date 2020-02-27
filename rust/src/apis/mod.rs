use hyper;
use serde;
use serde_json;

#[derive(Debug)]
pub enum Error<T> {
    UriError(hyper::error::UriError),
    Hyper(hyper::Error),
    Serde(serde_json::Error),
    ApiError(ApiError<T>),
}

#[derive(Debug)]
pub struct ApiError<T> {
    pub code: hyper::StatusCode,
    pub content: Option<T>,
}

impl<'de, T> From<(hyper::StatusCode, &'de [u8])> for Error<T> 
    where T: serde::Deserialize<'de> {
    fn from(e: (hyper::StatusCode, &'de [u8])) -> Self {
        if e.1.len() == 0 {
            return Error::ApiError(ApiError{
                code: e.0,
                content: None,
            });
        }
        match serde_json::from_slice::<T>(e.1) {
            Ok(t) => Error::ApiError(ApiError{
                code: e.0,
                content: Some(t),
            }),
            Err(e) => {
                Error::from(e)
            }
        }
    }
}

impl<T> From<hyper::Error> for Error<T> {
    fn from(e: hyper::Error) -> Self {
        return Error::Hyper(e)
    }
}

impl<T> From<serde_json::Error> for Error<T> {
    fn from(e: serde_json::Error) -> Self {
        return Error::Serde(e)
    }
}

mod request;

mod admin_api;
pub use self::admin_api::{ AdminApi, AdminApiClient };
mod authorizations_api;
pub use self::authorizations_api::{ AuthorizationsApi, AuthorizationsApiClient };
mod data_api;
pub use self::data_api::{ DataApi, DataApiClient };
mod data_integrations_api;
pub use self::data_integrations_api::{ DataIntegrationsApi, DataIntegrationsApiClient };
mod dataset_api;
pub use self::dataset_api::{ DatasetApi, DatasetApiClient };
mod edm_api;
pub use self::edm_api::{ EdmApi, EdmApiClient };
mod entity_sets_api;
pub use self::entity_sets_api::{ EntitySetsApi, EntitySetsApiClient };
mod linking_api;
pub use self::linking_api::{ LinkingApi, LinkingApiClient };
mod organizations_api;
pub use self::organizations_api::{ OrganizationsApi, OrganizationsApiClient };
mod permissions_api;
pub use self::permissions_api::{ PermissionsApi, PermissionsApiClient };
mod principal_api;
pub use self::principal_api::{ PrincipalApi, PrincipalApiClient };
mod search_api;
pub use self::search_api::{ SearchApi, SearchApiClient };

pub mod configuration;
pub mod client;
