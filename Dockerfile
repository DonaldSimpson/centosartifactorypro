FROM centos:7


COPY tini /bin/
RUN chmod +x /bin/tini
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
COPY bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/
RUN yum install -y java-1.8.0-openjdk-devel jfrog-artifactory-pro
#CMD ["/etc/init.d/artifactory", "start"]
ENTRYPOINT ["/bin/tini", "--", "/entrypoint.sh"]
