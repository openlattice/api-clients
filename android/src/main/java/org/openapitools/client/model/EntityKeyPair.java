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

import java.util.UUID;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class EntityKeyPair {
  
  @SerializedName("first")
  private UUID first = null;
  @SerializedName("second")
  private UUID second = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public UUID getFirst() {
    return first;
  }
  public void setFirst(UUID first) {
    this.first = first;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public UUID getSecond() {
    return second;
  }
  public void setSecond(UUID second) {
    this.second = second;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    EntityKeyPair entityKeyPair = (EntityKeyPair) o;
    return (this.first == null ? entityKeyPair.first == null : this.first.equals(entityKeyPair.first)) &&
        (this.second == null ? entityKeyPair.second == null : this.second.equals(entityKeyPair.second));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.first == null ? 0: this.first.hashCode());
    result = 31 * result + (this.second == null ? 0: this.second.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class EntityKeyPair {\n");
    
    sb.append("  first: ").append(first).append("\n");
    sb.append("  second: ").append(second).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}