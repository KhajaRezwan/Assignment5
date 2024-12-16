FROM alpine:latest AS builder

COPY data.txt /tmp/

FROM fedora:latest

COPY --from=builder /tmp/data.txt /data.txt
