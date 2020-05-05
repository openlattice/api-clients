# OpenLatticeApi.FlightPlanParameters

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sql** | **String** | the sql query to be used to pull cleaned data from postgres | [optional] 
**src** | **{String: String}** | postgres data source for pulling clean data | [optional] 
**srcPrimaryKeyColumns** | **[String]** | the columns that are primary keys in the cleaned data | [optional] 
**path** | **String** | the path to the flight yaml (i.e. https://raw.githubusercontent.com/pathToFlight.yaml) | [optional] 
**flight** | [**Flight**](Flight.md) |  | [optional] 


