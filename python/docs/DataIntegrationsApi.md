# openlattice.DataIntegrationsApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_entity_key_ids**](DataIntegrationsApi.md#get_entity_key_ids) | **POST** /datastore/integration/entityKeyIds | Get entity key IDs
[**integrate_entity_and_association_data**](DataIntegrationsApi.md#integrate_entity_and_association_data) | **POST** /datastore/integration | Integrate entity and association data


# **get_entity_key_ids**
> list[str] get_entity_key_ids(entity_key)

Get entity key IDs

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DataIntegrationsApi(openlattice.ApiClient(configuration))
entity_key = NULL # list[EntityKey] | 

try:
    # Get entity key IDs
    api_response = api_instance.get_entity_key_ids(entity_key)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataIntegrationsApi->get_entity_key_ids: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DataIntegrationsApi(openlattice.ApiClient(configuration))
entity_key = NULL # list[EntityKey] | 

try:
    # Get entity key IDs
    api_response = api_instance.get_entity_key_ids(entity_key)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataIntegrationsApi->get_entity_key_ids: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_key** | [**list[EntityKey]**](list.md)|  | 

### Return type

**list[str]**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **integrate_entity_and_association_data**
> IntegrationResults integrate_entity_and_association_data(detailed_results, bulk_data_creation)

Integrate entity and association data

### Example

* Bearer (JWT) Authentication (http_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DataIntegrationsApi(openlattice.ApiClient(configuration))
detailed_results = True # bool | 
bulk_data_creation = openlattice.BulkDataCreation() # BulkDataCreation | 

try:
    # Integrate entity and association data
    api_response = api_instance.integrate_entity_and_association_data(detailed_results, bulk_data_creation)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataIntegrationsApi->integrate_entity_and_association_data: %s\n" % e)
```

* Api Key Authentication (openlattice_auth):
```python
from __future__ import print_function
import time
import openlattice
from openlattice.rest import ApiException
from pprint import pprint
configuration = openlattice.Configuration()
# Configure Bearer authorization (JWT): http_auth
configuration.access_token = 'YOUR_BEARER_TOKEN'
configuration = openlattice.Configuration()
# Configure API key authorization: openlattice_auth
configuration.api_key['Authorization'] = 'YOUR_API_KEY'
# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['Authorization'] = 'Bearer'

# create an instance of the API class
api_instance = openlattice.DataIntegrationsApi(openlattice.ApiClient(configuration))
detailed_results = True # bool | 
bulk_data_creation = openlattice.BulkDataCreation() # BulkDataCreation | 

try:
    # Integrate entity and association data
    api_response = api_instance.integrate_entity_and_association_data(detailed_results, bulk_data_creation)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DataIntegrationsApi->integrate_entity_and_association_data: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **detailed_results** | **bool**|  | 
 **bulk_data_creation** | [**BulkDataCreation**](BulkDataCreation.md)|  | 

### Return type

[**IntegrationResults**](IntegrationResults.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

