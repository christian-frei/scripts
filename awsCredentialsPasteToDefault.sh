#!/bin/bash

# replaces the default profile credentials of ~/.aws/credentials with the contents of the clipboard
clipboardContents=$(pbpaste)
firstLineRemoved=${clipboardContents#*$'\n'}
echo -e "[default]\n$firstLineRemoved" > ~/.aws/credentials
cat ~/.aws/credentials

