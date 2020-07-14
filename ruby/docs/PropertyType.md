# OpenapiClient::PropertyType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**type** | [**FullQualifiedName**](FullQualifiedName.md) |  | [optional] 
**description** | **String** |  | [optional] 
**schemas** | [**Array&lt;FullQualifiedName&gt;**](FullQualifiedName.md) |  | [optional] 
**datatype** | **String** |  | [optional] 
**pii** | **Boolean** |  | [optional] 
**multi_valued** | **Boolean** |  | [optional] 
**analyzer** | **String** |  | [optional] 
**enum_values** | **Array&lt;String&gt;** |  | [optional] 
**index_type** | **String** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PropertyType.new(title: null,
                                 id: null,
                                 type: null,
                                 description: null,
                                 schemas: null,
                                 datatype: null,
                                 pii: null,
                                 multi_valued: null,
                                 analyzer: null,
                                 enum_values: null,
                                 index_type: null)
```


