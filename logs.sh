#!/bin/bash

set -e

PREFIX_PATH="/tmp"

function log_path() {
  LOG_FILE="playbook.log"
  LOG_PATH="$PREFIX_PATH/ansible-logs"
  ANSIBLE_LOG_PATH="$LOG_PATH/$LOG_FILE"
  
  if [ -e "$LOG_PATH" ]; then
    printf "Ansible log directory exist!\n"
  else
    printf "Ansible log directory created!\n"
    printf "Path: %s" "$ANSIBLE_LOG_PATH"
    mkdir -p "$LOG_PATH"
    touch "$ANSIBLE_LOG_PATH"
  fi
}

main() {
  log_path
}

main