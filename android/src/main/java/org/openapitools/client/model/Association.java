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
import java.util.Map;
import org.openapitools.client.model.EntityKey;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class Association {
  
  @SerializedName("key")
  private EntityKey key = null;
  @SerializedName("src")
  private EntityKey src = null;
  @SerializedName("dst")
  private EntityKey dst = null;
  @SerializedName("details")
  private Map<String, String> details = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public EntityKey getKey() {
    return key;
  }
  public void setKey(EntityKey key) {
    this.key = key;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public EntityKey getSrc() {
    return src;
  }
  public void setSrc(EntityKey src) {
    this.src = src;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public EntityKey getDst() {
    return dst;
  }
  public void setDst(EntityKey dst) {
    this.dst = dst;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Map<String, String> getDetails() {
    return details;
  }
  public void setDetails(Map<String, String> details) {
    this.details = details;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Association association = (Association) o;
    return (this.key == null ? association.key == null : this.key.equals(association.key)) &&
        (this.src == null ? association.src == null : this.src.equals(association.src)) &&
        (this.dst == null ? association.dst == null : this.dst.equals(association.dst)) &&
        (this.details == null ? association.details == null : this.details.equals(association.details));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.key == null ? 0: this.key.hashCode());
    result = 31 * result + (this.src == null ? 0: this.src.hashCode());
    result = 31 * result + (this.dst == null ? 0: this.dst.hashCode());
    result = 31 * result + (this.details == null ? 0: this.details.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Association {\n");
    
    sb.append("  key: ").append(key).append("\n");
    sb.append("  src: ").append(src).append("\n");
    sb.append("  dst: ").append(dst).append("\n");
    sb.append("  details: ").append(details).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
