FROM gitpod/workspace-full

ENV CARGO_HOME=/home/gitpod/.cargo

RUN bash -cl "rustup update && rustup target add wasm32-unknown-unknown"

RUN bash -c ". .nvm/nvm.sh \
             && nvm install v12 && nvm alias default v12"
