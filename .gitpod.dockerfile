FROM gitpod/workspace-full

RUN sudo apt-get update && \
    sudo apt-get install gettext -y

USER gitpod

RUN brew tap suborbital/subo && \
    brew install subo && \
    brew install httpie

# ------------------------------------
# Install Rust support
# ------------------------------------
#RUN rustup toolchain uninstall stable-x86_64-unknown-linux-gnu && \
#    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y && \
#    curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh 

# source /workspace/.cargo/env





# ------------------------------------
# Install Sat (Suborbital)
# ------------------------------------
#RUN git clone --depth=1 https://github.com/suborbital/sat.git && \
#    cd sat && \
#    go build -o .bin/sat -tags netgo,wasmtime . && \
#    sudo cp .bin/sat /usr/local/bin/sat && \
#    cd .. && \
#    rm -rf sat
