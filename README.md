# API clients

Because we define our API-endpoints following the openAPI specifications, we can auto-generate clients to interact with the API.

## Python

The python client works out of the box and can easily be installed, from the python directory (`./api-clients/python/`)

    cd python
    python setup.py install

## R

To install the R-clients, from this directory (`./api-clients/`)

    R CMD install R

## To build the packages from the openlattice.yaml-file

This is the code to generate these libraries based on the api-specifications.

    APIDIR="$HOME/Documents/openlattice/api/"
    CLIENTDIR="$HOME/Documents/projects/projectsOngoing/api-clients/"
    rm -rf $APIDIR/build/openapi/*
    rm -rf $CLIENTDIR/R
    rm -rf $CLIENTDIR/python
    rm -rf $CLIENTDIR/javascript

    cd $APIDIR
    docker run -it -v $APIDIR:$APIDIR openlattice/openapi-generator-cli generate -i $APIDIR/openlattice.yaml -g python -o $APIDIR/build/openapi/python -c $APIDIR/oas-config.json

    docker run -it -v $APIDIR:$APIDIR openlattice/openapi-generator-cli generate -i $APIDIR/openlattice.yaml -g r -o $APIDIR/build/openapi/R -c $APIDIR/oas-config.json

    rsync -azP $APIDIR/build/openapi/ $CLIENTDIR

## Building the docker file

We are using our own version of the client generator.  This because openapi-tools introduced a breaking change wrt capitalization of operation ID's.  Our fork can be found here: https://github.com/Lattice-Works/openapi-generator

If there is need to rebuild the docker file of our openapi-generation:

    docker build -t openlattice/openapi-generator-cli .
