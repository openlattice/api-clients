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
// OrganizationExternalDatabaseTableColumnsPair struct for OrganizationExternalDatabaseTableColumnsPair
type OrganizationExternalDatabaseTableColumnsPair struct {
	Table OrganizationExternalDatabaseTable `json:"table,omitempty"`
	Columns []OrganizationExternalDatabaseColumn `json:"columns,omitempty"`
}
