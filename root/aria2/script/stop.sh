#!/usr/bin/env bash

FILE_PATH=$3
FILE_NUM=$2

CHECK_CORE_FILE() {
    CORE_FILE="$(dirname $0)/core"
    if [[ -f "${CORE_FILE}" ]]; then
        . "${CORE_FILE}"
    else
        echo "!!! core file does not exist !!!"
        exit 1
    fi
}

CHECK_CORE_FILE

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