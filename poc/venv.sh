#!/bin/bash

function start() {
    echo "Enable venv ..."
    yen create venv -p 3.12
    . venv/bin/activate
}

function pip_packages() {
    pip install ansible dynaconf -q
}

function stop() {
    echo "Disable venv ..."
    deactivate
}

function main() {
    start
    pip_packages
}

main
