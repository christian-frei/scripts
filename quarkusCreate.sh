#!/bin/bash

# global variables
quarkusVersion="1.13.1.Final"

# usage
programname=$0
function usage {
    echo "usage: $programname [-a artifactId] [-g groupId]"
    echo "  -a artifactId   specifies the artifactId"
    echo "  -g groupId      specifies the groupId"
    exit 1
}

# argument assignment
while getopts a:g: option
do
    case "${option}" in
        a) artifactId=${OPTARG};;
        g) groupId=${OPTARG};;
    esac
done

function create {
    systemTestName="$artifactId-st"
    serviceName="$artifactId-service"

    mkdir $serviceName
    cd $serviceName

    # main service
    mvn io.quarkus:quarkus-maven-plugin:$quarkusVersion:create \
        -DprojectGroupId=$groupId \
        -DprojectArtifactId=$artifactId \
        -DclassName="$groupId.ping.boundary.PingResource" \
        -Dpath="/ping" \
        -Dextensions="io.quarkus:quarkus-resteasy-jsonb,io.quarkus:quarkus-smallrye-openapi,io.quarkus:quarkus-smallrye-metrics"

    # system test
    mvn io.quarkus:quarkus-maven-plugin:$quarkusVersion:create \
        -DprojectGroupId=$groupId \
        -DprojectArtifactId=$systemTestName \
        -Dextensions="io.quarkus:quarkus-resteasy-jsonb,io.quarkus:quarkus-rest-client-jsonb"

    exit 0
}

if [ -z "$1" ];
then
    usage
else
    echo "Generating quarkus service and system-test"
    create
fi
