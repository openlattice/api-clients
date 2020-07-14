# OpenapiClient::Constraint

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**search_term** | **String** |  | [optional] 
**fuzzy** | **Boolean** |  | [optional] 
**search_fields** | [**Array&lt;SearchDetails&gt;**](SearchDetails.md) |  | [optional] 
**property_type_id** | **String** |  | [optional] 
**latitude** | **Float** |  | [optional] 
**longitude** | **Float** |  | [optional] 
**radius** | **Float** |  | [optional] 
**unit** | **String** |  | [optional] 
**zones** | **Array&lt;Array&lt;Array&lt;Float&gt;&gt;&gt;** |  | [optional] 
**start** | **DateTime** |  | [optional] 
**_end** | **DateTime** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Constraint.new(type: null,
                                 search_term: null,
                                 fuzzy: null,
                                 search_fields: null,
                                 property_type_id: null,
                                 latitude: null,
                                 longitude: null,
                                 radius: null,
                                 unit: null,
                                 zones: null,
                                 start: null,
                                 _end: null)
```


