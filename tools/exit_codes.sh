#!/bin/bash

exit_code_sum=$(awk '{ sum += $1 } END { print sum }' exit_codes)

echo $exit_code_sum

if [ $exit_code_sum -gt 0 ]
then
    exit 1
fi
