#!/bin/bash

pathBeforeUpdating=$(pwd)
kosymaPath=~/dev/kosyma

echo "updating all ujumbe projects"
echo
echo "updating api-ti-messenger" && cd "$kosymaPath/api-ti-messenger" && git pull --rebase &&
echo "updating api-vzd" && cd "$kosymaPath/api-vzd" && git pull --rebase &&
echo "updating kosyma-website" && cd "$kosymaPath/kosyma-website" && git pull --rebase &&
echo "updating registrationservice-backend" && cd "$kosymaPath/registrationservice-backend" && git pull --rebase &&
echo "updating registrationservice-frontend" && cd "$kosymaPath/registrationservice-frontend" && git pull --rebase &&
echo "updating ujumbe-client" && cd "$kosymaPath/ujumbe-client" && git pull --rebase &&
echo "updating ujumbe-faragha" && cd "$kosymaPath/ujumbe-faragha" && git pull --rebase &&
echo "updating ujumbe-server" && cd "$kosymaPath/ujumbe-server" && git pull --rebase &&
echo "updating ujumbe-vzd" && cd "$kosymaPath/ujumbe-vzd" && git pull --rebase &&
echo
echo "everything fine"
cd $pathBeforeUpdating && exit 0