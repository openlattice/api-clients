# OpenapiClient::Organization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**principal** | [**Principal**](Principal.md) |  | [optional] 
**title** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**emails** | **Array&lt;String&gt;** |  | [optional] 
**members** | [**Array&lt;Principal&gt;**](Principal.md) |  | [optional] 
**roles** | [**Array&lt;Role&gt;**](Role.md) |  | [optional] 
**apps** | **Array&lt;String&gt;** |  | [optional] 
**sms_entity_set_info** | [**Array&lt;SmsEntitySetInformation&gt;**](SmsEntitySetInformation.md) |  | [optional] 
**partitions** | **Array&lt;Integer&gt;** |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Organization.new(id: null,
                                 principal: null,
                                 title: null,
                                 description: null,
                                 emails: null,
                                 members: null,
                                 roles: null,
                                 apps: null,
                                 sms_entity_set_info: null,
                                 partitions: null)
```


