# OpenapiClient::EntityDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fqn** | [**FullQualifiedName**](FullQualifiedName.md) |  | [optional] 
**entity_set_name** | **String** |  | [optional] 
**property_definitions** | [**Hash&lt;String, PropertyDefinition&gt;**](PropertyDefinition.md) |  | [optional] 
**update_type** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EntityDefinition.new(fqn: null,
                                 entity_set_name: null,
                                 property_definitions: null,
                                 update_type: null)
```


