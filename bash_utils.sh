#!/bin/bash

function echop {

    if [ -z "$CIRCLECI" ]
    then
        echo -e "\n===>\033[0m \033[1m\033[97m$1 \033[0m\033[1m\033[92m<===" | lolcat
    else
        echo -e "\n\===>\033[0m \033[1m\033[97m$1 \033[0m\033[1m\033[92m<==="  
    fi
}