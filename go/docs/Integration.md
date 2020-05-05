# Integration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **string** | a unique ID used for authorizing a call to run an integration | [optional] 
**Environment** | **string** | the retrofit environment (e.g. production, local) | [optional] 
**S3Bucket** | **string** | the url of the s3bucket to be used | [optional] 
**Contacts** | **[]string** | the set of email addresses of those responsible for the integration | [optional] 
**OrganizationId** | **string** | the id of the organization that owns the integration | [optional] 
**EntitySetId** | **string** | the id of the entity set that stores the logs for this integration | [optional] 
**MaxConnections** | **int32** | maximum number of connections to postgres allowed for this integration | [optional] 
**Callback** | **[]string** | urls to receive a POST when integration has completed | [optional] 
**FlightPlanParameters** | [**map[string]FlightPlanParameters**](FlightPlanParameters.md) | a map from [Flight] name to [FlightPlanParameters] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


