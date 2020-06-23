FROM ubuntu:20.04
MAINTAINER maquis196

ARG DEBIAN_FRONTEND="noninteractive"

RUN \
  apt-get update && \
  apt-get install -y \
    dump1090-mutability

EXPOSE 8080 30001 30002 30003 30004 30005 30104 

ENTRYPOINT ["dump1090-mutability", "--interactive","--net", "--net-sbs-port", "30003"]
