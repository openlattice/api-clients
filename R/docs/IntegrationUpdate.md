# openlattice::IntegrationUpdate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**environment** | **character** | the retrofit environment (e.g. PROD_INTEGRATION, LOCAL) | [optional] 
**s3Bucket** | **character** | the url of the s3bucket to be used | [optional] 
**contacts** | **array[character]** | the set of email addresses of those responsible for the integration | [optional] 
**organizationId** | **character** | the id of the organization that owns the integration | [optional] 
**maxConnections** | **integer** | maximum number of connections to postgres allowed for this integration | [optional] 
**callbackUrls** | **array[character]** | urls to receive a POST when integration has completed | [optional] 
**flightPlanParameters** | [**list(FlightPlanParametersUpdate)**](FlightPlanParametersUpdate.md) | a map from [Flight] name to [FlightPlanParametersUpdate] | [optional] 


