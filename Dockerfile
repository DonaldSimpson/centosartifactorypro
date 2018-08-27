FROM centos:7


COPY bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/
RUN yum install -y jfrog-artifactory-pro
