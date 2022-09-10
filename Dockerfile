FROM alpine:3

LABEL org.opencontainers.image.source https://github.com/bmutziu/kube-ebpf

RUN apk add bcc-tools py3-pip py3-bcc

RUN pip install prometheus_client requests

WORKDIR /app

COPY . .

ENV KUBERNETES_SERVICE_HOST=kubernetes.default.svc
ENV KUBERNETES_PORT_443_TCP_PORT=443
ENV NODE_NAME=
ENV DEBUG=

CMD ["python3", "main.py"]
