#!/usr/bin/env sh

#winget install --id SWI-Prolog.SWI-Prolog -e --accept-package-agreements --accept-source-agreements
choco install swi-prolog
bin_path="C:\Program Files\swipl\bin"
ls -la "${bin_path}"
echo "${bin_path}" >> "$GITHUB_PATH"
