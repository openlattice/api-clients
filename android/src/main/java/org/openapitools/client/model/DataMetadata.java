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
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class DataMetadata {
  
  @SerializedName("title")
  private String title = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("contacts")
  private List<String> contacts = null;
  @SerializedName("flags")
  private List<String> flags = null;
  @SerializedName("metadata")
  private List<String> metadata = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getContacts() {
    return contacts;
  }
  public void setContacts(List<String> contacts) {
    this.contacts = contacts;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getFlags() {
    return flags;
  }
  public void setFlags(List<String> flags) {
    this.flags = flags;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getMetadata() {
    return metadata;
  }
  public void setMetadata(List<String> metadata) {
    this.metadata = metadata;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    DataMetadata dataMetadata = (DataMetadata) o;
    return (this.title == null ? dataMetadata.title == null : this.title.equals(dataMetadata.title)) &&
        (this.description == null ? dataMetadata.description == null : this.description.equals(dataMetadata.description)) &&
        (this.contacts == null ? dataMetadata.contacts == null : this.contacts.equals(dataMetadata.contacts)) &&
        (this.flags == null ? dataMetadata.flags == null : this.flags.equals(dataMetadata.flags)) &&
        (this.metadata == null ? dataMetadata.metadata == null : this.metadata.equals(dataMetadata.metadata));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.contacts == null ? 0: this.contacts.hashCode());
    result = 31 * result + (this.flags == null ? 0: this.flags.hashCode());
    result = 31 * result + (this.metadata == null ? 0: this.metadata.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class DataMetadata {\n");
    
    sb.append("  title: ").append(title).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  contacts: ").append(contacts).append("\n");
    sb.append("  flags: ").append(flags).append("\n");
    sb.append("  metadata: ").append(metadata).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}