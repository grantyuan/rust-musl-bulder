alias rust-musl-builder='docker run --rm -it -v "$(pwd)":/home/rust/src yus/rust-musl-builder:cn-mirror'
rust-musl-builder cargo build --debug