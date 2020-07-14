# FlightPlanParametersUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Sql** | **string** | the sql query to be used to pull cleaned data from postgres | [optional] 
**Src** | **map[string]string** | postgres data source for pulling clean data | [optional] 
**SrcPrimaryKeyColumns** | **[]string** | the columns that are primary keys in the cleaned data | [optional] 
**Path** | **string** | the path to the flight yaml (i.e. https://raw.githubusercontent.com/pathToFlight.yaml) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


