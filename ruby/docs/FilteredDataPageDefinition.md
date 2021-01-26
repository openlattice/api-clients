# OpenapiClient::FilteredDataPageDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page_size** | **Float** |  | [optional] 
**bookmark_id** | **String** |  | [optional] 
**property_type_id** | **String** |  | [optional] 
**filter** | [**Hash&lt;String, Filter&gt;**](Filter.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FilteredDataPageDefinition.new(page_size: null,
                                 bookmark_id: null,
                                 property_type_id: null,
                                 filter: null)
```


