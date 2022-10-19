#!/bin/bash

# global variables
currentDir=$(pwd)

# usage
programname=$0
function usage {
    echo "usage: $programname [-d directory]"
    echo "  -d directory   the directory containing the puml files"
    exit 1
}

# argument assignment
while getopts d: option
do
    case "${option}" in
        d) pumlDirectory=${OPTARG};;
    esac
done

function convert {
    cd $pumlDirectory
    for pumlFile in *.puml; do
        plantuml $pumlFile -o "tmp"
        pngFileName="${pumlFile%.*}.png"
        mv ./tmp/* $pngFileName
    done
    rm -rf ./tmp
}

# main
if [ -z "$1" ];
then
    usage
else
    echo "Converting puml files to png"
    convert
    cd $currentDir
    exit 0
fi