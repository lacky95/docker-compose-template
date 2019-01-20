#!/bin/bash
cd "$(dirname "$0")" #Set working directory

YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color



shopt -s dotglob
find ../logs/* -prune -type d | while IFS= read -r d; do 
    rm -rf $d/*
done


echo " "
printf "Remove all logs  ${GREEN}done${NC}\n"
