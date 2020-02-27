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
// EntitySet struct for EntitySet
type EntitySet struct {
	Id string `json:"id,omitempty"`
	EntityTypeId string `json:"entityTypeId,omitempty"`
	Name string `json:"name,omitempty"`
	Title string `json:"title,omitempty"`
	Description string `json:"description,omitempty"`
	Contacts []string `json:"contacts,omitempty"`
	Linking bool `json:"linking,omitempty"`
	LinkedEntitySets []string `json:"linkedEntitySets,omitempty"`
	OrganizationId string `json:"organizationId,omitempty"`
	Flags []string `json:"flags,omitempty"`
	Partitions []int32 `json:"partitions,omitempty"`
}
