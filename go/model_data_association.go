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
// DataAssociation struct for DataAssociation
type DataAssociation struct {
	// the ID of the source entity set
	SrcEntitySetId string `json:"srcEntitySetId,omitempty"`
	// The index of an entity
	SrcEntityIndex string `json:"srcEntityIndex,omitempty"`
	// An existing entityKeyId
	SrcEntityKeyId string `json:"srcEntityKeyId,omitempty"`
}
