# OpenapiClient::IntegrationUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**environment** | **String** | the retrofit environment (e.g. production, local) | [optional] 
**s3_bucket** | **String** | the url of the s3bucket to be used | [optional] 
**contacts** | **Array&lt;String&gt;** | the set of email addresses of those responsible for the integration | [optional] 
**organization_id** | **String** | the id of the organization that owns the integration | [optional] 
**max_connections** | **Integer** | maximum number of connections to postgres allowed for this integration | [optional] 
**callback_urls** | **Array&lt;String&gt;** | urls to receive a POST when integration has completed | [optional] 
**flight_plan_parameters** | [**Hash&lt;String, FlightPlanParametersUpdate&gt;**](FlightPlanParametersUpdate.md) | a map from [Flight] name to [FlightPlanParametersUpdate] | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::IntegrationUpdate.new(environment: null,
                                 s3_bucket: null,
                                 contacts: null,
                                 organization_id: null,
                                 max_connections: null,
                                 callback_urls: null,
                                 flight_plan_parameters: null)
```


