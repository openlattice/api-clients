# FlightPlanParameters

Represents the parameters required to create a flight plan (i.e. a Map<Flight, Payload>)
## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sql** | **str** | the sql query to be used to pull cleaned data from postgres | [optional] 
**src** | **dict(str, str)** | postgres data source for pulling clean data | [optional] 
**src_primary_key_columns** | **list[str]** | the columns that are primary keys in the cleaned data | [optional] 
**path** | **str** | the path to the flight yaml (i.e. https://raw.githubusercontent.com/pathToFlight.yaml) | [optional] 
**flight** | [**Flight**](Flight.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


