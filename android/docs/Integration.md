

# Integration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | [**UUID**](UUID.md) | a unique ID used for authorizing a call to run an integration |  [optional]
**environment** | [**EnvironmentEnum**](#EnvironmentEnum) | the retrofit environment (e.g. PROD_INTEGRATION, LOCAL) |  [optional]
**s3Bucket** | **String** | the url of the s3bucket to be used |  [optional]
**contacts** | **List&lt;String&gt;** | the set of email addresses of those responsible for the integration |  [optional]
**organizationId** | [**UUID**](UUID.md) | the id of the organization that owns the integration |  [optional]
**entitySetId** | [**UUID**](UUID.md) | the id of the entity set that stores the logs for this integration |  [optional]
**maxConnections** | **Integer** | maximum number of connections to postgres allowed for this integration |  [optional]
**callback** | **List&lt;String&gt;** | urls to receive a POST when integration has completed |  [optional]
**flightPlanParameters** | [**Map&lt;String, FlightPlanParameters&gt;**](FlightPlanParameters.md) | a map from [Flight] name to [FlightPlanParameters] |  [optional]


## Enum: EnvironmentEnum

Name | Value
---- | -----




