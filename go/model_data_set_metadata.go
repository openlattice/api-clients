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
// DataSetMetadata struct for DataSetMetadata
type DataSetMetadata struct {
	Id string `json:"id,omitempty"`
	Name string `json:"name,omitempty"`
	OrganizationId string `json:"organizationId,omitempty"`
	ExternalId string `json:"externalId,omitempty"`
	DataSetType string `json:"dataSetType,omitempty"`
	Metadata DataMetadata `json:"metadata,omitempty"`
}
