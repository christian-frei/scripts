#!/bin/bash

# replaces the default profile credentials of ~/.aws/credentials with the contents of the clipboard
echo -e "[default]\n$(pbpaste)" > ~/.aws/credentials
cat ~/.aws/credentials

