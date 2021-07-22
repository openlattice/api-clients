# MetadataApi

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

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
UUID dataId = null; // UUID | 
UUID columnId = null; // UUID | 
try {
    DataSetColumn result = apiInstance.getDataSetColumnMetadata(dataId, columnId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#getDataSetColumnMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**UUID**](.md)|  | [default to null]
 **columnId** | [**UUID**](.md)|  | [default to null]

### Return type

[**DataSetColumn**](DataSetColumn.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getDataSetColumnsMetadata

> Map&lt;String, List&lt;DataSetColumn&gt;&gt; getDataSetColumnsMetadata(requestBody)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    Map<String, List<DataSetColumn>> result = apiInstance.getDataSetColumnsMetadata(requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#getDataSetColumnsMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List&lt;String&gt;**](String.md)|  | [optional]

### Return type

[**Map&lt;String, List&lt;DataSetColumn&gt;&gt;**](List.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getDataSetMetadata

> DataSet getDataSetMetadata(dataId)

Gets dataset metadata object with given data set ID

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
UUID dataId = null; // UUID | 
try {
    DataSet result = apiInstance.getDataSetMetadata(dataId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#getDataSetMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**UUID**](.md)|  | [default to null]

### Return type

[**DataSet**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getDataSetsMetadata

> Map&lt;String, DataSet&gt; getDataSetsMetadata(requestBody)

Gets the dataset metadata objects given data set ids the caller has READ permissions on

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
List<String> requestBody = Arrays.asList("requestBody_example"); // List<String> | 
try {
    Map<String, DataSet> result = apiInstance.getDataSetsMetadata(requestBody);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#getDataSetsMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestBody** | [**List&lt;String&gt;**](String.md)|  | [optional]

### Return type

[**Map&lt;String, DataSet&gt;**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getOrganizationDataSetsMetadata

> Map&lt;String, DataSet&gt; getOrganizationDataSetsMetadata(organizationId)

Gets all data set column metadata objects that caller has READ on that belong to given data set ids

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
UUID organizationId = null; // UUID | 
try {
    Map<String, DataSet> result = apiInstance.getOrganizationDataSetsMetadata(organizationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#getOrganizationDataSetsMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organizationId** | [**UUID**](.md)|  | [default to null]

### Return type

[**Map&lt;String, DataSet&gt;**](DataSet.md)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateDataSetColumnMetadata

> updateDataSetColumnMetadata(dataId, columnId, securableObjectMetadataUpdate)

Applies the given metadata updates to the data set column given dataset and column Ids. Must be OWNER of the column.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
UUID dataId = null; // UUID | 
UUID columnId = null; // UUID | 
SecurableObjectMetadataUpdate securableObjectMetadataUpdate = new SecurableObjectMetadataUpdate(); // SecurableObjectMetadataUpdate | 
try {
    apiInstance.updateDataSetColumnMetadata(dataId, columnId, securableObjectMetadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#updateDataSetColumnMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**UUID**](.md)|  | [default to null]
 **columnId** | [**UUID**](.md)|  | [default to null]
 **securableObjectMetadataUpdate** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## updateDataSetMetadata

> updateDataSetMetadata(dataId, securableObjectMetadataUpdate)

Applies the given metadata updates to the data set given data set id. Must be OWNER of the dataset.

### Example

```java
// Import classes:
//import org.openapitools.client.api.MetadataApi;

MetadataApi apiInstance = new MetadataApi();
UUID dataId = null; // UUID | 
SecurableObjectMetadataUpdate securableObjectMetadataUpdate = new SecurableObjectMetadataUpdate(); // SecurableObjectMetadataUpdate | 
try {
    apiInstance.updateDataSetMetadata(dataId, securableObjectMetadataUpdate);
} catch (ApiException e) {
    System.err.println("Exception when calling MetadataApi#updateDataSetMetadata");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataId** | [**UUID**](.md)|  | [default to null]
 **securableObjectMetadataUpdate** | [**SecurableObjectMetadataUpdate**](SecurableObjectMetadataUpdate.md)|  | [optional]

### Return type

null (empty response body)

### Authorization

[http_auth](../README.md#http_auth), [openlattice_auth](../README.md#openlattice_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

