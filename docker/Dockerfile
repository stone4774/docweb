FROM centos:7

RUN yum install -y expect
RUN yum install -y git
RUN mkdir -p /opt/docweb/

ADD docweb /opt/docweb/
WORKDIR /opt/docweb/

#USER root
RUN chmod +x /opt/docweb/start.sh

ENV PEACH_TARGET ""
ENV GIT_USERNAME ""
ENV GIT_PASSWORD ""

EXPOSE 5555

ENTRYPOINT ["/opt/docweb/start.sh"]
