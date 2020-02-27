/**
 * OpenLattice API
 * OpenLattice API
 *
 * The version of the OpenAPI document: 0.0.1
 * Contact: support@openlattice.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.Auth0userBasic;
import org.openapitools.client.model.SecurablePrincipal;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class OrganizationMember {
  
  @SerializedName("principal")
  private SecurablePrincipal principal = null;
  @SerializedName("profile")
  private Auth0userBasic profile = null;
  @SerializedName("roles")
  private List<SecurablePrincipal> roles = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public SecurablePrincipal getPrincipal() {
    return principal;
  }
  public void setPrincipal(SecurablePrincipal principal) {
    this.principal = principal;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Auth0userBasic getProfile() {
    return profile;
  }
  public void setProfile(Auth0userBasic profile) {
    this.profile = profile;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<SecurablePrincipal> getRoles() {
    return roles;
  }
  public void setRoles(List<SecurablePrincipal> roles) {
    this.roles = roles;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrganizationMember organizationMember = (OrganizationMember) o;
    return (this.principal == null ? organizationMember.principal == null : this.principal.equals(organizationMember.principal)) &&
        (this.profile == null ? organizationMember.profile == null : this.profile.equals(organizationMember.profile)) &&
        (this.roles == null ? organizationMember.roles == null : this.roles.equals(organizationMember.roles));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.principal == null ? 0: this.principal.hashCode());
    result = 31 * result + (this.profile == null ? 0: this.profile.hashCode());
    result = 31 * result + (this.roles == null ? 0: this.roles.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrganizationMember {\n");
    
    sb.append("  principal: ").append(principal).append("\n");
    sb.append("  profile: ").append(profile).append("\n");
    sb.append("  roles: ").append(roles).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
