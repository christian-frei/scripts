#!/bin/bash
#############################################################
### wildfly reinstall
#############################################################

version="22.0.1.Final"
filename="wildfly-$version.tar.gz"
serverDirectory="$HOME/dev/server"
downloadDirectory="$HOME/Downloads"

[ ! -f "$downloadDirectory/$filename" ] \
    && wget -c https://download.jboss.org/wildfly/"$version"/"$filename" -P  "$downloadDirectory"

[ -d "$serverDirectory/wildfly*" ] \
    && rm -rf "$serverDirectory/wildfly*"

cp -v "$downloadDirectory/$filename" "$serverDirectory"

tar -xzvf "$serverDirectory/$filename" -C $serverDirectory

rm "$serverDirectory/$filename"

exit 0
