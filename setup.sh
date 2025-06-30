#!/bin/bash

#set -euo pipefail
#set -x

red="$( (/usr/bin/tput bold || :; /usr/bin/tput setaf 1 || :) 2>&-)"
plain="$( (/usr/bin/tput sgr0 || :) 2>&-)"

status() { echo ">>> $*" >&2; }
error() { echo "${red}ERROR:${plain} $*"; exit 1; }
warning() { echo "${red}WARNING:${plain} $*"; }
available() { command -v $1 >/dev/null; }

check_uv_tool() {
  local MISSING=''
  for TOOL in $*; do
    if ! uv tool list | grep -qE "$TOOL v[0-9]+\.[0-9]+\.[0-9]"; then
      MISSING="$MISSING $TOOL"
    fi
  done

  echo "$MISSING"
}

# UV_TOOLS=('ansible-core' 'ansible-lint' 'dynaconf')

# check_uv_tool() {
#   local tool="$1"

#   if uv tool list | grep -qE "$tool v[0-9]+\.[0-9]+\.[0-9]"; then
#     warning "uv already has $tool on the tool list." >&2
#     exit 0
#   fi
# }

main() {
  if available uv; then
    status "uv is installed."
    status "Checking if the tools are already installed..."

    UV_TOOLS=$(check_uv_tool ansible-core ansible-lint dynaconf)
    echo "$UV_TOOLS"

    # for tool in ${UV_TOOLS[@]}; do
    #   check_uv_tool $tool
    # done

  else
    exit 1
  fi
}

main
