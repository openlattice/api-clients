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
// Entity struct for Entity
type Entity struct {
	Key EntityKey `json:"key,omitempty"`
	Details map[string]string `json:"details,omitempty"`
}
