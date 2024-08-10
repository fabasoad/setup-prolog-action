#!/usr/bin/env sh

SWIPL_VERSION="9.2.6"

swipl_exe_name="swipl-${SWIPL_VERSION}-1.x64.exe"
expected_sha="958ac9f0ac2622abd69ba0df8615e23ef9e3c1e2dd7b4589841c2db0ff5089f1" # pragma: allowlist secret

curl -O "https://www.swi-prolog.org/download/stable/bin/${swipl_exe_name}"
actual_sha="$(certutil -hashfile "${swipl_exe_name}" SHA256)"

if [ "${expected_sha}" != "${actual_sha}" ]; then
  msg="Expected SHA256: ${expected_sha}. Actual SHA256: ${actual_sha}"
  echo "::error title=Binary is corrupted::${msg}" && exit 1
fi

echo "Running exe..."
./${swipl_exe_name}
