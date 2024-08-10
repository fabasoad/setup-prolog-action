#!/usr/bin/env sh

SWIPL_VERSION="9.2.6"
SWIPL_EXE_NAME="swipl-${SWIPL_VERSION}-1.x64.exe"
curl -O "https://www.swi-prolog.org/download/stable/bin/${SWIPL_EXE_NAME}"
./${SWIPL_EXE_NAME}
