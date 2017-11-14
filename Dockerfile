FROM centos:latest
MAINTAINER gerald1248@gmail.com
RUN yum install -y curl dig git netstat nslookup wget --setopt=tsflags=nodocs && yum -y clean all
LABEL io.k8s.description="analysis platform" io.k8s.display-name="analysis" io.openshift.tags="analysis" io.openshift.s2i.destination="/opt/app" io.openshift.s2i.scripts-url=image:///usr/local/s2i
RUN adduser --system -u 10001 user
RUN mkdir -p /opt/app  && chown -R user: /opt/app
COPY ./S2iScripts/ /usr/local/s2i
USER 10001
CMD ["/bin/sh"]
