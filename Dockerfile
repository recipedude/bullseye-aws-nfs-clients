FROM debian:bullseye-slim
LABEL maintainer "Sean Wenzel <sean@infinitenetworks.com>"

RUN apt-get update;apt-get -y install awscli nfs-common

ADD files/run.sh /scripts/run.sh
RUN chmod -R 755 /scripts && \
    mkdir /data

ENV AWS_ACCESS_KEY_ID ""
ENV AWS_SECRET_ACCESS_KEY ""

VOLUME /data
VOLUME /root/.aws

CMD ["/scripts/run.sh"]
