# OpenapiClient::IndexingState

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**indexing** | **Hash&lt;String, Array&lt;String&gt;&gt;** |  | [optional] 
**queue** | **Array&lt;String&gt;** |  | [optional] 
**current_entity_set** | **String** |  | [optional] 
**queue_size** | **Integer** |  | [optional] 
**count** | **Integer** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::IndexingState.new(indexing: null,
                                 queue: null,
                                 current_entity_set: null,
                                 queue_size: null,
                                 count: null)
```


