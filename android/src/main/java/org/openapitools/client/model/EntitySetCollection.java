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
import java.util.UUID;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class EntitySetCollection {
  
  @SerializedName("id")
  private UUID id = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("description")
  private String description = null;
  @SerializedName("entityTypeCollectionId")
  private UUID entityTypeCollectionId = null;
  @SerializedName("template")
  private Map<String, UUID> template = null;
  @SerializedName("contacts")
  private List<String> contacts = null;
  @SerializedName("organizationId")
  private UUID organizationId = null;

  /**
   * An optional UUID for the entity set collection.
   **/
  @ApiModelProperty(value = "An optional UUID for the entity set collection.")
  public UUID getId() {
    return id;
  }
  public void setId(UUID id) {
    this.id = id;
  }

  /**
   * The unique name of the entity set collection.
   **/
  @ApiModelProperty(value = "The unique name of the entity set collection.")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   * The friendly name for the entity set collection.
   **/
  @ApiModelProperty(value = "The friendly name for the entity set collection.")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   * A description of the entity set collection.
   **/
  @ApiModelProperty(value = "A description of the entity set collection.")
  public String getDescription() {
    return description;
  }
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * The id of the entity type collection that this entity set collection maps to.
   **/
  @ApiModelProperty(value = "The id of the entity type collection that this entity set collection maps to.")
  public UUID getEntityTypeCollectionId() {
    return entityTypeCollectionId;
  }
  public void setEntityTypeCollectionId(UUID entityTypeCollectionId) {
    this.entityTypeCollectionId = entityTypeCollectionId;
  }

  /**
   * A mapping from collection template type ids to entity set ids.
   **/
  @ApiModelProperty(value = "A mapping from collection template type ids to entity set ids.")
  public Map<String, UUID> getTemplate() {
    return template;
  }
  public void setTemplate(Map<String, UUID> template) {
    this.template = template;
  }

  /**
   * A set of contact methods for the owners of this entity set collection.
   **/
  @ApiModelProperty(value = "A set of contact methods for the owners of this entity set collection.")
  public List<String> getContacts() {
    return contacts;
  }
  public void setContacts(List<String> contacts) {
    this.contacts = contacts;
  }

  /**
   * The id of the organization that this entity set collection belongs to.
   **/
  @ApiModelProperty(value = "The id of the organization that this entity set collection belongs to.")
  public UUID getOrganizationId() {
    return organizationId;
  }
  public void setOrganizationId(UUID organizationId) {
    this.organizationId = organizationId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    EntitySetCollection entitySetCollection = (EntitySetCollection) o;
    return (this.id == null ? entitySetCollection.id == null : this.id.equals(entitySetCollection.id)) &&
        (this.name == null ? entitySetCollection.name == null : this.name.equals(entitySetCollection.name)) &&
        (this.title == null ? entitySetCollection.title == null : this.title.equals(entitySetCollection.title)) &&
        (this.description == null ? entitySetCollection.description == null : this.description.equals(entitySetCollection.description)) &&
        (this.entityTypeCollectionId == null ? entitySetCollection.entityTypeCollectionId == null : this.entityTypeCollectionId.equals(entitySetCollection.entityTypeCollectionId)) &&
        (this.template == null ? entitySetCollection.template == null : this.template.equals(entitySetCollection.template)) &&
        (this.contacts == null ? entitySetCollection.contacts == null : this.contacts.equals(entitySetCollection.contacts)) &&
        (this.organizationId == null ? entitySetCollection.organizationId == null : this.organizationId.equals(entitySetCollection.organizationId));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.description == null ? 0: this.description.hashCode());
    result = 31 * result + (this.entityTypeCollectionId == null ? 0: this.entityTypeCollectionId.hashCode());
    result = 31 * result + (this.template == null ? 0: this.template.hashCode());
    result = 31 * result + (this.contacts == null ? 0: this.contacts.hashCode());
    result = 31 * result + (this.organizationId == null ? 0: this.organizationId.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class EntitySetCollection {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  description: ").append(description).append("\n");
    sb.append("  entityTypeCollectionId: ").append(entityTypeCollectionId).append("\n");
    sb.append("  template: ").append(template).append("\n");
    sb.append("  contacts: ").append(contacts).append("\n");
    sb.append("  organizationId: ").append(organizationId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}