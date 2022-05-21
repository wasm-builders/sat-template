# sat-template

## Prerequisites

### Suborbital

#### Install the Subo CLI

You need to install the Subo CLI: See 👀 https://github.com/suborbital/subo

```bash
brew tap suborbital/subo
brew install subo
```

## Create and build the runnable

```bash
subo create runnable sha256 --lang go
cd sha256
subo build .
```


```bash
http --form POST https://${app_name}.fly.dev --raw "Bob Morane"
curl -d 'Bob Morane' https://${app_name}.fly.dev

curl -d '👋 Hello World 🌍' https://sha256-demo.fly.dev
```

brew install slides
