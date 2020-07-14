# OpenapiClient::DataAssociation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**src_entity_set_id** | **String** | the ID of the source entity set | [optional] 
**src_entity_index** | **String** | The index of an entity | [optional] 
**src_entity_key_id** | **String** | An existing entityKeyId | [optional] 
**dst_entity_set_id** | **String** | the ID of the dst entity set | [optional] 
**dst_entity_index** | **String** | The index of an entity | [optional] 
**dst_entity_key_id** | **String** | An existing entityKeyId | [optional] 
**data** | **Hash&lt;String, Array&lt;String&gt;&gt;** | data | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DataAssociation.new(src_entity_set_id: null,
                                 src_entity_index: null,
                                 src_entity_key_id: null,
                                 dst_entity_set_id: null,
                                 dst_entity_index: null,
                                 dst_entity_key_id: null,
                                 data: null)
```


