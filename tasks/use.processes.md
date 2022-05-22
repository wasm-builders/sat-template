

Run Galago runner with a process name


```bash
processName="hello-function"
wasmFile="functions/hello.wasm"
wasmUrl="http://localhost:9999/hello/hello.wasm"
bash -c "WASM_RUNNER_HTTP=9090 exec -a ${processName} ./galago-runner ${wasmFile} ${wasmUrl}"
```

```bash
processName="hey-function"
wasmFile="functions/hey.wasm"
wasmUrl="http://localhost:9999/hey/hey.wasm"
bash -c "WASM_RUNNER_HTTP=9091 exec -a ${processName} ./galago-runner ${wasmFile} ${wasmUrl}"
```

Get the list of the galago-runner processes

```bash
ps -fC galago-runner

# output
UID          PID    PPID  C STIME TTY          TIME CMD
gitpod     48797   44678  0 07:20 pts/4    00:00:00 hello-function functions/hello.wasm http://localhost:9999/hello/hello.wasm
gitpod     48965   45151  0 07:20 pts/5    00:00:00 hey-function functions/hey.wasm http://localhost:9999/hey/hey.wasm
```

Kill a galago-runner process by name

```bash
pkill -f hello-function
```


