#!/bin/bash

# global variables
archetypeVersion="0.0.7"

# usage
programname=$0
function usage {
    echo "usage: $programname [-a artifactId]"
    echo "  -a artifactId   specifies the artifactId"
    exit 1
}

# argument assignment
while getopts a: option
do
    case "${option}" in
        a) artifactId=${OPTARG};;
    esac
done

function create {
    systemTestName="$artifactId-st"
    serviceName="$artifactId-service"

    mvn archetype:generate -DarchetypeGroupId=com.airhacks -DarchetypeArtifactId=jakartaee-essentials-archetype -DarchetypeVersion=$archetypeVersion -DartifactId=$artifactId -DgroupId=dev.chf

    exit 0
}

if [ -z "$1" ];
then
    usage
else
    echo "Generating Jakarta EE project"
    create
fi