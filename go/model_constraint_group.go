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
// ConstraintGroup struct for ConstraintGroup
type ConstraintGroup struct {
	Min int32 `json:"min,omitempty"`
	Constraints []Constraint `json:"constraints,omitempty"`
}
