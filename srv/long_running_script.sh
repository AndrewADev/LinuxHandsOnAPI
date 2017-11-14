#!/bin/bash
#
# A script that takes a few seconds to do its thing, and often encounters errors
#

echo "Beginning long running process"
for i in `seq 1 25`;
do
    echo "Step $i of 25..."

    if ! ((i % 7)); then
        echo "An error occurred!" 1>&2
    fi

    sleep 1
done

echo "Process finished!"
