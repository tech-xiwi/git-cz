FROM rust:alpine as builder
RUN apk add clang musl-dev openssl-dev cmake make

COPY . /tmp
WORKDIR /tmp

RUN cargo --version
RUN cargo build --release

FROM alpine as base
COPY --from=builder /tmp/target/release/git-cz /usr/bin/git-cz

ENTRYPOINT [ "git-cz" ]
CMD [ "check" ]
