#!/bin/bash

START_TIME=$(date +%s)

echo "the execution started at the time $START_TIME

sleep 100

END_TIME=$(date +%s)

echo "the execution ended at the time $END_TIME"

TOTAL_TIME=(($START_TIME-$END_TIME))

echo "the script taken $TOTAL_TIME seconds to execute"
