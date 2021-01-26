#!/usr/bin/env bash

. "$(dirname $0)/core"

TASK_GID=$1
FILE_NUM=$2
FILE_PATH=$3

# 磁力连接或种子，开始任务时num为0；http单文件下载文件，在任务开始时不会返回FILE_PATH,bt会
if [ "${FILE_NUM}" -le 1 ] || [ ! -n "${FILE_PATH}" ]; then
    exit 0
else
    GET_BASE_PATH
    RECYCLE_PATH
    GET_PATH
fi
if [ "${GET_PATH_INFO}" = "error" ]; then
    exit 0
else
    echo "${TASK_GID}=${SOURCE_PATH}" >> "${TASK_HISTORY}"
fi
