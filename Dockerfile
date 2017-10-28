FROM armbuild/debian:latest
RUN apt-get update && \
    apt-get install -yq dnsmasq

EXPOSE 53/tcp \
       53/udp

ENTRYPOINT ["dnsmasq", "--no-daemon"]
