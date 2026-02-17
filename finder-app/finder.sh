#!/bin/sh

NUM_OF_PARAMS=$#

if [ $NUM_OF_PARAMS -lt 2 ]
then
    echo "Not all parameters are specified, exiting with error"
    exit 1
fi

echo "Number of parameters passed: ${NUM_OF_PARAMS}"

filesdir=$1
searchstr=$2

if [ -d "$filesdir" ]
then
    echo "Directory ${filesdir} exists"
else
    echo "Directory ${filesdir} does not exist, exiting with error"
    exit 1
fi

num_of_files=$(find "$filesdir" -type f | wc -l)
num_of_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are ${num_of_files} and the number of matching lines are ${num_of_matching_lines}"