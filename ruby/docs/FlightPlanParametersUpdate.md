# OpenapiClient::FlightPlanParametersUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sql** | **String** | the sql query to be used to pull cleaned data from postgres | [optional] 
**src** | **Hash&lt;String, String&gt;** | postgres data source for pulling clean data | [optional] 
**src_primary_key_columns** | **Array&lt;String&gt;** | the columns that are primary keys in the cleaned data | [optional] 
**path** | **String** | the path to the flight yaml (i.e. https://raw.githubusercontent.com/pathToFlight.yaml) | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FlightPlanParametersUpdate.new(sql: null,
                                 src: null,
                                 src_primary_key_columns: null,
                                 path: null)
```


