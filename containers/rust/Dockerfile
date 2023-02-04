ARG RUNTIME_VERSION="1.67"
FROM rust:${RUNTIME_VERSION}

WORKDIR /application
COPY application/ .

RUN cargo install --path . && rustup component add rustfmt && rustup component add clippy
