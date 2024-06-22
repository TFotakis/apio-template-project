#!/bin/sh

CURRENT_DIR=$(pwd)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

rm -rf "$SCRIPT_DIR/../build"
rm -rf "$SCRIPT_DIR/../sim"
rm -rf "$SCRIPT_DIR/../synth"

# mkdir -p "$SCRIPT_DIR/../build"
# mkdir -p "$SCRIPT_DIR/../sim"
# mkdir -p "$SCRIPT_DIR/../synth"
