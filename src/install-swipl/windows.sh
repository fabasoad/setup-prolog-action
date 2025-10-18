#!/usr/bin/env sh

choco install swi-prolog
bin_path="C:\Program Files\swipl\bin"
echo "${bin_path}" >> "$GITHUB_PATH"
