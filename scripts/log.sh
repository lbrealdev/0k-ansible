#!/bin/bash

set -e

PREFIX_PATH="/tmp"

function log_path() {
  LOG_FILE="playbook.log"
  LOG_PATH="$PREFIX_PATH/ansible-logs"
  ANSIBLE_LOG_PATH="$LOG_PATH/$LOG_FILE"
  
  if [ -e "$LOG_PATH" ]; then
    printf "Ansible log path already exists!"
  else
    printf "Ansible log path: %s" "$ANSIBLE_LOG_PATH"
    mkdir -p "$LOG_PATH"
    touch "$ANSIBLE_LOG_PATH"
  fi
}

main() {
  log_path
}

main
