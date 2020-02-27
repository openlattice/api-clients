# API clients

Because we define our API-endpoints following the openAPI specifications, we can auto-generate clients to interact with the API.

We are currently supporting the following languages:
- R
- android
- go
- javascript
- python
- ruby
- rust

Other languages that can be supported upon interest:
ActionScript, Ada, Apex, Bash, C, C# (.net 2.0, 3.5 or later, .NET Standard 1.3 - 2.0, .NET Core 2.0), C++ (cpp-restsdk, Qt5, Tizen), Clojure, Dart (1.x, 2.x), Elixir, Elm, Eiffel, Erlang, Go, Groovy, Haskell (http-client, Servant), Java (Jersey1.x, Jersey2.x, OkHttp, Retrofit1.x, Retrofit2.x, Feign, RestTemplate, RESTEasy, Vertx, Google API Client Library for Java, Rest-assured, Spring 5 Web Client, MicroProfile Rest Client), k6, Kotlin, Lua, Nim, Node.js/JavaScript (ES5, ES6, AngularJS with Google Closure Compiler annotations, Flow types), Objective-C, OCaml, Perl, PHP, PowerShell, Python, R, Ruby, Rust (rust, rust-server), Scala (akka, http4s, scalaz, swagger-async-httpclient), Swift (2.x, 3.x, 4.x, 5.x), Typescript (AngularJS, Angular (2.x - 8.x), Aurelia, Axios, Fetch, Inversify, jQuery, Node, Rxjs)

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

    docker run -it -v $APIDIR:$APIDIR openlattice/openapi-generator-cli generate -i $APIDIR/openlattice.yaml -g go -o $APIDIR/build/openapi/go -c $APIDIR/oas-config.json

    docker run -it -v $APIDIR:$APIDIR openlattice/openapi-generator-cli generate -i $APIDIR/openlattice.yaml -g android -o $APIDIR/build/openapi/android -c $APIDIR/oas-config.json

    docker run -it -v $APIDIR:$APIDIR openlattice/openapi-generator-cli generate -i $APIDIR/openlattice.yaml -g ruby -o $APIDIR/build/openapi/ruby -c $APIDIR/oas-config.json

    docker run -it -v $APIDIR:$APIDIR openlattice/openapi-generator-cli generate -i $APIDIR/openlattice.yaml -g rust -o $APIDIR/build/openapi/rust -c $APIDIR/oas-config.json

    docker run -it -v $APIDIR:$APIDIR openlattice/openapi-generator-cli generate -i $APIDIR/openlattice.yaml -g javascript -o $APIDIR/build/openapi/javascript -c $APIDIR/oas-config.json


    rsync -azP $APIDIR/build/openapi/ $CLIENTDIR

## Building the docker file

We are using our own version of the client generator.  This because openapi-tools introduced a breaking change wrt capitalization of operation ID's.  Our fork can be found here: https://github.com/Lattice-Works/openapi-generator

If there is need to rebuild the docker file of our openapi-generation:

    docker build -t openlattice/openapi-generator-cli .

The docker container is avaiable from docker hub.