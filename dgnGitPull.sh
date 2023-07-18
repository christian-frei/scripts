#!/bin/bash
cd ~/dev/dgn
for i in *;
do
  cd $i
  git pull --rebase
  cd ..
done

