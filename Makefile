.PHONY: all static clean test

all:
	cargo build --release

static:
	cargo build --release --target x86_64-unknown-linux-musl

clean:
	cargo clean

test:
	cargo test

deps/ubuntu:
	sudo apt install -y musl-tools

deps/fedora:
	sudo dnf install -y musl-gcc
