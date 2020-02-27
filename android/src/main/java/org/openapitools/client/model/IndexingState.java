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
public class IndexingState {
  
  @SerializedName("indexing")
  private Map<String, List<UUID>> indexing = null;
  @SerializedName("queue")
  private List<UUID> queue = null;
  @SerializedName("currentEntitySet")
  private UUID currentEntitySet = null;
  @SerializedName("queueSize")
  private Integer queueSize = null;
  @SerializedName("count")
  private Integer count = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Map<String, List<UUID>> getIndexing() {
    return indexing;
  }
  public void setIndexing(Map<String, List<UUID>> indexing) {
    this.indexing = indexing;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<UUID> getQueue() {
    return queue;
  }
  public void setQueue(List<UUID> queue) {
    this.queue = queue;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public UUID getCurrentEntitySet() {
    return currentEntitySet;
  }
  public void setCurrentEntitySet(UUID currentEntitySet) {
    this.currentEntitySet = currentEntitySet;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getQueueSize() {
    return queueSize;
  }
  public void setQueueSize(Integer queueSize) {
    this.queueSize = queueSize;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getCount() {
    return count;
  }
  public void setCount(Integer count) {
    this.count = count;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IndexingState indexingState = (IndexingState) o;
    return (this.indexing == null ? indexingState.indexing == null : this.indexing.equals(indexingState.indexing)) &&
        (this.queue == null ? indexingState.queue == null : this.queue.equals(indexingState.queue)) &&
        (this.currentEntitySet == null ? indexingState.currentEntitySet == null : this.currentEntitySet.equals(indexingState.currentEntitySet)) &&
        (this.queueSize == null ? indexingState.queueSize == null : this.queueSize.equals(indexingState.queueSize)) &&
        (this.count == null ? indexingState.count == null : this.count.equals(indexingState.count));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.indexing == null ? 0: this.indexing.hashCode());
    result = 31 * result + (this.queue == null ? 0: this.queue.hashCode());
    result = 31 * result + (this.currentEntitySet == null ? 0: this.currentEntitySet.hashCode());
    result = 31 * result + (this.queueSize == null ? 0: this.queueSize.hashCode());
    result = 31 * result + (this.count == null ? 0: this.count.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class IndexingState {\n");
    
    sb.append("  indexing: ").append(indexing).append("\n");
    sb.append("  queue: ").append(queue).append("\n");
    sb.append("  currentEntitySet: ").append(currentEntitySet).append("\n");
    sb.append("  queueSize: ").append(queueSize).append("\n");
    sb.append("  count: ").append(count).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
