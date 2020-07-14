# OpenapiClient::EntityType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**type** | [**FullQualifiedName**](FullQualifiedName.md) |  | [optional] 
**schemas** | [**Array&lt;FullQualifiedName&gt;**](FullQualifiedName.md) |  | [optional] 
**key** | **Array&lt;String&gt;** |  | [optional] 
**properties** | **Array&lt;String&gt;** |  | [optional] 
**property_tags** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 
**basetype** | **String** |  | [optional] 
**category** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EntityType.new(title: null,
                                 description: null,
                                 id: null,
                                 type: null,
                                 schemas: null,
                                 key: null,
                                 properties: null,
                                 property_tags: null,
                                 basetype: null,
                                 category: null)
```


