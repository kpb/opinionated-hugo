FROM alpine:latest
RUN apk add --no-cache \
    jq \
    curl
RUN tag=$(curl 'https://api.github.com/repos/rust-lang/mdbook/releases/latest' | jq -r '.tag_name') && \
    url="https://github.com/rust-lang/mdbook/releases/download/${tag}/mdbook-${tag}-x86_64-unknown-linux-musl.tar.gz" && \
    curl -sSL $url | tar -xz --directory=/usr/local/bin
RUN adduser -D -g "mdBook User" -u 1000 mdbook && \
    echo 'mdbook:mdbook' | chpasswd
USER mdbook:1000
WORKDIR /home/mdbook/book
ENTRYPOINT ["/usr/local/bin/mdbook"]
