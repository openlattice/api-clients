# DataSetMetadataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_data_set_column_metadata**](DataSetMetadataApi.md#get_data_set_column_metadata) | **GET** /datastore/metadata/columns/{dataId}/{columnId} | Gets the dataset column metadata objects using data ID and column ID
[**get_data_set_columns_metadata**](DataSetMetadataApi.md#get_data_set_columns_metadata) | **POST** /datastore/metadata/columns | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**get_data_set_metadata**](DataSetMetadataApi.md#get_data_set_metadata) | **GET** /datastore/metadata/datasets/{dataId} | Gets dataset metadata object with given data set ID
[**get_data_sets_metadata**](DataSetMetadataApi.md#get_data_sets_metadata) | **POST** /datastore/metadata/datasets | Gets the dataset metadata objects given data set ids the caller has READ permissions on
[**get_organization_data_sets_metadata**](DataSetMetadataApi.md#get_organization_data_sets_metadata) | **GET** /datastore/metadata/datasets/organizations/{organizationId} | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**update_data_set_column_metadata**](DataSetMetadataApi.md#update_data_set_column_metadata) | **PATCH** /datastore/metadata/update/{dataId}/{columnId} | Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
[**update_data_set_metadata**](DataSetMetadataApi.md#update_data_set_metadata) | **PATCH** /datastore/metadata/update/{dataId} | Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.


# **get_data_set_column_metadata**
> DataSetColumn get_data_set_column_metadata(data_id, column_id)

Gets the dataset column metadata objects using data ID and column ID

### Example
```R
library(openlattice)

var.data_id <- 'data_id_example' # character | 
var.column_id <- 'column_id_example' # character | 

#Gets the dataset column metadata objects using data ID and column ID
api.instance <- DataSetMetadataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_data_set_column_metadata(var.data_id, var.column_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**character**](.md)|  | 
 **column_id** | [**character**](.md)|  | 

### Return type

[**DataSetColumn**](DataSetColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_data_set_columns_metadata**
> list(array[DataSetColumn]) get_data_set_columns_metadata(request_body=var.request_body)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example
```R
library(openlattice)

var.request_body <- list("property_example") # array[character] | 

#Gets all data set column metadata objects that caller has READ on that belong to given data set ids
api.instance <- DataSetMetadataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_data_set_columns_metadata(request_body=var.request_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | list( **character** )|  | [optional] 

### Return type

[**list(array[DataSetColumn])**](array.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_data_set_metadata**
> DataSet get_data_set_metadata(data_id)

Gets dataset metadata object with given data set ID

### Example
```R
library(openlattice)

var.data_id <- 'data_id_example' # character | 

#Gets dataset metadata object with given data set ID
api.instance <- DataSetMetadataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_data_set_metadata(var.data_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**character**](.md)|  | 

### Return type

[**DataSet**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_data_sets_metadata**
> list(DataSet) get_data_sets_metadata(request_body=var.request_body)

Gets the dataset metadata objects given data set ids the caller has READ permissions on

### Example
```R
library(openlattice)

var.request_body <- list("property_example") # array[character] | 

#Gets the dataset metadata objects given data set ids the caller has READ permissions on
api.instance <- DataSetMetadataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_data_sets_metadata(request_body=var.request_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | list( **character** )|  | [optional] 

### Return type

[**list(DataSet)**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **get_organization_data_sets_metadata**
> list(DataSet) get_organization_data_sets_metadata(organization_id)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example
```R
library(openlattice)

var.organization_id <- 'organization_id_example' # character | 

#Gets all data set column metadata objects that caller has READ on that belong to given data set ids
api.instance <- DataSetMetadataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$get_organization_data_sets_metadata(var.organization_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization_id** | [**character**](.md)|  | 

### Return type

[**list(DataSet)**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

# **update_data_set_column_metadata**
> update_data_set_column_metadata(data_id, column_id, securable_object_metadata_update=var.securable_object_metadata_update)

Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.

### Example
```R
library(openlattice)

var.data_id <- 'data_id_example' # character | 
var.column_id <- 'column_id_example' # character | 
var.securable_object_metadata_update <- SecurableObjectMetadataUpdate$new("title_example", "description_example", list("contacts_example"), list("flags_example"), list("metadata_example")) # SecurableObjectMetadataUpdate | 

#Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
api.instance <- DataSetMetadataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_data_set_column_metadata(var.data_id, var.column_id, securable_object_metadata_update=var.securable_object_metadata_update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**character**](.md)|  | 
 **column_id** | [**character**](.md)|  | 
 **securable_object_metadata_update** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional] 

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
| **200** | Success |  -  |

# **update_data_set_metadata**
> update_data_set_metadata(data_id, securable_object_metadata_update=var.securable_object_metadata_update)

Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.

### Example
```R
library(openlattice)

var.data_id <- 'data_id_example' # character | 
var.securable_object_metadata_update <- SecurableObjectMetadataUpdate$new("title_example", "description_example", list("contacts_example"), list("flags_example"), list("metadata_example")) # SecurableObjectMetadataUpdate | 

#Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.
api.instance <- DataSetMetadataApi$new()
# Configure HTTP basic authorization: http_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
# Configure API key authorization: openlattice_auth
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
api.instance$update_data_set_metadata(var.data_id, securable_object_metadata_update=var.securable_object_metadata_update)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_id** | [**character**](.md)|  | 
 **securable_object_metadata_update** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional] 

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
| **200** | Success |  -  |

