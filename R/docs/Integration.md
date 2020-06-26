# openlattice::Integration

Represents a data integration, including all fields required to run the integration.
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **character** | a unique ID used for authorizing a call to run an integration | [optional] 
**environment** | **character** | the retrofit environment (e.g. production, local) | [optional] 
**s3Bucket** | **character** | the url of the s3bucket to be used | [optional] 
**contacts** | **array[character]** | the set of email addresses of those responsible for the integration | [optional] 
**organizationId** | **character** | the id of the organization that owns the integration | [optional] 
**entitySetId** | **character** | the id of the entity set that stores the logs for this integration | [optional] 
**maxConnections** | **integer** | maximum number of connections to postgres allowed for this integration | [optional] 
**callback** | **array[character]** | urls to receive a POST when integration has completed | [optional] 
**flightPlanParameters** | [**list(FlightPlanParameters)**](FlightPlanParameters.md) | a map from [Flight] name to [FlightPlanParameters] | [optional] 


