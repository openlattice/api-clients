# OpenLatticeApi.MetadataApi

All URIs are relative to *https://api.openlattice.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDataSetColumnMetadata**](MetadataApi.md#getDataSetColumnMetadata) | **GET** /datastore/metadata/columns/{dataId}/{columnId} | Gets the dataset column metadata objects using data ID and column ID
[**getDataSetColumnsMetadata**](MetadataApi.md#getDataSetColumnsMetadata) | **POST** /datastore/metadata/columns | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**getDataSetMetadata**](MetadataApi.md#getDataSetMetadata) | **GET** /datastore/metadata/datasets/{dataId} | Gets dataset metadata object with given data set ID
[**getDataSetsMetadata**](MetadataApi.md#getDataSetsMetadata) | **POST** /datastore/metadata/datasets | Gets the dataset metadata objects given data set ids the caller has READ permissions on
[**getOrganizationDataSetsMetadata**](MetadataApi.md#getOrganizationDataSetsMetadata) | **GET** /datastore/metadata/datasets/organizations/{organizationId} | Gets all data set column metadata objects that caller has READ on that belong to given data set ids
[**updateDataSetColumnMetadata**](MetadataApi.md#updateDataSetColumnMetadata) | **PATCH** /datastore/metadata/update/{dataId}/{columnId} | Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.
[**updateDataSetMetadata**](MetadataApi.md#updateDataSetMetadata) | **PATCH** /datastore/metadata/update/{dataId} | Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.



## getDataSetColumnMetadata

> DataSetColumn getDataSetColumnMetadata(dataId, columnId)

Gets the dataset column metadata objects using data ID and column ID

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.MetadataApi();
let dataId = null; // String | 
let columnId = null; // String | 
apiInstance.getDataSetColumnMetadata(dataId, columnId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**String**](.md)|  | 
 **columnId** | [**String**](.md)|  | 

### Return type

[**DataSetColumn**](DataSetColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getDataSetColumnsMetadata

> {String: [DataSetColumn]} getDataSetColumnsMetadata(opts)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.MetadataApi();
let opts = {
  'requestBody': ["null"] // [String] | 
};
apiInstance.getDataSetColumnsMetadata(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String]**](String.md)|  | [optional] 

### Return type

**{String: [DataSetColumn]}**

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getDataSetMetadata

> DataSet getDataSetMetadata(dataId)

Gets dataset metadata object with given data set ID

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.MetadataApi();
let dataId = null; // String | 
apiInstance.getDataSetMetadata(dataId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**String**](.md)|  | 

### Return type

[**DataSet**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getDataSetsMetadata

> {String: DataSet} getDataSetsMetadata(opts)

Gets the dataset metadata objects given data set ids the caller has READ permissions on

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.MetadataApi();
let opts = {
  'requestBody': ["null"] // [String] | 
};
apiInstance.getDataSetsMetadata(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**[String]**](String.md)|  | [optional] 

### Return type

[**{String: DataSet}**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getOrganizationDataSetsMetadata

> {String: DataSet} getOrganizationDataSetsMetadata(organizationId)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.MetadataApi();
let organizationId = null; // String | 
apiInstance.getOrganizationDataSetsMetadata(organizationId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**String**](.md)|  | 

### Return type

[**{String: DataSet}**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateDataSetColumnMetadata

> updateDataSetColumnMetadata(dataId, columnId, opts)

Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.MetadataApi();
let dataId = null; // String | 
let columnId = null; // String | 
let opts = {
  'securableObjectMetadataUpdate': new OpenLatticeApi.SecurableObjectMetadataUpdate() // SecurableObjectMetadataUpdate | 
};
apiInstance.updateDataSetColumnMetadata(dataId, columnId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**String**](.md)|  | 
 **columnId** | [**String**](.md)|  | 
 **securableObjectMetadataUpdate** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional] 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateDataSetMetadata

> updateDataSetMetadata(dataId, opts)

Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.

### Example

```javascript
import OpenLatticeApi from 'open_lattice_api';
let defaultClient = OpenLatticeApi.ApiClient.instance;
// Configure Bearer (JWT) access token for authorization: http_auth
let http_auth = defaultClient.authentications['http_auth'];
http_auth.accessToken = "YOUR ACCESS TOKEN"
// Configure API key authorization: openlattice_auth
let openlattice_auth = defaultClient.authentications['openlattice_auth'];
openlattice_auth.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//openlattice_auth.apiKeyPrefix = 'Token';

let apiInstance = new OpenLatticeApi.MetadataApi();
let dataId = null; // String | 
let opts = {
  'securableObjectMetadataUpdate': new OpenLatticeApi.SecurableObjectMetadataUpdate() // SecurableObjectMetadataUpdate | 
};
apiInstance.updateDataSetMetadata(dataId, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**String**](.md)|  | 
 **securableObjectMetadataUpdate** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional] 

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

