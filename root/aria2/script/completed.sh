#!/usr/bin/env bash

. "$(dirname $0)/settings"
. "$(dirname $0)/core"

FILE_PATH=$3
FILE_NUM=$2

LOAD_SETTINGS_CONF

GET_BASE_PATH
COMPLETED_PATH
GET_PATH
CLEAN_UP
MOVE_FILE
exit 0