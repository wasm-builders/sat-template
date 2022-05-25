#!/bin/bash
http_port=$1
wasm_module=$2

cmd="ps -fC sat"
echo $cmd
eval "$cmd"
