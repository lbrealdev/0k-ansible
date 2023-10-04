#!/bin/bash

function start() {
    echo "Set up virtualenv"
    yen create venv -p 3.12
    . venv/bin/activate
}

function stop() {
    echo "Deactivate virtualenv"
    deactivate
}

function main() {
    start
}

main
