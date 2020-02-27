# OpenapiClient::OrganizationMember

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**principal** | [**SecurablePrincipal**](SecurablePrincipal.md) |  | [optional] 
**profile** | [**Auth0userBasic**](Auth0userBasic.md) |  | [optional] 
**roles** | [**Array&lt;SecurablePrincipal&gt;**](SecurablePrincipal.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::OrganizationMember.new(principal: null,
                                 profile: null,
                                 roles: null)
```


