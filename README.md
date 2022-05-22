# sat-template

## Create and build the runnable

```bash
subo create runnable demo-go --lang tinygo
cd demo-go
subo build .
```

## "Launch" the runnable

```bash
SAT_HTTP_PORT=8080 sat demo-go/demo-go.wasm 
```

```bash
http --form POST http://localhost:8080 --raw "Bob Morane"
curl -d 'Bob Morane' http://localhost:8080; echo ""
```

## Download and, then serve the runnable

```bash
node serve.wasm.js 
```

> run sat:
```bash
SAT_HTTP_PORT=8080 sat "$(gp url 3000)/demo-go/demo-go.wasm"
```

