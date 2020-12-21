#!/bin/bash

docker-compose -f ./grid-compose.yml down

serverStatus=$(docker ps | grep selenium)

if [[ $serverStatus != *"selenium"* ]]; then
  echo
    echo -e "Selenium grid server has been stopped    [  \e[32mOK\e[0m  ]"
  echo
else
    echo -e "Selenium grid server up and running    [  \e[31mFAIL\e[0m  ]"

    echo -e "please use \e[32docker-compose -f ./grid-compose.yml down command and server stopped\e[0m "

fi