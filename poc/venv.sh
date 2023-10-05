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
  # If environment variable VIRTUAL_ENV is set and not empty, disable venv and delete it.
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "Deleted $PYTHON_DEFAULT_VENV_NAME with Python 3.12.0 ..."
    deactivate
    rm -rf "./$PYTHON_DEFAULT_VENV_NAME"
  # If the VIRTUA_LENV environment variable is not set and the venv directory exists, delete venv directory.
  elif [ ! -v "$VIRTUAL_ENV" ] && [ -e "$PYTHON_DEFAULT_VENV_NAME" ]; then
    echo "Cleaning up the $PYTHON_DEFAULT_VENV_NAME directory ..."
    rm -rf "./$PYTHON_DEFAULT_VENV_NAME"
  # If none of the above conditions, display this message and exit 
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
