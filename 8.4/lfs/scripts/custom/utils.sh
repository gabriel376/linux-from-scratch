#!/bin/bash

function run {
    local start=$(date +"%s")

    local green='\033[0;32m'
    local red='\033[0;31m'
    local nc='\033[0m'

    local script="${1}"
    local basename=$(basename ${script})
    local log="log.txt"

    # create log and give write permissions
    [ ! -f ${log} ] && touch ${log} && chmod -R a+rwX ${log}

    # write script name to log
    echo "" >> ${log}
    echo "#####################################" >> ${log}
    echo ${basename} >> ${log}
    echo "#####################################" >> ${log}

    # write script name to stdout
    printf "%-60s" ${basename}

    # run script
    bash ${script} >> ${log} 2>&1

    # if error, write error to stdout and exit
    if [ ${?} -ne 0 ]; then
        printf "${red}ERROR${nc}\n"
        exit 1
    fi

    # calculate execution time
    end=$(date +"%s")
    sec=$((end - start))
    spent=$(date -u -d @${sec} +"%T")

    # write ok and time spent to stdout
    printf "${green}OK${nc}    ${spent}\n"
}
