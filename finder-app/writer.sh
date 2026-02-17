#!/bin/sh

NUM_OF_PARAMS=$#

if [ $NUM_OF_PARAMS -lt 2 ]
then
    echo "Not all parameters are specified, exiting with error"
    exit 1
fi

echo "Number of parameters passed: ${NUM_OF_PARAMS}"

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")" || { echo "Failed to create directory for $writefile"; exit 1; }

echo "$writestr" > "$writefile" || { echo "Failed to write to file $writefile"; exit 1; }
