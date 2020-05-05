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
import org.openapitools.client.model.FlightPlanParametersUpdate;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class IntegrationUpdate {
  
  public enum EnvironmentEnum {
     PROD_INTEGRATION,  STAGING_INTEGRATION,  LOCAL, 
  };
  @SerializedName("environment")
  private EnvironmentEnum environment = null;
  @SerializedName("s3Bucket")
  private String s3Bucket = null;
  @SerializedName("contacts")
  private List<String> contacts = null;
  @SerializedName("organizationId")
  private UUID organizationId = null;
  @SerializedName("maxConnections")
  private Integer maxConnections = null;
  @SerializedName("callbackUrls")
  private List<String> callbackUrls = null;
  @SerializedName("flightPlanParameters")
  private Map<String, FlightPlanParametersUpdate> flightPlanParameters = null;

  /**
   * the retrofit environment (e.g. production, local)
   **/
  @ApiModelProperty(value = "the retrofit environment (e.g. production, local)")
  public EnvironmentEnum getEnvironment() {
    return environment;
  }
  public void setEnvironment(EnvironmentEnum environment) {
    this.environment = environment;
  }

  /**
   * the url of the s3bucket to be used
   **/
  @ApiModelProperty(value = "the url of the s3bucket to be used")
  public String getS3Bucket() {
    return s3Bucket;
  }
  public void setS3Bucket(String s3Bucket) {
    this.s3Bucket = s3Bucket;
  }

  /**
   * the set of email addresses of those responsible for the integration
   **/
  @ApiModelProperty(value = "the set of email addresses of those responsible for the integration")
  public List<String> getContacts() {
    return contacts;
  }
  public void setContacts(List<String> contacts) {
    this.contacts = contacts;
  }

  /**
   * the id of the organization that owns the integration
   **/
  @ApiModelProperty(value = "the id of the organization that owns the integration")
  public UUID getOrganizationId() {
    return organizationId;
  }
  public void setOrganizationId(UUID organizationId) {
    this.organizationId = organizationId;
  }

  /**
   * maximum number of connections to postgres allowed for this integration
   **/
  @ApiModelProperty(value = "maximum number of connections to postgres allowed for this integration")
  public Integer getMaxConnections() {
    return maxConnections;
  }
  public void setMaxConnections(Integer maxConnections) {
    this.maxConnections = maxConnections;
  }

  /**
   * urls to receive a POST when integration has completed
   **/
  @ApiModelProperty(value = "urls to receive a POST when integration has completed")
  public List<String> getCallbackUrls() {
    return callbackUrls;
  }
  public void setCallbackUrls(List<String> callbackUrls) {
    this.callbackUrls = callbackUrls;
  }

  /**
   * a map from [Flight] name to [FlightPlanParametersUpdate]
   **/
  @ApiModelProperty(value = "a map from [Flight] name to [FlightPlanParametersUpdate]")
  public Map<String, FlightPlanParametersUpdate> getFlightPlanParameters() {
    return flightPlanParameters;
  }
  public void setFlightPlanParameters(Map<String, FlightPlanParametersUpdate> flightPlanParameters) {
    this.flightPlanParameters = flightPlanParameters;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IntegrationUpdate integrationUpdate = (IntegrationUpdate) o;
    return (this.environment == null ? integrationUpdate.environment == null : this.environment.equals(integrationUpdate.environment)) &&
        (this.s3Bucket == null ? integrationUpdate.s3Bucket == null : this.s3Bucket.equals(integrationUpdate.s3Bucket)) &&
        (this.contacts == null ? integrationUpdate.contacts == null : this.contacts.equals(integrationUpdate.contacts)) &&
        (this.organizationId == null ? integrationUpdate.organizationId == null : this.organizationId.equals(integrationUpdate.organizationId)) &&
        (this.maxConnections == null ? integrationUpdate.maxConnections == null : this.maxConnections.equals(integrationUpdate.maxConnections)) &&
        (this.callbackUrls == null ? integrationUpdate.callbackUrls == null : this.callbackUrls.equals(integrationUpdate.callbackUrls)) &&
        (this.flightPlanParameters == null ? integrationUpdate.flightPlanParameters == null : this.flightPlanParameters.equals(integrationUpdate.flightPlanParameters));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.environment == null ? 0: this.environment.hashCode());
    result = 31 * result + (this.s3Bucket == null ? 0: this.s3Bucket.hashCode());
    result = 31 * result + (this.contacts == null ? 0: this.contacts.hashCode());
    result = 31 * result + (this.organizationId == null ? 0: this.organizationId.hashCode());
    result = 31 * result + (this.maxConnections == null ? 0: this.maxConnections.hashCode());
    result = 31 * result + (this.callbackUrls == null ? 0: this.callbackUrls.hashCode());
    result = 31 * result + (this.flightPlanParameters == null ? 0: this.flightPlanParameters.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class IntegrationUpdate {\n");
    
    sb.append("  environment: ").append(environment).append("\n");
    sb.append("  s3Bucket: ").append(s3Bucket).append("\n");
    sb.append("  contacts: ").append(contacts).append("\n");
    sb.append("  organizationId: ").append(organizationId).append("\n");
    sb.append("  maxConnections: ").append(maxConnections).append("\n");
    sb.append("  callbackUrls: ").append(callbackUrls).append("\n");
    sb.append("  flightPlanParameters: ").append(flightPlanParameters).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
