## horkel/client
FROM horkel/archlinux:2019.09.26
MAINTAINER AlphaTr <alphatr@alphatr.com>

ADD zsh.tar.gz /root/

COPY build.sh /build.sh
RUN /build.sh

ADD loop /usr/local/bin/
CMD ["loop"]
