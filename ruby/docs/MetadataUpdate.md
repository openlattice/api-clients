# OpenapiClient::MetadataUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**contacts** | **Array&lt;String&gt;** |  | [optional] 
**type** | [**FullQualifiedName**](FullQualifiedName.md) |  | [optional] 
**pii** | **Boolean** |  | [optional] 
**default_show** | **Boolean** |  | [optional] 
**url** | **String** |  | [optional] 
**property_tags** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 
**index_type** | **String** |  | [optional] 
**organization_id** | **String** |  | [optional] 
**partitions** | **Array&lt;Integer&gt;** |  | [optional] 
**enum_values** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::MetadataUpdate.new(title: null,
                                 description: null,
                                 name: null,
                                 contacts: null,
                                 type: null,
                                 pii: null,
                                 default_show: null,
                                 url: null,
                                 property_tags: null,
                                 index_type: null,
                                 organization_id: null,
                                 partitions: null,
                                 enum_values: null)
```


