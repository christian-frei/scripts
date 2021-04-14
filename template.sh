#!/bin/bash

# global variables
globalVar1="foo"
globalVar2="bar"
globalVar3="fud"

# usage
programname=$0
function usage {
    echo "usage: $programname [-abch] [-f infile] [-o outfile]"
    echo "  -a      turn on feature a"
    echo "  -b      turn on feature b"
    echo "  -c      turn on feature c"
    echo "  -h      display help"
    echo "  -f infile   specify input file infile"
    echo "  -o outfile  specify output file outfile"
    exit 1
}

# argument assignment
while getopts a:g: option
do
    case "${option}" in
        f) artifactId=${OPTARG};;
        o) groupId=${OPTARG};;
    esac
done

function execute {
    echo "implement..."
    exit 0
}

if [ -z "$1" ];
then
      usage
else
      echo "implement..."
      execute
fi