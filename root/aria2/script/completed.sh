#!/usr/bin/env bash

CHECK_CORE_FILE() {
    CORE_FILE="$(dirname $0)/script-core"
    if [[ -f "${CORE_FILE}" ]]; then
        . "${CORE_FILE}"
    else
        echo "!!! script-core file does not exist !!!"
        exit 1
    fi
}

GET_BASE_PATH
COMPLETED_PATH
CLEAN_UP
MOVE_FILE
exit 0