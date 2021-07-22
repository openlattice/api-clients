# OpenapiClient::DataSetColumn

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**data_set_id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**organization_id** | **String** |  | [optional] 
**data_type** | **String** |  | [optional] 
**metadata** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md) |  | [optional] 
**acl_key** | **Array&lt;String&gt;** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DataSetColumn.new(id: null,
                                 data_set_id: null,
                                 name: null,
                                 organization_id: null,
                                 data_type: null,
                                 metadata: null,
                                 acl_key: null)
```


