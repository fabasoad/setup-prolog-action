#!/usr/bin/env sh

check_enum() {
  param_key="$1"
  param_val="$2"
  enum_opts="$3,"
  case ",${enum_opts}" in
    *",${param_val},"*)
      ;;
    *)
      msg="\"${param_key}\" parameter is invalid. Possible values: $(echo "${enum_opts%,}" | sed 's/,/, /g')."
      echo "::error title=Invalid parameter::${msg}"
      exit 1
      ;;
  esac
}

main() {
  input_force="${1}"

  check_enum "force" "${input_force}" "true,false"
}

main "$@"
