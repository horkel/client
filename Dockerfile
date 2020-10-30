## horkel/client
FROM horkel/archlinux:2020.10.30
MAINTAINER AlphaTr <alphatr@alphatr.com>

ADD zsh.tar.gz /root/

COPY build.sh /build.sh
RUN /build.sh

ADD loop /usr/local/bin/
CMD ["loop"]
