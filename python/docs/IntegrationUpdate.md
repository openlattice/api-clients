# IntegrationUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**environment** | **str** | the retrofit environment (e.g. production, local) | [optional] 
**s3_bucket** | **str** | the url of the s3bucket to be used | [optional] 
**contacts** | **list[str]** | the set of email addresses of those responsible for the integration | [optional] 
**organization_id** | **str** | the id of the organization that owns the integration | [optional] 
**max_connections** | **int** | maximum number of connections to postgres allowed for this integration | [optional] 
**callback_urls** | **list[str]** | urls to receive a POST when integration has completed | [optional] 
**flight_plan_parameters** | [**dict(str, FlightPlanParametersUpdate)**](FlightPlanParametersUpdate.md) | a map from [Flight] name to [FlightPlanParametersUpdate] | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


