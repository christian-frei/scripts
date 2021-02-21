#!/bin/bash
#############################################################
### apache-tomee reinstall
#############################################################

version="8.0.6"
release="plume"
filename="apache-tomee-$version-$release.tar.gz"
serverDirectory="$HOME/dev/server"
downloadDirectory="$HOME/Downloads"
url="https://downloads.apache.org/tomee/tomee-$version/$filename"


[ ! -f "$downloadDirectory/$filename" ] \
    && wget -c $url -P  "$downloadDirectory"

[ -d "$serverDirectory/apache-tomee*" ] \
    && rm -rf "$serverDirectory/apache-tomee*"

cp -v "$downloadDirectory/$filename" "$serverDirectory"

tar -xzvf "$serverDirectory/$filename" -C $serverDirectory

rm "$serverDirectory/$filename"

exit 0
