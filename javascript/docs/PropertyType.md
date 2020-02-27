# OpenLatticeApi.PropertyType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **String** |  | [optional] 
**id** | **String** |  | [optional] 
**type** | [**FullQualifiedName**](FullQualifiedName.md) |  | [optional] 
**description** | **String** |  | [optional] 
**schemas** | [**[FullQualifiedName]**](FullQualifiedName.md) |  | [optional] 
**datatype** | **String** |  | [optional] 
**pii** | **Boolean** |  | [optional] 
**multiValued** | **Boolean** |  | [optional] 
**analyzer** | **String** |  | [optional] 
**enumValues** | **[String]** |  | [optional] 
**indexType** | **String** |  | [optional] 



## Enum: DatatypeEnum


* `Binary` (value: `"Binary"`)

* `Boolean` (value: `"Boolean"`)

* `Byte` (value: `"Byte"`)

* `SByte` (value: `"SByte"`)

* `Date` (value: `"Date"`)

* `DateTimeOffset` (value: `"DateTimeOffset"`)

* `TimeOfDay` (value: `"TimeOfDay"`)

* `Duration` (value: `"Duration"`)

* `Decimal` (value: `"Decimal"`)

* `Single` (value: `"Single"`)

* `Double` (value: `"Double"`)

* `Guid` (value: `"Guid"`)

* `Int16` (value: `"Int16"`)

* `Int32` (value: `"Int32"`)

* `Int64` (value: `"Int64"`)

* `String` (value: `"String"`)

* `Stream` (value: `"Stream"`)

* `Geography` (value: `"Geography"`)

* `GeographyPoint` (value: `"GeographyPoint"`)

* `GeographyLineString` (value: `"GeographyLineString"`)

* `GeographyPolygon` (value: `"GeographyPolygon"`)

* `GeographyMultiPoint` (value: `"GeographyMultiPoint"`)

* `GeographyMultiLineString` (value: `"GeographyMultiLineString"`)

* `GeographyMultiPolygon` (value: `"GeographyMultiPolygon"`)

* `GeographyCollection` (value: `"GeographyCollection"`)

* `Geometry` (value: `"Geometry"`)

* `GeometryPoint` (value: `"GeometryPoint"`)

* `GeometryLineString` (value: `"GeometryLineString"`)

* `GeometryPolygon` (value: `"GeometryPolygon"`)

* `GeometryMultiPoint` (value: `"GeometryMultiPoint"`)

* `GeometryMultiLineString` (value: `"GeometryMultiLineString"`)

* `GeometryMultiPolygon` (value: `"GeometryMultiPolygon"`)

* `GeometryCollection` (value: `"GeometryCollection"`)





## Enum: AnalyzerEnum


* `NONE` (value: `"NONE"`)

* `METAPHONE` (value: `"METAPHONE"`)

* `STANDARD` (value: `"STANDARD"`)

* `NOT_ANALYZED` (value: `"NOT_ANALYZED"`)





## Enum: IndexTypeEnum


* `BTREE` (value: `"BTREE"`)

* `HASH` (value: `"HASH"`)

* `GIN` (value: `"GIN"`)

* `NONE` (value: `"NONE"`)




