#!/bin/sh

MODULE_NAME=top;
TB_NAME=top;

if [ "$1" ]
	then
		MODULE_NAME=$1
		TB_NAME=$1

	if [ "$2" ]
		then
			TB_NAME=$2
	fi
fi

CURRENT_DIR=$(pwd)
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

mkdir -p "$SCRIPT_DIR/../synth"
mkdir -p "$SCRIPT_DIR/../sim"

# Run synthesis
iverilog -o "$SCRIPT_DIR/../synth/${MODULE_NAME}_tb.vvp" "$SCRIPT_DIR/../src/${TB_NAME}_tb.v";

# Run simulation
cd "$SCRIPT_DIR/../sim"
vvp "$SCRIPT_DIR/../synth/${TB_NAME}_tb.vvp" > "$SCRIPT_DIR/../sim/${TB_NAME}_tb.vcd";

cd $CURRENT_DIR
