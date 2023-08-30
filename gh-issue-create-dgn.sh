#!/bin/bash

if [ "$#" -ne 1 ]
then
  echo "Usage: gh-issue-create-dgn.sh title"
  exit 1
fi

gh issue create -a "christian-frei" -t "$1"
