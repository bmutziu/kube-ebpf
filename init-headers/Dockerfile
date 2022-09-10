FROM alpine:3.16
LABEL org.opencontainers.image.source https://github.com/bmutziu/kube-ebpf
RUN apk add --update \
    bash \
    bc \
    build-base \
    python3 \
    bison \
    flex \
    curl \
    elfutils-dev \
    linux-headers \
    make \
    openssl-dev

WORKDIR /

COPY ./fetch-linux-headers.sh  /
RUN chmod +x fetch-linux-headers.sh
ENTRYPOINT [ "/fetch-linux-headers.sh" ]
