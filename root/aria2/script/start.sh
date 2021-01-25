#!/usr/bin/env bash

. "$(dirname $0)/core"

TASK_GID=$1
FILE_NUM=$2
FILE_PATH=$3

GET_BASE_PATH
RECYCLE_PATH
GET_PATH

# http单文件下载文件，在任务开始时不会返回FILE_NUM,bt会
if [ "${FILE_NUM}" -eq 0 ]; then
    exit 0
elif [ "${FILE_NUM}" -eq 1 ] && [ -n "${FILE_PATH}" ]; then
    echo "${TASK_GID}=${SOURCE_PATH}" >> "${TASK_HISTORY}"
elif [ ! -n "${FILE_PATH}" ] || [ "${GET_PATH_INFO}" = "error" ]; then
    echo -e "$(DATE_TIME) ${ERROR} GET TASK PATH ERROR!"
    exit 1
fi
