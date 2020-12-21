#!/bin/bash

docker-compose -f ./grid-compose.yml  up -d

serverStatus=$(docker ps | grep selenium)

if [[ $serverStatus == *"selenium"* ]]; then
  echo
    echo -e "Selenium grid server up and running    [  \e[32mOK\e[0m  ]"
  echo
else
    echo -e "Selenium grid server up and running    [  \e[31mFAIL\e[0m  ]"
fi