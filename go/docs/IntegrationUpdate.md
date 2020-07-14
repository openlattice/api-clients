# IntegrationUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Environment** | **string** | the retrofit environment (e.g. PROD_INTEGRATION, LOCAL) | [optional] 
**S3Bucket** | **string** | the url of the s3bucket to be used | [optional] 
**Contacts** | **[]string** | the set of email addresses of those responsible for the integration | [optional] 
**OrganizationId** | **string** | the id of the organization that owns the integration | [optional] 
**MaxConnections** | **int32** | maximum number of connections to postgres allowed for this integration | [optional] 
**CallbackUrls** | **[]string** | urls to receive a POST when integration has completed | [optional] 
**FlightPlanParameters** | [**map[string]FlightPlanParametersUpdate**](FlightPlanParametersUpdate.md) | a map from [Flight] name to [FlightPlanParametersUpdate] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


