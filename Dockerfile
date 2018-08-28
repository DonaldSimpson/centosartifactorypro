FROM centos:7

COPY tini /bin/
COPY entrypoint.sh /
COPY bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/

RUN chmod +x /bin/tini && \
    chmod +x /entrypoint.sh && \
    yum update -y && \
    yum install -y java-1.8.0-openjdk-devel jfrog-artifactory-pro && \
    yum clean all

ENTRYPOINT ["/bin/tini", "--", "/entrypoint.sh"]
