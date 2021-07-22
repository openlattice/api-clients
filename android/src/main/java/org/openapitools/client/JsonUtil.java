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

package org.openapitools.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Date;
import org.openapitools.client.model.*;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    gsonBuilder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {
      public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        return new Date(json.getAsJsonPrimitive().getAsLong());
      }
    });
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("AccessCheck".equalsIgnoreCase(className)) {
      return new TypeToken<List<AccessCheck>>(){}.getType();
    }
    
    if ("Ace".equalsIgnoreCase(className)) {
      return new TypeToken<List<Ace>>(){}.getType();
    }
    
    if ("Acl".equalsIgnoreCase(className)) {
      return new TypeToken<List<Acl>>(){}.getType();
    }
    
    if ("AclData".equalsIgnoreCase(className)) {
      return new TypeToken<List<AclData>>(){}.getType();
    }
    
    if ("AdvancedSearch".equalsIgnoreCase(className)) {
      return new TypeToken<List<AdvancedSearch>>(){}.getType();
    }
    
    if ("App".equalsIgnoreCase(className)) {
      return new TypeToken<List<App>>(){}.getType();
    }
    
    if ("AppRole".equalsIgnoreCase(className)) {
      return new TypeToken<List<AppRole>>(){}.getType();
    }
    
    if ("AppRolePermissions".equalsIgnoreCase(className)) {
      return new TypeToken<List<AppRolePermissions>>(){}.getType();
    }
    
    if ("Association".equalsIgnoreCase(className)) {
      return new TypeToken<List<Association>>(){}.getType();
    }
    
    if ("AssociationDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<List<AssociationDefinition>>(){}.getType();
    }
    
    if ("AssociationType".equalsIgnoreCase(className)) {
      return new TypeToken<List<AssociationType>>(){}.getType();
    }
    
    if ("Auth0userBasic".equalsIgnoreCase(className)) {
      return new TypeToken<List<Auth0userBasic>>(){}.getType();
    }
    
    if ("Authorization".equalsIgnoreCase(className)) {
      return new TypeToken<List<Authorization>>(){}.getType();
    }
    
    if ("AuthorizedObjectsSearchResult".equalsIgnoreCase(className)) {
      return new TypeToken<List<AuthorizedObjectsSearchResult>>(){}.getType();
    }
    
    if ("BulkDataCreation".equalsIgnoreCase(className)) {
      return new TypeToken<List<BulkDataCreation>>(){}.getType();
    }
    
    if ("CollectionTemplateType".equalsIgnoreCase(className)) {
      return new TypeToken<List<CollectionTemplateType>>(){}.getType();
    }
    
    if ("Constraint".equalsIgnoreCase(className)) {
      return new TypeToken<List<Constraint>>(){}.getType();
    }
    
    if ("ConstraintGroup".equalsIgnoreCase(className)) {
      return new TypeToken<List<ConstraintGroup>>(){}.getType();
    }
    
    if ("DataAssociation".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataAssociation>>(){}.getType();
    }
    
    if ("DataEdge".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataEdge>>(){}.getType();
    }
    
    if ("DataEdgeData".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataEdgeData>>(){}.getType();
    }
    
    if ("DataEdgeKey".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataEdgeKey>>(){}.getType();
    }
    
    if ("DataGraph".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataGraph>>(){}.getType();
    }
    
    if ("DataGraphIds".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataGraphIds>>(){}.getType();
    }
    
    if ("DataMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataMetadata>>(){}.getType();
    }
    
    if ("DataSearchResult".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataSearchResult>>(){}.getType();
    }
    
    if ("DataSetColumnMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataSetColumnMetadata>>(){}.getType();
    }
    
    if ("DataSetMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<List<DataSetMetadata>>(){}.getType();
    }
    
    if ("EDM".equalsIgnoreCase(className)) {
      return new TypeToken<List<EDM>>(){}.getType();
    }
    
    if ("EDMdiff".equalsIgnoreCase(className)) {
      return new TypeToken<List<EDMdiff>>(){}.getType();
    }
    
    if ("EdmRequest".equalsIgnoreCase(className)) {
      return new TypeToken<List<EdmRequest>>(){}.getType();
    }
    
    if ("Entity".equalsIgnoreCase(className)) {
      return new TypeToken<List<Entity>>(){}.getType();
    }
    
    if ("EntityDataKey".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityDataKey>>(){}.getType();
    }
    
    if ("EntityDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityDefinition>>(){}.getType();
    }
    
    if ("EntityKey".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityKey>>(){}.getType();
    }
    
    if ("EntityKeyPair".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityKeyPair>>(){}.getType();
    }
    
    if ("EntityLinkingFeatures".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityLinkingFeatures>>(){}.getType();
    }
    
    if ("EntityLinkingFeedback".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityLinkingFeedback>>(){}.getType();
    }
    
    if ("EntityNeighborsFilter".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityNeighborsFilter>>(){}.getType();
    }
    
    if ("EntitySet".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntitySet>>(){}.getType();
    }
    
    if ("EntitySetCollection".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntitySetCollection>>(){}.getType();
    }
    
    if ("EntitySetPropertyMetaData".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntitySetPropertyMetaData>>(){}.getType();
    }
    
    if ("EntitySetSelection".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntitySetSelection>>(){}.getType();
    }
    
    if ("EntityType".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityType>>(){}.getType();
    }
    
    if ("EntityTypeCollection".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityTypeCollection>>(){}.getType();
    }
    
    if ("EntityTypePropertyMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<List<EntityTypePropertyMetadata>>(){}.getType();
    }
    
    if ("Filter".equalsIgnoreCase(className)) {
      return new TypeToken<List<Filter>>(){}.getType();
    }
    
    if ("FilteredDataPageDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<List<FilteredDataPageDefinition>>(){}.getType();
    }
    
    if ("Flight".equalsIgnoreCase(className)) {
      return new TypeToken<List<Flight>>(){}.getType();
    }
    
    if ("FlightPlanParameters".equalsIgnoreCase(className)) {
      return new TypeToken<List<FlightPlanParameters>>(){}.getType();
    }
    
    if ("FlightPlanParametersUpdate".equalsIgnoreCase(className)) {
      return new TypeToken<List<FlightPlanParametersUpdate>>(){}.getType();
    }
    
    if ("FullQualifiedName".equalsIgnoreCase(className)) {
      return new TypeToken<List<FullQualifiedName>>(){}.getType();
    }
    
    if ("HistoricalAppConfig".equalsIgnoreCase(className)) {
      return new TypeToken<List<HistoricalAppConfig>>(){}.getType();
    }
    
    if ("HistoricalAppTypeSetting".equalsIgnoreCase(className)) {
      return new TypeToken<List<HistoricalAppTypeSetting>>(){}.getType();
    }
    
    if ("IndexingState".equalsIgnoreCase(className)) {
      return new TypeToken<List<IndexingState>>(){}.getType();
    }
    
    if ("InlineObject".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineObject>>(){}.getType();
    }
    
    if ("InlineResponse200".equalsIgnoreCase(className)) {
      return new TypeToken<List<InlineResponse200>>(){}.getType();
    }
    
    if ("Integration".equalsIgnoreCase(className)) {
      return new TypeToken<List<Integration>>(){}.getType();
    }
    
    if ("IntegrationJob".equalsIgnoreCase(className)) {
      return new TypeToken<List<IntegrationJob>>(){}.getType();
    }
    
    if ("IntegrationResults".equalsIgnoreCase(className)) {
      return new TypeToken<List<IntegrationResults>>(){}.getType();
    }
    
    if ("IntegrationUpdate".equalsIgnoreCase(className)) {
      return new TypeToken<List<IntegrationUpdate>>(){}.getType();
    }
    
    if ("LinkingFeedback".equalsIgnoreCase(className)) {
      return new TypeToken<List<LinkingFeedback>>(){}.getType();
    }
    
    if ("MaterializedViewAccount".equalsIgnoreCase(className)) {
      return new TypeToken<List<MaterializedViewAccount>>(){}.getType();
    }
    
    if ("MetadataUpdate".equalsIgnoreCase(className)) {
      return new TypeToken<List<MetadataUpdate>>(){}.getType();
    }
    
    if ("NeighborEntityDetails".equalsIgnoreCase(className)) {
      return new TypeToken<List<NeighborEntityDetails>>(){}.getType();
    }
    
    if ("NeighborEntityIds".equalsIgnoreCase(className)) {
      return new TypeToken<List<NeighborEntityIds>>(){}.getType();
    }
    
    if ("NeighborSearchFilter".equalsIgnoreCase(className)) {
      return new TypeToken<List<NeighborSearchFilter>>(){}.getType();
    }
    
    if ("Organization".equalsIgnoreCase(className)) {
      return new TypeToken<List<Organization>>(){}.getType();
    }
    
    if ("OrganizationExternalDatabaseColumn".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrganizationExternalDatabaseColumn>>(){}.getType();
    }
    
    if ("OrganizationExternalDatabaseTable".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrganizationExternalDatabaseTable>>(){}.getType();
    }
    
    if ("OrganizationExternalDatabaseTableColumnsPair".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrganizationExternalDatabaseTableColumnsPair>>(){}.getType();
    }
    
    if ("OrganizationMember".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrganizationMember>>(){}.getType();
    }
    
    if ("Principal".equalsIgnoreCase(className)) {
      return new TypeToken<List<Principal>>(){}.getType();
    }
    
    if ("PropertyDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<List<PropertyDefinition>>(){}.getType();
    }
    
    if ("PropertyType".equalsIgnoreCase(className)) {
      return new TypeToken<List<PropertyType>>(){}.getType();
    }
    
    if ("PropertyUsageSummary".equalsIgnoreCase(className)) {
      return new TypeToken<List<PropertyUsageSummary>>(){}.getType();
    }
    
    if ("Role".equalsIgnoreCase(className)) {
      return new TypeToken<List<Role>>(){}.getType();
    }
    
    if ("Schema".equalsIgnoreCase(className)) {
      return new TypeToken<List<Schema>>(){}.getType();
    }
    
    if ("Search".equalsIgnoreCase(className)) {
      return new TypeToken<List<Search>>(){}.getType();
    }
    
    if ("SearchConstraints".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchConstraints>>(){}.getType();
    }
    
    if ("SearchDetails".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchDetails>>(){}.getType();
    }
    
    if ("SearchResult".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchResult>>(){}.getType();
    }
    
    if ("SearchResultHits".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchResultHits>>(){}.getType();
    }
    
    if ("SearchTerm".equalsIgnoreCase(className)) {
      return new TypeToken<List<SearchTerm>>(){}.getType();
    }
    
    if ("SecurablePrincipal".equalsIgnoreCase(className)) {
      return new TypeToken<List<SecurablePrincipal>>(){}.getType();
    }
    
    if ("SmsEntitySetInformation".equalsIgnoreCase(className)) {
      return new TypeToken<List<SmsEntitySetInformation>>(){}.getType();
    }
    
    if ("SortDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<List<SortDefinition>>(){}.getType();
    }
    
    if ("UserAppConfig".equalsIgnoreCase(className)) {
      return new TypeToken<List<UserAppConfig>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("AccessCheck".equalsIgnoreCase(className)) {
      return new TypeToken<AccessCheck>(){}.getType();
    }
    
    if ("Ace".equalsIgnoreCase(className)) {
      return new TypeToken<Ace>(){}.getType();
    }
    
    if ("Acl".equalsIgnoreCase(className)) {
      return new TypeToken<Acl>(){}.getType();
    }
    
    if ("AclData".equalsIgnoreCase(className)) {
      return new TypeToken<AclData>(){}.getType();
    }
    
    if ("AdvancedSearch".equalsIgnoreCase(className)) {
      return new TypeToken<AdvancedSearch>(){}.getType();
    }
    
    if ("App".equalsIgnoreCase(className)) {
      return new TypeToken<App>(){}.getType();
    }
    
    if ("AppRole".equalsIgnoreCase(className)) {
      return new TypeToken<AppRole>(){}.getType();
    }
    
    if ("AppRolePermissions".equalsIgnoreCase(className)) {
      return new TypeToken<AppRolePermissions>(){}.getType();
    }
    
    if ("Association".equalsIgnoreCase(className)) {
      return new TypeToken<Association>(){}.getType();
    }
    
    if ("AssociationDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<AssociationDefinition>(){}.getType();
    }
    
    if ("AssociationType".equalsIgnoreCase(className)) {
      return new TypeToken<AssociationType>(){}.getType();
    }
    
    if ("Auth0userBasic".equalsIgnoreCase(className)) {
      return new TypeToken<Auth0userBasic>(){}.getType();
    }
    
    if ("Authorization".equalsIgnoreCase(className)) {
      return new TypeToken<Authorization>(){}.getType();
    }
    
    if ("AuthorizedObjectsSearchResult".equalsIgnoreCase(className)) {
      return new TypeToken<AuthorizedObjectsSearchResult>(){}.getType();
    }
    
    if ("BulkDataCreation".equalsIgnoreCase(className)) {
      return new TypeToken<BulkDataCreation>(){}.getType();
    }
    
    if ("CollectionTemplateType".equalsIgnoreCase(className)) {
      return new TypeToken<CollectionTemplateType>(){}.getType();
    }
    
    if ("Constraint".equalsIgnoreCase(className)) {
      return new TypeToken<Constraint>(){}.getType();
    }
    
    if ("ConstraintGroup".equalsIgnoreCase(className)) {
      return new TypeToken<ConstraintGroup>(){}.getType();
    }
    
    if ("DataAssociation".equalsIgnoreCase(className)) {
      return new TypeToken<DataAssociation>(){}.getType();
    }
    
    if ("DataEdge".equalsIgnoreCase(className)) {
      return new TypeToken<DataEdge>(){}.getType();
    }
    
    if ("DataEdgeData".equalsIgnoreCase(className)) {
      return new TypeToken<DataEdgeData>(){}.getType();
    }
    
    if ("DataEdgeKey".equalsIgnoreCase(className)) {
      return new TypeToken<DataEdgeKey>(){}.getType();
    }
    
    if ("DataGraph".equalsIgnoreCase(className)) {
      return new TypeToken<DataGraph>(){}.getType();
    }
    
    if ("DataGraphIds".equalsIgnoreCase(className)) {
      return new TypeToken<DataGraphIds>(){}.getType();
    }
    
    if ("DataMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<DataMetadata>(){}.getType();
    }
    
    if ("DataSearchResult".equalsIgnoreCase(className)) {
      return new TypeToken<DataSearchResult>(){}.getType();
    }
    
    if ("DataSetColumnMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<DataSetColumnMetadata>(){}.getType();
    }
    
    if ("DataSetMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<DataSetMetadata>(){}.getType();
    }
    
    if ("EDM".equalsIgnoreCase(className)) {
      return new TypeToken<EDM>(){}.getType();
    }
    
    if ("EDMdiff".equalsIgnoreCase(className)) {
      return new TypeToken<EDMdiff>(){}.getType();
    }
    
    if ("EdmRequest".equalsIgnoreCase(className)) {
      return new TypeToken<EdmRequest>(){}.getType();
    }
    
    if ("Entity".equalsIgnoreCase(className)) {
      return new TypeToken<Entity>(){}.getType();
    }
    
    if ("EntityDataKey".equalsIgnoreCase(className)) {
      return new TypeToken<EntityDataKey>(){}.getType();
    }
    
    if ("EntityDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<EntityDefinition>(){}.getType();
    }
    
    if ("EntityKey".equalsIgnoreCase(className)) {
      return new TypeToken<EntityKey>(){}.getType();
    }
    
    if ("EntityKeyPair".equalsIgnoreCase(className)) {
      return new TypeToken<EntityKeyPair>(){}.getType();
    }
    
    if ("EntityLinkingFeatures".equalsIgnoreCase(className)) {
      return new TypeToken<EntityLinkingFeatures>(){}.getType();
    }
    
    if ("EntityLinkingFeedback".equalsIgnoreCase(className)) {
      return new TypeToken<EntityLinkingFeedback>(){}.getType();
    }
    
    if ("EntityNeighborsFilter".equalsIgnoreCase(className)) {
      return new TypeToken<EntityNeighborsFilter>(){}.getType();
    }
    
    if ("EntitySet".equalsIgnoreCase(className)) {
      return new TypeToken<EntitySet>(){}.getType();
    }
    
    if ("EntitySetCollection".equalsIgnoreCase(className)) {
      return new TypeToken<EntitySetCollection>(){}.getType();
    }
    
    if ("EntitySetPropertyMetaData".equalsIgnoreCase(className)) {
      return new TypeToken<EntitySetPropertyMetaData>(){}.getType();
    }
    
    if ("EntitySetSelection".equalsIgnoreCase(className)) {
      return new TypeToken<EntitySetSelection>(){}.getType();
    }
    
    if ("EntityType".equalsIgnoreCase(className)) {
      return new TypeToken<EntityType>(){}.getType();
    }
    
    if ("EntityTypeCollection".equalsIgnoreCase(className)) {
      return new TypeToken<EntityTypeCollection>(){}.getType();
    }
    
    if ("EntityTypePropertyMetadata".equalsIgnoreCase(className)) {
      return new TypeToken<EntityTypePropertyMetadata>(){}.getType();
    }
    
    if ("Filter".equalsIgnoreCase(className)) {
      return new TypeToken<Filter>(){}.getType();
    }
    
    if ("FilteredDataPageDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<FilteredDataPageDefinition>(){}.getType();
    }
    
    if ("Flight".equalsIgnoreCase(className)) {
      return new TypeToken<Flight>(){}.getType();
    }
    
    if ("FlightPlanParameters".equalsIgnoreCase(className)) {
      return new TypeToken<FlightPlanParameters>(){}.getType();
    }
    
    if ("FlightPlanParametersUpdate".equalsIgnoreCase(className)) {
      return new TypeToken<FlightPlanParametersUpdate>(){}.getType();
    }
    
    if ("FullQualifiedName".equalsIgnoreCase(className)) {
      return new TypeToken<FullQualifiedName>(){}.getType();
    }
    
    if ("HistoricalAppConfig".equalsIgnoreCase(className)) {
      return new TypeToken<HistoricalAppConfig>(){}.getType();
    }
    
    if ("HistoricalAppTypeSetting".equalsIgnoreCase(className)) {
      return new TypeToken<HistoricalAppTypeSetting>(){}.getType();
    }
    
    if ("IndexingState".equalsIgnoreCase(className)) {
      return new TypeToken<IndexingState>(){}.getType();
    }
    
    if ("InlineObject".equalsIgnoreCase(className)) {
      return new TypeToken<InlineObject>(){}.getType();
    }
    
    if ("InlineResponse200".equalsIgnoreCase(className)) {
      return new TypeToken<InlineResponse200>(){}.getType();
    }
    
    if ("Integration".equalsIgnoreCase(className)) {
      return new TypeToken<Integration>(){}.getType();
    }
    
    if ("IntegrationJob".equalsIgnoreCase(className)) {
      return new TypeToken<IntegrationJob>(){}.getType();
    }
    
    if ("IntegrationResults".equalsIgnoreCase(className)) {
      return new TypeToken<IntegrationResults>(){}.getType();
    }
    
    if ("IntegrationUpdate".equalsIgnoreCase(className)) {
      return new TypeToken<IntegrationUpdate>(){}.getType();
    }
    
    if ("LinkingFeedback".equalsIgnoreCase(className)) {
      return new TypeToken<LinkingFeedback>(){}.getType();
    }
    
    if ("MaterializedViewAccount".equalsIgnoreCase(className)) {
      return new TypeToken<MaterializedViewAccount>(){}.getType();
    }
    
    if ("MetadataUpdate".equalsIgnoreCase(className)) {
      return new TypeToken<MetadataUpdate>(){}.getType();
    }
    
    if ("NeighborEntityDetails".equalsIgnoreCase(className)) {
      return new TypeToken<NeighborEntityDetails>(){}.getType();
    }
    
    if ("NeighborEntityIds".equalsIgnoreCase(className)) {
      return new TypeToken<NeighborEntityIds>(){}.getType();
    }
    
    if ("NeighborSearchFilter".equalsIgnoreCase(className)) {
      return new TypeToken<NeighborSearchFilter>(){}.getType();
    }
    
    if ("Organization".equalsIgnoreCase(className)) {
      return new TypeToken<Organization>(){}.getType();
    }
    
    if ("OrganizationExternalDatabaseColumn".equalsIgnoreCase(className)) {
      return new TypeToken<OrganizationExternalDatabaseColumn>(){}.getType();
    }
    
    if ("OrganizationExternalDatabaseTable".equalsIgnoreCase(className)) {
      return new TypeToken<OrganizationExternalDatabaseTable>(){}.getType();
    }
    
    if ("OrganizationExternalDatabaseTableColumnsPair".equalsIgnoreCase(className)) {
      return new TypeToken<OrganizationExternalDatabaseTableColumnsPair>(){}.getType();
    }
    
    if ("OrganizationMember".equalsIgnoreCase(className)) {
      return new TypeToken<OrganizationMember>(){}.getType();
    }
    
    if ("Principal".equalsIgnoreCase(className)) {
      return new TypeToken<Principal>(){}.getType();
    }
    
    if ("PropertyDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<PropertyDefinition>(){}.getType();
    }
    
    if ("PropertyType".equalsIgnoreCase(className)) {
      return new TypeToken<PropertyType>(){}.getType();
    }
    
    if ("PropertyUsageSummary".equalsIgnoreCase(className)) {
      return new TypeToken<PropertyUsageSummary>(){}.getType();
    }
    
    if ("Role".equalsIgnoreCase(className)) {
      return new TypeToken<Role>(){}.getType();
    }
    
    if ("Schema".equalsIgnoreCase(className)) {
      return new TypeToken<Schema>(){}.getType();
    }
    
    if ("Search".equalsIgnoreCase(className)) {
      return new TypeToken<Search>(){}.getType();
    }
    
    if ("SearchConstraints".equalsIgnoreCase(className)) {
      return new TypeToken<SearchConstraints>(){}.getType();
    }
    
    if ("SearchDetails".equalsIgnoreCase(className)) {
      return new TypeToken<SearchDetails>(){}.getType();
    }
    
    if ("SearchResult".equalsIgnoreCase(className)) {
      return new TypeToken<SearchResult>(){}.getType();
    }
    
    if ("SearchResultHits".equalsIgnoreCase(className)) {
      return new TypeToken<SearchResultHits>(){}.getType();
    }
    
    if ("SearchTerm".equalsIgnoreCase(className)) {
      return new TypeToken<SearchTerm>(){}.getType();
    }
    
    if ("SecurablePrincipal".equalsIgnoreCase(className)) {
      return new TypeToken<SecurablePrincipal>(){}.getType();
    }
    
    if ("SmsEntitySetInformation".equalsIgnoreCase(className)) {
      return new TypeToken<SmsEntitySetInformation>(){}.getType();
    }
    
    if ("SortDefinition".equalsIgnoreCase(className)) {
      return new TypeToken<SortDefinition>(){}.getType();
    }
    
    if ("UserAppConfig".equalsIgnoreCase(className)) {
      return new TypeToken<UserAppConfig>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
