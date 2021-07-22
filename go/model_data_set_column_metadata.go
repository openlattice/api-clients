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
// DataSetColumnMetadata struct for DataSetColumnMetadata
type DataSetColumnMetadata struct {
	Id string `json:"id,omitempty"`
	DataSetId string `json:"dataSetId,omitempty"`
	Name string `json:"name,omitempty"`
	OrganizationId string `json:"organizationId,omitempty"`
	DataType string `json:"dataType,omitempty"`
	Metadata DataMetadata `json:"metadata,omitempty"`
	AclKey []string `json:"aclKey,omitempty"`
}
