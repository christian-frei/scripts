#!/bin/bash
#############################################################
### glassfish reinstall
#############################################################

version="6.0.0"
url="https://download.eclipse.org/ee4j/glassfish/glassfish-$version.zip"
filename="glassfish-$version.zip"
serverDirectory="$HOME/dev/server"
downloadDirectory="$HOME/Downloads"

[ ! -f "$downloadDirectory/$filename" ] \
    && wget -c $url -P  "$downloadDirectory"

[ -d "$serverDirectory/glassfish*" ] \
    && rm -rf "$serverDirectory/glassfish*"

cp -v "$downloadDirectory/$filename" "$serverDirectory"

tar -xzvf "$serverDirectory/$filename" -C $serverDirectory

rm "$serverDirectory/$filename"

exit 0
