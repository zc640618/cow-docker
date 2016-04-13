FROM ubuntu:trusty

MAINTAINER guolin <guo.lin@outlook.com>

RUN apt-get update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L git.io/cow | bash 

ENV COW_SERVER_ADDR 0.0.0.0
ENV COW_SERVER_PORT 7777

ADD rc ~/.cow/rc
RUN chmod 755 ~/.cow/rc

EXPOSE $COW_SERVER_PORT

CMD ["cow"]