#!/bin/bash

PYTHON_VENV_VERSION="3.12.5"
PYTHON_DEFAULT_VENV_NAME="venv"

function pip_packages() {
  echo "Installing pip packages ..."
  pip install ansible ansible-lint dynaconf -q
}

function create_venv() {
  # If the 'venv' directory exists in the current directory, display this message and exit.
  if [ -e "$PYTHON_DEFAULT_VENV_NAME" ]; then
    echo "Error: The '$PYTHON_DEFAULT_VENV_NAME' directory already exists!"
  else
    # If yen is installed, create a new python 3.12 'venv'.
    if command -v yen &> /dev/null; then
      yen create "$PYTHON_DEFAULT_VENV_NAME" -p "$PYTHON_VENV_VERSION"
      # shellcheck source=/dev/null
      . "$PYTHON_DEFAULT_VENV_NAME/bin/activate"
      pip_packages
    else
      # If yen is not installed, display this message and exit.
      echo "Error: Yen is not installed!"
    fi
  fi
}

function delete_venv() {
  # If environment variable VIRTUAL_ENV is set and not empty, disable venv and delete it.
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "Deleted $PYTHON_DEFAULT_VENV_NAME with Python $PYTHON_VENV_VERSION ..."
    deactivate
    rm -rf "./$PYTHON_DEFAULT_VENV_NAME"
  # If the VIRTUAL_ENV environment variable is not set and the venv directory exists, delete venv directory.
  # This condition works when we execute source venv.sh down, 
  # but before for some reason 'venv' was deactivated using the 'deactivate' command manually, 
  # so we will literally delete the venv directory for future configuration
  elif [ ! -v "$VIRTUAL_ENV" ] && [ -e "$PYTHON_DEFAULT_VENV_NAME" ]; then
    echo "Cleaning up the $PYTHON_DEFAULT_VENV_NAME directory ..."
    rm -rf "./$PYTHON_DEFAULT_VENV_NAME"
  else
    # If none of the above conditions, display this message and exit 
    echo "Nothing to see here!"
  fi
}

function main() {
  arg="$1"
  if [ "$arg" == "up" ]; then
    create_venv
  elif [ "$arg" == "down" ]; then
    delete_venv
  else
    echo "Invalid option!"
  fi
}

main "$@"
