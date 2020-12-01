

# EntitySet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**UUID**](UUID.md) |  |  [optional]
**entityTypeId** | [**UUID**](UUID.md) |  |  [optional]
**name** | **String** |  |  [optional]
**title** | **String** |  |  [optional]
**description** | **String** |  |  [optional]
**contacts** | **List&lt;String&gt;** |  |  [optional]
**linking** | **Boolean** |  |  [optional]
**linkedEntitySets** | **List&lt;String&gt;** |  |  [optional]
**organizationId** | [**UUID**](UUID.md) |  |  [optional]
**flags** | [**List&lt;FlagsEnum&gt;**](#List&lt;FlagsEnum&gt;) |  |  [optional]
**partitions** | **List&lt;Integer&gt;** |  |  [optional]


## Enum: List&lt;FlagsEnum&gt;

Name | Value
---- | -----
ASSOCIATION | &quot;ASSOCIATION&quot;
AUDIT | &quot;AUDIT&quot;
EXTERNAL | &quot;EXTERNAL&quot;
LINKING | &quot;LINKING&quot;
METADATA | &quot;METADATA&quot;
TRANSPORTED | &quot;TRANSPORTED&quot;




