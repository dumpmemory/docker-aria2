#!/usr/bin/env bash

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
if [ "${RECYCLE}" = "true" ]; then
    RECYCLE_PATH
    GET_PATH
    MOVE_RECYCLE
    RM_ARIA2
    exit 0
else
    RM_ARIA2
    exit 0
fi
