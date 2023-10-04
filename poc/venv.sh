#!/bin/bash

PYTHON_DEFAULT_VENV_NAME="venv"

function enable() {
  yen create "$PYTHON_DEFAULT_VENV_NAME" -p 3.12
  . "$PYTHON_DEFAULT_VENV_NAME/bin/activate"
}

function pip_packages() {
  pip install ansible dynaconf -q
}

function disable() {
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "Deleted $PYTHON_DEFAULT_VENV_NAME with Python 3.12.0 ..."
    deactivate
    rm -rf "./$PYTHON_DEFAULT_VENV_NAME"
  else
    echo "Nothing to see here!"
  fi
}

function main() {
  arg="$1"
  if [ "$arg" == "up" ]; then
    enable
    pip_packages
  elif [ "$arg" == "down" ]; then
    disable
  else
    echo "Invalid option!"
  fi
}

main "$@"

