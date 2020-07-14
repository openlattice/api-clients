# OpenapiClient::SearchConstraints

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entity_set_ids** | **Array&lt;String&gt;** |  | [optional] 
**start** | **Integer** |  | [optional] 
**max_hits** | **Integer** |  | [optional] 
**constraints** | [**Array&lt;ConstraintGroup&gt;**](ConstraintGroup.md) |  | [optional] 
**sort** | [**SortDefinition**](SortDefinition.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SearchConstraints.new(entity_set_ids: null,
                                 start: null,
                                 max_hits: null,
                                 constraints: null,
                                 sort: null)
```


