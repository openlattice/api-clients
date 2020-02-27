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
// SortDefinition struct for SortDefinition
type SortDefinition struct {
	Type string `json:"type,omitempty"`
	IsDescending bool `json:"isDescending,omitempty"`
	PropertyTypeId string `json:"propertyTypeId,omitempty"`
	Latitude float32 `json:"latitude,omitempty"`
	Longitude float32 `json:"longitude,omitempty"`
}
