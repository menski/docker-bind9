FROM ubuntu:latest

# install bind 9
RUN apt-get update && \
    apt-get install -y --no-install-recommends bind9 && \
    apt-get clean && \
    rm -rf /var/cache/* /var/lib/apt/lists/* /tmp/* /var/tmp/*

# create bind directories and set permissions
RUN mkdir -p /var/cache/bind && \
    chown bind:bind /var/cache/bind && \
    chown bind:bind /etc/bind

EXPOSE 53/udp

CMD ["/usr/sbin/named", "-u", "bind", "-g"]
