# OpenapiClient::Integration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | a unique ID used for authorizing a call to run an integration | [optional] 
**environment** | **String** | the retrofit environment (e.g. production, local) | [optional] 
**s3_bucket** | **String** | the url of the s3bucket to be used | [optional] 
**contacts** | **Array&lt;String&gt;** | the set of email addresses of those responsible for the integration | [optional] 
**organization_id** | **String** | the id of the organization that owns the integration | [optional] 
**entity_set_id** | **String** | the id of the entity set that stores the logs for this integration | [optional] 
**max_connections** | **Integer** | maximum number of connections to postgres allowed for this integration | [optional] 
**callback** | **Array&lt;String&gt;** | urls to receive a POST when integration has completed | [optional] 
**flight_plan_parameters** | [**Hash&lt;String, FlightPlanParameters&gt;**](FlightPlanParameters.md) | a map from [Flight] name to [FlightPlanParameters] | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Integration.new(key: null,
                                 environment: null,
                                 s3_bucket: null,
                                 contacts: null,
                                 organization_id: null,
                                 entity_set_id: null,
                                 max_connections: null,
                                 callback: null,
                                 flight_plan_parameters: null)
```


