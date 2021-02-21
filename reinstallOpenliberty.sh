#!/bin/bash
#############################################################
### openliberty reinstall
#############################################################

version="21.0.0.2"
release="2021-02-09_1100"
filename="openliberty-$version.zip"
serverDirectory="$HOME/dev/server"
downloadDirectory="$HOME/Downloads"
url="https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/release/$release/$filename"

[ ! -f "$downloadDirectory/$filename" ] \
    && wget -c $url -P  "$downloadDirectory"

[ -d "$serverDirectory/openliberty*" ] \
    && rm -rf "$serverDirectory/openliberty*"

cp -v "$downloadDirectory/$filename" "$serverDirectory"

tar -xzvf "$serverDirectory/$filename" -C $serverDirectory

rm "$serverDirectory/$filename"

exit 0
