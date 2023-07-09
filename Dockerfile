FROM alpine:latest
RUN apk add --no-cache \
    jq \
    curl
# TODO
# Create mdbook user, id 1000
RUN tag=$(curl 'https://api.github.com/repos/rust-lang/mdbook/releases/latest' | jq -r '.tag_name') && \
    url="https://github.com/rust-lang/mdbook/releases/download/${tag}/mdbook-${tag}-x86_64-unknown-linux-musl.tar.gz" && \
    curl -sSL $url | tar -xz --directory=/usr/local/bin
WORKDIR /home/mdbook/book
ENTRYPOINT ["/usr/local/bin/mdbook"]
