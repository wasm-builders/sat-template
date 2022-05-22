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
RUN rustup self uninstall -y 

#RUN curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh -s -- -y && \
#    curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh 
