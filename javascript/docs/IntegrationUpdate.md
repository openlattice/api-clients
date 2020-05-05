# OpenLatticeApi.IntegrationUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**environment** | **String** | the retrofit environment (e.g. production, local) | [optional] 
**s3Bucket** | **String** | the url of the s3bucket to be used | [optional] 
**contacts** | **[String]** | the set of email addresses of those responsible for the integration | [optional] 
**organizationId** | **String** | the id of the organization that owns the integration | [optional] 
**maxConnections** | **Number** | maximum number of connections to postgres allowed for this integration | [optional] 
**callbackUrls** | **[String]** | urls to receive a POST when integration has completed | [optional] 
**flightPlanParameters** | [**{String: FlightPlanParametersUpdate}**](FlightPlanParametersUpdate.md) | a map from [Flight] name to [FlightPlanParametersUpdate] | [optional] 



## Enum: EnvironmentEnum


* `PROD_INTEGRATION` (value: `"PROD_INTEGRATION"`)

* `STAGING_INTEGRATION` (value: `"STAGING_INTEGRATION"`)

* `LOCAL` (value: `"LOCAL"`)




