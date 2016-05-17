FROM ubuntu:trusty

MAINTAINER Stone <Stone@onlyos.com>

RUN apt-get update && \
    apt-get install -y --force-yes -m curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L git.io/cow | bash 

ENV PAC_SERVER_ADDR 1.2.3.4
ENV PAC_SERVER_PORT 7777
ENV COW_SERVER_ADDR 0.0.0.0
ENV COW_SERVER_PORT 7777
ENV SS_SERVER_ADDR 0.0.0.0
ENV SS_SERVER_PORT 8388
ENV SS_PASSWORD password
ENV SS_METHOD aes-256-cfb

ADD run.sh /run.sh
RUN chmod 755 /run.sh

EXPOSE $COW_SERVER_PORT

CMD ["sh", "-c", "/run.sh"]
