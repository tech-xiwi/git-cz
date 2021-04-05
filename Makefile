.PHONY: all build run release static clean test darwin

all:
	cargo build

run:
	cargo run

release:
	cargo build --release


darwin: export CC=o64-clang
darwin: export CXX=o64-clang++
darwin: export LIBZ_SYS_STATIC=1
darwin:
	PATH=/usr/local/darwin-ndk-x86_64/bin:$$PATH \
		 cargo build --target=x86_64-apple-darwin --release

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
