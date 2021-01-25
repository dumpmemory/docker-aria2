#!/usr/bin/env bash

. "$(dirname $0)/core"

TASK_GID=$1
FILE_NUM=$2
FILE_PATH=$3

GET_BASE_PATH
RECYCLE_PATH
GET_PATH

if [ "${FILE_NUM}" -eq 0 ]; then
    exit 0
elif [ "${GET_PATH_INFO}" = "error" ]; then
    echo -e "$(DATE_TIME) ${ERROR} GET TASK PATH ERROR!"
    exit 1
else
    echo "${TASK_GID}=${SOURCE_PATH}" >> "${TASK_HISTORY}"
fi



