FROM alpine:3.11

LABEL maintainer="Sugao <1616191+kthksgy@users.noreply.github.com>"

RUN apk update && apk add git make gcc libc-dev libxext-dev libx11-dev perl perl-time-hires

RUN git clone https://github.com/kdlucas/byte-unixbench.git

WORKDIR /byte-unixbench/UnixBench
ENTRYPOINT [ "/byte-unixbench/UnixBench/Run" ]