# openlattice.ShuttleApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_integration_definition**](ShuttleApi.md#create_integration_definition) | **POST** /shuttle/integration/definition/{integrationName} | Creates a new integration definition for running recurring integrations
[**delete_integration_definition**](ShuttleApi.md#delete_integration_definition) | **DELETE** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition
[**delete_integration_job_status**](ShuttleApi.md#delete_integration_job_status) | **DELETE** /shuttle/integration/status/{jobId} | Deletes an integration job status from the integrationJobs map
[**enqueue_integration**](ShuttleApi.md#enqueue_integration) | **GET** /shuttle/integration/{integrationName}/{integrationKey} | Enqueues an integration on Shuttle Server for a given integration
[**poll_all_integrations**](ShuttleApi.md#poll_all_integrations) | **GET** /shuttle/integration/status | Polls the statuses of all running integrations
[**poll_integration**](ShuttleApi.md#poll_integration) | **GET** /shuttle/integration/status/{jobId} | Polls the status of an integration
[**read_integration_definition**](ShuttleApi.md#read_integration_definition) | **GET** /shuttle/integration/definition/{integrationName} | Gets an existing integration definition
[**update_integration_definition**](ShuttleApi.md#update_integration_definition) | **PATCH** /shuttle/integration/definition/{integrationName} | Replaces any number of fields within an existing integration definition


# **create_integration_definition**
> str create_integration_definition(integration_name, integration)

Creates a new integration definition for running recurring integrations

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 
integration = openlattice.Integration() # Integration | 

    try:
        # Creates a new integration definition for running recurring integrations
        api_response = api_instance.create_integration_definition(integration_name, integration)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->create_integration_definition: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 
integration = openlattice.Integration() # Integration | 

    try:
        # Creates a new integration definition for running recurring integrations
        api_response = api_instance.create_integration_definition(integration_name, integration)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->create_integration_definition: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**|  | 
 **integration** | [**Integration**](Integration.md)|  | 

### Return type

**str**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_integration_definition**
> delete_integration_definition(integration_name)

Replaces any number of fields within an existing integration definition

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 

    try:
        # Replaces any number of fields within an existing integration definition
        api_instance.delete_integration_definition(integration_name)
    except ApiException as e:
        print("Exception when calling ShuttleApi->delete_integration_definition: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 

    try:
        # Replaces any number of fields within an existing integration definition
        api_instance.delete_integration_definition(integration_name)
    except ApiException as e:
        print("Exception when calling ShuttleApi->delete_integration_definition: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_integration_job_status**
> delete_integration_job_status(job_id)

Deletes an integration job status from the integrationJobs map

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    job_id = 'job_id_example' # str | the unique id of the integration job

    try:
        # Deletes an integration job status from the integrationJobs map
        api_instance.delete_integration_job_status(job_id)
    except ApiException as e:
        print("Exception when calling ShuttleApi->delete_integration_job_status: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    job_id = 'job_id_example' # str | the unique id of the integration job

    try:
        # Deletes an integration job status from the integrationJobs map
        api_instance.delete_integration_job_status(job_id)
    except ApiException as e:
        print("Exception when calling ShuttleApi->delete_integration_job_status: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**str**](.md)| the unique id of the integration job | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enqueue_integration**
> str enqueue_integration(integration_name, integration_key)

Enqueues an integration on Shuttle Server for a given integration

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | the name of the integration to be run
integration_key = 'integration_key_example' # str | the unique id used to authenticate an integration run

    try:
        # Enqueues an integration on Shuttle Server for a given integration
        api_response = api_instance.enqueue_integration(integration_name, integration_key)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->enqueue_integration: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | the name of the integration to be run
integration_key = 'integration_key_example' # str | the unique id used to authenticate an integration run

    try:
        # Enqueues an integration on Shuttle Server for a given integration
        api_response = api_instance.enqueue_integration(integration_name, integration_key)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->enqueue_integration: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**| the name of the integration to be run | 
 **integration_key** | [**str**](.md)| the unique id used to authenticate an integration run | 

### Return type

**str**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poll_all_integrations**
> dict(str, IntegrationJob) poll_all_integrations()

Polls the statuses of all running integrations

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    
    try:
        # Polls the statuses of all running integrations
        api_response = api_instance.poll_all_integrations()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->poll_all_integrations: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    
    try:
        # Polls the statuses of all running integrations
        api_response = api_instance.poll_all_integrations()
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->poll_all_integrations: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**dict(str, IntegrationJob)**](IntegrationJob.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poll_integration**
> IntegrationStatus poll_integration(job_id)

Polls the status of an integration

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    job_id = 'job_id_example' # str | the unique id of the integration job

    try:
        # Polls the status of an integration
        api_response = api_instance.poll_integration(job_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->poll_integration: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    job_id = 'job_id_example' # str | the unique id of the integration job

    try:
        # Polls the status of an integration
        api_response = api_instance.poll_integration(job_id)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->poll_integration: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | [**str**](.md)| the unique id of the integration job | 

### Return type

[**IntegrationStatus**](IntegrationStatus.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_integration_definition**
> Integration read_integration_definition(integration_name)

Gets an existing integration definition

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 

    try:
        # Gets an existing integration definition
        api_response = api_instance.read_integration_definition(integration_name)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->read_integration_definition: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 

    try:
        # Gets an existing integration definition
        api_response = api_instance.read_integration_definition(integration_name)
        pprint(api_response)
    except ApiException as e:
        print("Exception when calling ShuttleApi->read_integration_definition: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**|  | 

### Return type

[**Integration**](Integration.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_integration_definition**
> update_integration_definition(integration_name, integration_update)

Replaces any number of fields within an existing integration definition

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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 
integration_update = openlattice.IntegrationUpdate() # IntegrationUpdate | 

    try:
        # Replaces any number of fields within an existing integration definition
        api_instance.update_integration_definition(integration_name, integration_update)
    except ApiException as e:
        print("Exception when calling ShuttleApi->update_integration_definition: %s\n" % e)
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

# Defining host is optional and default to https://api.openlattice.com
configuration.host = "https://api.openlattice.com"

# Enter a context with an instance of the API client
with openlattice.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = openlattice.ShuttleApi(api_client)
    integration_name = 'integration_name_example' # str | 
integration_update = openlattice.IntegrationUpdate() # IntegrationUpdate | 

    try:
        # Replaces any number of fields within an existing integration definition
        api_instance.update_integration_definition(integration_name, integration_update)
    except ApiException as e:
        print("Exception when calling ShuttleApi->update_integration_definition: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**|  | 
 **integration_update** | [**IntegrationUpdate**](IntegrationUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

