#!/bin/sh

CURRENT_DIR=$(pwd)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CURRENT_DATETIME=$(date "+%Y%m%d_%H%M%S")

mkdir -p "$SCRIPT_DIR/../build/$CURRENT_DATETIME"
cd "$SCRIPT_DIR/../build/$CURRENT_DATETIME"

cp -a "$SCRIPT_DIR/../board/." .
cp -a "$SCRIPT_DIR/../src/." .

apio build;

cd $CURRENT_DIR
