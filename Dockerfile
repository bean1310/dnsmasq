FROM alpine:latest

LABEL maintainer="BEAN<https://github.com/bean1310>"

EXPOSE 53/udp 53/tcp 67/udp

RUN apk --no-cache add dnsmasq
COPY ./conf/*.conf /etc/dnsmasq.d/

ENTRYPOINT ["dnsmasq", "-k"]