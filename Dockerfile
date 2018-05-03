## horkel/client
FROM horkel/archlinux:2017.11.22
MAINTAINER AlphaTr <alphatr@alphatr.com>

ADD config.tar.gz /root/

COPY build.sh /build.sh
RUN /build.sh

ADD loop /usr/local/bin/
CMD ["loop"]
