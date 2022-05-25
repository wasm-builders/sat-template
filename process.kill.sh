#!/bin/bash
process_name=$1

cmd="pkill -f ${process_name}"
echo $cmd
eval "$cmd"
