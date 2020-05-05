# OpenLatticeApi.Integration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | a unique ID used for authorizing a call to run an integration | [optional] 
**environment** | **String** | the retrofit environment (e.g. production, local) | [optional] 
**s3Bucket** | **String** | the url of the s3bucket to be used | [optional] 
**contacts** | **[String]** | the set of email addresses of those responsible for the integration | [optional] 
**organizationId** | **String** | the id of the organization that owns the integration | [optional] 
**entitySetId** | **String** | the id of the entity set that stores the logs for this integration | [optional] 
**maxConnections** | **Number** | maximum number of connections to postgres allowed for this integration | [optional] 
**callback** | **[String]** | urls to receive a POST when integration has completed | [optional] 
**flightPlanParameters** | [**{String: FlightPlanParameters}**](FlightPlanParameters.md) | a map from [Flight] name to [FlightPlanParameters] | [optional] 



## Enum: EnvironmentEnum


* `PROD_INTEGRATION` (value: `"PROD_INTEGRATION"`)

* `STAGING_INTEGRATION` (value: `"STAGING_INTEGRATION"`)

* `LOCAL` (value: `"LOCAL"`)




