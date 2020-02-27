/*
 * OpenLattice API
 *
 * OpenLattice API
 *
 * API version: 0.0.1
 * Contact: support@openlattice.com
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openlattice
// PropertyType struct for PropertyType
type PropertyType struct {
	Title string `json:"title,omitempty"`
	Id string `json:"id,omitempty"`
	Type FullQualifiedName `json:"type,omitempty"`
	Description string `json:"description,omitempty"`
	Schemas []FullQualifiedName `json:"schemas,omitempty"`
	Datatype string `json:"datatype,omitempty"`
	Pii bool `json:"pii,omitempty"`
	MultiValued bool `json:"multiValued,omitempty"`
	Analyzer string `json:"analyzer,omitempty"`
	EnumValues []string `json:"enumValues,omitempty"`
	IndexType string `json:"indexType,omitempty"`
}
