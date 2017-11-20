FROM centos:7
RUN yum install -y atomic docker nc telnet traceroute scap-security-guide openscap-scanner openscap-utils
RUN groupadd -r app -g 1000 && useradd -u 1000 -r -g app -m -d /app -s /sbin/nologin -c "Userapp" app && chmod 755 /app
WORKDIR /app
USER app
CMD ["/bin/sh"]
