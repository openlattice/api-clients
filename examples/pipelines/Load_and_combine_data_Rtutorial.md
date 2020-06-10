-   [Loading the api-client](#loading-the-api-client)
-   [Loading the APIs](#loading-the-apis)
-   [Using basic functions](#using-basic-functions)
-   [Getting the neighbors](#getting-the-neighbors)
-   [Merging the Tables](#merging-the-tables)

### Loading the api-client

After we’ve installed the R library for the OL-API, we can load the
library, set the basepath and our authentication, and get the client.
Note that the functions are **veeeerry** similar to the python ones.
(You can find you jwt token in the [**account
page**](https://openlattice.com/gallery/#/home) of your openlattice
account)

    jwt = "***"

    library(devtools)
    library(openlattice)
    library(knitr)
    library(httr)
    library(magrittr) #for piping
    library(purrr) #map_dfr function
    library(tibble)
    library(dplyr) 

    basepath = "https://api.openlattice.com"

    header_params = unlist(list("Authorization" = paste("Bearer", jwt)))

    client <- ApiClient$new(
      defaultHeaders = header_params,
      basePath = basepath
    )

### Loading the APIs

Next, we load the APIs.

    edmApi <- EdmApi$new(apiClient = client)
    dataApi <- DataApi$new(apiClient = client)
    searchApi <- SearchApi$new(apiClient = client)

### Using basic functions

We now load the entity set IDs and the data. First, decide what data you
want. Let’s say we have integrated data from a sheriff’s office,
supportive housing group, and detox center. We want to look at arrestees
and any housing statuses they’ve given in the past. Use your flight
diagrams to decide upon entity sets and relationships and get their
names: from your OpenLattice integration, you should have a diagram of
the graph data model that your data now resides in. The one for our
healthcare demonstration data is here.
<img src="demohealth.pdf" alt="DemoHealth EDM diagram"  width="4200" height="2000">

We can see that **DemoPatients -&gt; DemoLivesAt -&gt; DemoHousings**
gives us people and any housing status associated with them. Let’s say
you linked sheriff and health data in a new person dataset called
**“DemoLinkedPeople2”**. We know that by calling upon the linked people
we can include those arrested.

Unfortunately, there’s no autogenerated documentation for the libraries,
but for the specific names of the functions, you can look at the python
documentation.

    src_id <- edmApi$get_entity_set_id("DemoLinkedPeople2")
    edge_id <- edmApi$get_entity_set_id("DemoLivesAt")
    dst_id <- edmApi$get_entity_set_id("DemoHousings")

    src_data <- dataApi$load_entity_set_data(src_id) %>% sapply(as.character) %>% as_tibble()
    edge_data <- dataApi$load_entity_set_data(edge_id) %>% sapply(as.character) %>% as_tibble()
    dst_data <- dataApi$load_entity_set_data(dst_id) %>% sapply(as.character) %>% as_tibble()

    kable(head(src_data))

<table>
<thead>
<tr class="header">
<th style="text-align: left;">nc.PersonEthnicity</th>
<th style="text-align: left;">nc.PersonRace</th>
<th style="text-align: left;">nc.PersonBirthDate</th>
<th style="text-align: left;">nc.PersonSurName</th>
<th style="text-align: left;">nc.SubjectIdentification</th>
<th style="text-align: left;">openlattice.@id</th>
<th style="text-align: left;">ol.datasource</th>
<th style="text-align: left;">nc.PersonSex</th>
<th style="text-align: left;">nc.PersonGivenName</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">white</td>
<td style="text-align: left;">1955-12-28</td>
<td style="text-align: left;">Calhoun</td>
<td style="text-align: left;">6dee78dc-aa81-4020-8c23-a44f6ccb7de2</td>
<td style="text-align: left;">003b0000-0000-0000-8000-0000000020d7</td>
<td style="text-align: left;">Any County Sheriff</td>
<td style="text-align: left;">M</td>
<td style="text-align: left;">Jose</td>
</tr>
<tr class="even">
<td style="text-align: left;">c(“nonhispanic”, “hispanic”)</td>
<td style="text-align: left;">c(“white”, “other”)</td>
<td style="text-align: left;">1981-01-15</td>
<td style="text-align: left;">Kelly</td>
<td style="text-align: left;">b16e1e68-1919-4409-94cf-514b32596040</td>
<td style="text-align: left;">00e40000-0000-0000-8000-00000000207e</td>
<td style="text-align: left;">Anytown Police Dept.</td>
<td style="text-align: left;">M</td>
<td style="text-align: left;">Jose</td>
</tr>
<tr class="odd">
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">white</td>
<td style="text-align: left;">1953-01-03</td>
<td style="text-align: left;">c(“Patton”, “Herrera”)</td>
<td style="text-align: left;">a125db71-4299-4c02-9133-316c6b135108</td>
<td style="text-align: left;">01140000-0000-0000-8000-000000003159</td>
<td style="text-align: left;">Anytown Police Dept.</td>
<td style="text-align: left;">F</td>
<td style="text-align: left;">Anna</td>
</tr>
<tr class="even">
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">asian</td>
<td style="text-align: left;">1967-03-20</td>
<td style="text-align: left;">Koch</td>
<td style="text-align: left;">ba086259-551e-4764-be3c-a3a44d34de92</td>
<td style="text-align: left;">02a80000-0000-0000-8000-0000000020e8</td>
<td style="text-align: left;">c(“Forest Outpatient Treatment”, “Anytown Police Dept.”)</td>
<td style="text-align: left;">F</td>
<td style="text-align: left;">Tamara</td>
</tr>
<tr class="odd">
<td style="text-align: left;">c(“hispanic”, “nonhispanic”)</td>
<td style="text-align: left;">white</td>
<td style="text-align: left;">1996-08-14</td>
<td style="text-align: left;">c(“Swanson”, “Mitchell”, “Campbell”)</td>
<td style="text-align: left;">8f319acd-0366-4320-9c65-f9bb4ca12547</td>
<td style="text-align: left;">03810000-0000-0000-8000-0000000035cb</td>
<td style="text-align: left;">Anytown Police Dept.</td>
<td style="text-align: left;">F</td>
<td style="text-align: left;">Caitlyn</td>
</tr>
<tr class="even">
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">c(“pacisland”, “asian”, “black”, “white”)</td>
<td style="text-align: left;">1951-09-23</td>
<td style="text-align: left;">Roberts</td>
<td style="text-align: left;">7703db99-587c-4ae4-863c-82930d193b8f</td>
<td style="text-align: left;">04f20000-0000-0000-8000-000000002076</td>
<td style="text-align: left;">Any County Sheriff</td>
<td style="text-align: left;">M</td>
<td style="text-align: left;">Bryan</td>
</tr>
</tbody>
</table>

### Getting the neighbors

To join two entity sets (through an edge/association) we must find the
unique ID that each data point, or entity, has in the three tables: the
source, destination, and association. We call these IDs the neighbors.
First, we can create a filter to find all neigbors between two entity
sets (connected through the edge/association), for a subset of ID’s
(entity keys):

    entkeys = unlist(src_data['openlattice.@id'], use.names = FALSE)
    filter = NeighborSearchFilter$new(
      entityKeyIds = entkeys,
      edge = edge_id,
      dst = dst_id,
      src = src_id
    )

Using the filter, we can grab all the neighbors and put them in an edges
table. Here we are renaming the appropriate columns ‘src’ and ‘dst’ for
clarity.

    edges = searchApi$execute_filtered_entity_neighbor_search(src_id, filter)

    # transform the edges table to have src/dst columns
    transform_edges <- function(name, edges){
      neighdetails <- edges[[name]][['neighborDetails']]
      if (dim(neighdetails)[1] == 1){
        newtable <- lapply(neighdetails, as.character)
      } else {
        newtable <- neighdetails %>% sapply(as.character)
      }
      newtable <- newtable %>% as_tibble() %>% select('openlattice.@id')
      names(newtable) <- 'dst'
      newtable['src'] <- name
      return (newtable)
    }

    edges_table <- names(edges) %>% 
      map_dfr(transform_edges, edges)

    kable(head(edges_table))

<table>
<thead>
<tr class="header">
<th style="text-align: left;">dst</th>
<th style="text-align: left;">src</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">9a9a0000-0000-0000-8000-00000000321a</td>
</tr>
<tr class="even">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">a6c10000-0000-0000-8000-000000003545</td>
</tr>
<tr class="odd">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">d18b0000-0000-0000-8000-00000000358e</td>
</tr>
<tr class="even">
<td style="text-align: left;">d5000000-0000-0000-8000-000000003234</td>
<td style="text-align: left;">d18b0000-0000-0000-8000-00000000358e</td>
</tr>
<tr class="odd">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">20400000-0000-0000-8000-0000000032c8</td>
</tr>
<tr class="even">
<td style="text-align: left;">d5000000-0000-0000-8000-000000003234</td>
<td style="text-align: left;">20400000-0000-0000-8000-0000000032c8</td>
</tr>
</tbody>
</table>

### Merging the Tables

Now that we have the edges\_table, it’s just a matter of left joining
all tables to the edges table.

    joined_table <- left_join (edges_table, src_data, by = c(src="openlattice.@id")) %>%
      left_join (dst_data,by=c(dst="openlattice.@id"))

    kable(head(joined_table))

<table>
<thead>
<tr class="header">
<th style="text-align: left;">dst</th>
<th style="text-align: left;">src</th>
<th style="text-align: left;">nc.PersonEthnicity</th>
<th style="text-align: left;">nc.PersonRace</th>
<th style="text-align: left;">nc.PersonBirthDate</th>
<th style="text-align: left;">nc.PersonSurName</th>
<th style="text-align: left;">nc.SubjectIdentification</th>
<th style="text-align: left;">ol.datasource</th>
<th style="text-align: left;">nc.PersonSex</th>
<th style="text-align: left;">nc.PersonGivenName</th>
<th style="text-align: left;">ol.id</th>
<th style="text-align: left;">ol.type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">9a9a0000-0000-0000-8000-00000000321a</td>
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">black</td>
<td style="text-align: left;">1988-07-27</td>
<td style="text-align: left;">Rogers</td>
<td style="text-align: left;">40a893ed-8b0d-43f6-8ff5-fd69d7a4737e</td>
<td style="text-align: left;">c(“Forest Outpatient Treatment”, “Any County Sheriff”)</td>
<td style="text-align: left;">F</td>
<td style="text-align: left;">Gina</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
</tr>
<tr class="even">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">a6c10000-0000-0000-8000-000000003545</td>
<td style="text-align: left;">NULL</td>
<td style="text-align: left;">NULL</td>
<td style="text-align: left;">1942-12-01</td>
<td style="text-align: left;">Alvarado</td>
<td style="text-align: left;">163c7433-c3f9-4ccf-89ef-55b1951c004d</td>
<td style="text-align: left;">State Hospital</td>
<td style="text-align: left;">F</td>
<td style="text-align: left;">Megan</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
</tr>
<tr class="odd">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">d18b0000-0000-0000-8000-00000000358e</td>
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">c(“pacisland”, “white”)</td>
<td style="text-align: left;">1950-10-10</td>
<td style="text-align: left;">Cooley</td>
<td style="text-align: left;">ffce8c91-9c69-4dd5-b640-fdb8ff815eb14</td>
<td style="text-align: left;">c(“State Hospital”, “Anytown Rehabilitation Center”)</td>
<td style="text-align: left;">F</td>
<td style="text-align: left;">Jennifer</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
</tr>
<tr class="even">
<td style="text-align: left;">d5000000-0000-0000-8000-000000003234</td>
<td style="text-align: left;">d18b0000-0000-0000-8000-00000000358e</td>
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">c(“pacisland”, “white”)</td>
<td style="text-align: left;">1950-10-10</td>
<td style="text-align: left;">Cooley</td>
<td style="text-align: left;">ffce8c91-9c69-4dd5-b640-fdb8ff815eb14</td>
<td style="text-align: left;">c(“State Hospital”, “Anytown Rehabilitation Center”)</td>
<td style="text-align: left;">F</td>
<td style="text-align: left;">Jennifer</td>
<td style="text-align: left;">HOMELESS</td>
<td style="text-align: left;">HOMELESS</td>
</tr>
<tr class="odd">
<td style="text-align: left;">cef20000-0000-0000-8000-0000000032a9</td>
<td style="text-align: left;">20400000-0000-0000-8000-0000000032c8</td>
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">white</td>
<td style="text-align: left;">1958-06-21</td>
<td style="text-align: left;">Yoder</td>
<td style="text-align: left;">a3af0b70-c8ff-47bc-9a4b-e34e31e0960c</td>
<td style="text-align: left;">c(“County Methadone Treatment Program”, “State Hospital”, “Anytown Rehabilitation Center”)</td>
<td style="text-align: left;">M</td>
<td style="text-align: left;">Jordan</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
<td style="text-align: left;">INDEPENDENT LIVING</td>
</tr>
<tr class="even">
<td style="text-align: left;">d5000000-0000-0000-8000-000000003234</td>
<td style="text-align: left;">20400000-0000-0000-8000-0000000032c8</td>
<td style="text-align: left;">nonhispanic</td>
<td style="text-align: left;">white</td>
<td style="text-align: left;">1958-06-21</td>
<td style="text-align: left;">Yoder</td>
<td style="text-align: left;">a3af0b70-c8ff-47bc-9a4b-e34e31e0960c</td>
<td style="text-align: left;">c(“County Methadone Treatment Program”, “State Hospital”, “Anytown Rehabilitation Center”)</td>
<td style="text-align: left;">M</td>
<td style="text-align: left;">Jordan</td>
<td style="text-align: left;">HOMELESS</td>
<td style="text-align: left;">HOMELESS</td>
</tr>
</tbody>
</table>