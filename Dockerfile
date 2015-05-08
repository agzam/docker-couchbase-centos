FROM centos

MAINTAINER Ag Ibragimov <agzam.ibragimov@gmail.com>

EXPOSE 8091 8092 11210

RUN yum install -y \
    hostname \
    initscripts \
    openssl098e \
    pkgconfig \
    sudo \
    tar \
    wget \
    && wget http://packages.couchbase.com/releases/3.0.2/couchbase-server-enterprise-3.0.2-centos6.x86_64.rpm \
    && yum install -y couchbase-server-enterprise-3.0.2-centos6.x86_64.rpm \
    && rm -f ./couchbase-server-enterprise-3.0.2-centos6.x86_64.rpm \

ENV CB_REST_USERNAME Administrator
ENV CB_REST_PASSWORD password

CMD /opt/couchbase/bin/couchbase-server start -- -noinput
