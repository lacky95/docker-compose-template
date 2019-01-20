#!/bin/bash
cd "$(dirname "$0")" #Set working directory

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color


echo " "
while true; do
    read -p "Do you wish to remove all data and reset the programs? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Canceled"; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo " "
while true; do
    read -p "Are you really shure to remove ---> ALL DATA <---? " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "Canceled"; exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo " "
printf "Tear down docker-compose  ${YELLOW}in process${NC}\n"
  docker-compose -f ../docker-compose/docker-compose.yml down
printf "Tear down docker-compose  ${GREEN}done${NC}\n"

rm -rf ../data/*

printf "Remove all data  ${GREEN}done${NC}\n"

sh ./remove-all-logs.sh

