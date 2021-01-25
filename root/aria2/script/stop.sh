#!/usr/bin/env bash

. "$(dirname $0)/setting"
. "$(dirname $0)/core"

TASK_GID=$1
FILE_NUM=$2
FILE_PATH=$3

GET_BASE_PATH
RECYCLE_PATH
GET_FINAL_PATH

if [ "${FILE_NUM}" -eq 0 ]; then
    exit 0
elif [ "${GET_PATH_INFO}" = "error" ]; then
    echo -e "$(DATE_TIME) ${ERROR} GID:${TASK_GID} GET TASK PATH ERROR!"
    exit 1
elif [ "${RMTASK}" = "recycle" ]; then
    MOVE_RECYCLE
    RM_ARIA2
    exit 0
elif [ "${RMTASK}" = "delete" ]; then
    DELETE_FILE
    RM_ARIA2
    exit 0
elif [ "${RMTASK}" = "rmaria" ]; then
    RM_ARIA2
    exit 0
fi
