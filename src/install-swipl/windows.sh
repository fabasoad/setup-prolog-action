#!/usr/bin/env sh

main() {
  bin_dir="${RUNNER_TEMP}/bin"
  mkdir -p "${bin_dir}"
  if [ "${RUNNER_ARCH}" = "X86" ]; then
    arch="x86"
  else
    arch="x64"
  fi
  url="https://www.swi-prolog.org/download/stable/bin/swipl-9.2.9-1.${arch}.exe"
  curl -sLk "${url}" -o "${bin_dir}/swipl.exe"
  echo "${bin_dir}" >> "$GITHUB_PATH"
}

main "$@"
