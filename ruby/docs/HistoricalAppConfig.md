# OpenapiClient::HistoricalAppConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**principal** | [**Principal**](Principal.md) |  | [optional] 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**app_id** | **String** |  | [optional] 
**organization** | [**Organization**](Organization.md) |  | [optional] 
**config** | [**Hash&lt;String, HistoricalAppTypeSetting&gt;**](HistoricalAppTypeSetting.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::HistoricalAppConfig.new(id: null,
                                 principal: null,
                                 title: null,
                                 description: null,
                                 app_id: null,
                                 organization: null,
                                 config: null)
```


