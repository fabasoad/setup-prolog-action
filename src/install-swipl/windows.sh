#!/usr/bin/env sh

choco install swi-prolog --version=9.2.2.1
bin_path="C:\Program Files\swipl\bin"
echo "${bin_path}" >> "$GITHUB_PATH"
