Connecting to Atlas DB
================
Yue Li
1/15/2021

Atlas is a production PostgreSQL server where all of the unstandardized
data lives. For any organizations with spatial data, the PostGIS
extension is installed. This tutorial will walk through the steps of
connecting to the Atlas database, uploading data to Atlas, and reading
data from Atlas using R. Make sure to first have the `DBI` library and
the RPostgres library installed. If this is your first time using DBI
and RPostgres, uncomment and run the install.packages line. This
tutorial will also be using tidyverse to create sample data to upload.
To follow along, please also install tidyverse package as well.

There are two different types of ways to log into Atlas to download and
upload data. First, there is your own Atlas-specific user name and
password that is unique only to you (not to be confused with your login
to OpenLattice). Your ability to access datasets within Atlas depends on
whether you have been granted permission to the datasets within Atlas.

If you are an owner of an organization, you will also see additional
details about a database when you go to the [Orgs
page](https://staging.openlattice.com/orgs/#/orgs). Click on an
organization and go to the database details. This will give you an
additional user name and password you can use to log into Atlas. This is
an owner-level login and you will be able to see all of the data that
lives on Atlas in that specific organization’s database. Any owner of an
organization will be able to access the database through the
organization credentials.

More detailed guide to setting up database connections is down below.

``` r
# install.packages("DBI")
# install.packages("RPostgres")
# install.packages("tidyverse")
library(DBI)
library(RPostgres)
library(tidyverse)
```

    ## ── Attaching packages ───────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✓ ggplot2 3.3.2     ✓ purrr   0.3.4
    ## ✓ tibble  3.0.1     ✓ dplyr   1.0.0
    ## ✓ tidyr   1.1.0     ✓ stringr 1.4.0
    ## ✓ readr   1.3.1     ✓ forcats 0.5.0

    ## ── Conflicts ──────────────────────────────────────────────────────────────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

## Setting up connection

First, we set up the configuration. To find username and password, go to
the [Orgs page](https://staging.openlattice.com/orgs/#/orgs) and go to
account tab, located at the top of the navigation bar next to the logo.
There you will find “Atlas Username” and “Atlas Credential”. Copy and
paste and set that as your username and password.

![Account page](/Users/yueli/Desktop/account_details.png)

For the database name, search for the organization in the search bar,
and click on the desired organization. This will lead you to a page that
looks something like this.

![Organization main page](/Users/yueli/Desktop/ss_org_page.png) Go to
Database details. This will give you information such as the
organization ID and the database name. The database name will go under
dbname.

For owners of an organization, you will also see additional information
in the database details such as the database username and database
credentials as shown in the image below. You can use those credentials
to log into Atlas.

![Database details](/Users/yueli/Desktop/db_details.png)

``` r
# CONNECT!
con <- dbConnect(
  Postgres(),
  host = "atlas.openlattice.com",
  user = user,
  password = password,
  dbname = dbname,
  port = 30001
)
```

## Write data

Now that the connection is set up, you can easily upload data. Note,
there are two schemas, openlattice and staging. Openlattice is generally
for production-ready data, while staging can hold temporary datasets.
The default schema is openlattice.

Here, the first argument is the connection, the second argument is the
name of the table, and the third argument is the table to upload.

There are additional arguments that may be useful for uploading data:

  - overwrite (default: FALSE) - if TRUE, deletes existing table and
    replaces it

  - append (default: FALSE) - if TRUE, binds existing table with new
    table

<!-- end list -->

``` r
fake_data <- tribble(
  ~ "x", ~ "y", ~"z",
  1, "Bob", "blue",
  2, "Casey", "green",
  14, "Jake", "orange"
)

dbWriteTable(conn = con, name = "fake_data", value = fake_data, overwrite = TRUE)
```

## Read data

We can now see the data we uploaded:

``` r
data <- dbReadTable(conn = con, name = "fake_data")

data %>% 
  head()
```

    ##    x     y      z
    ## 1  1   Bob   blue
    ## 2  2 Casey  green
    ## 3 14  Jake orange
