#!/bin/bash
http_port=$1
wasm_module=$2

cmd="SAT_HTTP_PORT=${http_port} sat $(gp url 3000)/${wasm_module}/${wasm_module}.wasm"
# echo $cmd
read -p "$cmd"
eval "$cmd"
