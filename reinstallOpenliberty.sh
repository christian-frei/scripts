#!/bin/bash
#############################################################
### openliberty reinstall
#############################################################

#https://public.dhe.ibm.com/ibmdl/export/pub/software/openliberty/runtime/release/2021-04-07_0944/openliberty-microProfile4-21.0.0.4.zip
version="microProfile4-21.0.0.4"
release="2021-04-07_0944"
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
