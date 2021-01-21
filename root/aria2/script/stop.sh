#!/usr/bin/env bash

. "$(dirname $0)/settings"
. "$(dirname $0)/core"

FILE_PATH=$3
FILE_NUM=$2

LOAD_SETTINGS_CONF

GET_BASE_PATH
COMPLETED_PATH
RECYCLE_PATH
GET_PATH

if [ "${RMTASK}" = "recycle" ]; then
    MOVE_RECYCLE
    RM_ARIA2
    exit 0
elif [ "${RMTASK}" = "delete" ]; then
    DELETE_FILE
    RM_ARIA2
    exit 0
fi
RM_ARIA2
exit 0