#!/bin/bash

PYTHON_DEFAULT_VENV_NAME="venv"

function yen_venv() {
  yen create "$PYTHON_DEFAULT_VENV_NAME" -p 3.12
  . "$PYTHON_DEFAULT_VENV_NAME/bin/activate"
}

function pip_packages() {
  pip install ansible dynaconf -q
}

function disable_venv() {
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
    yen_venv
    pip_packages
  elif [ "$arg" == "down" ]; then
    disable_venv
  else
    echo "Invalid option!"
  fi
}

main "$@"
