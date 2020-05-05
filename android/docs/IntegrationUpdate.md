

# IntegrationUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**environment** | [**EnvironmentEnum**](#EnvironmentEnum) | the retrofit environment (e.g. production, local) |  [optional]
**s3Bucket** | **String** | the url of the s3bucket to be used |  [optional]
**contacts** | **List&lt;String&gt;** | the set of email addresses of those responsible for the integration |  [optional]
**organizationId** | [**UUID**](UUID.md) | the id of the organization that owns the integration |  [optional]
**maxConnections** | **Integer** | maximum number of connections to postgres allowed for this integration |  [optional]
**callbackUrls** | **List&lt;String&gt;** | urls to receive a POST when integration has completed |  [optional]
**flightPlanParameters** | [**Map&lt;String, FlightPlanParametersUpdate&gt;**](FlightPlanParametersUpdate.md) | a map from [Flight] name to [FlightPlanParametersUpdate] |  [optional]


## Enum: EnvironmentEnum

Name | Value
---- | -----




