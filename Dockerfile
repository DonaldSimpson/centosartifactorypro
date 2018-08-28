FROM centos:7


COPY bintray-jfrog-artifactory-pro-rpms.repo /etc/yum.repos.d/
RUN yum install -y java-1.8.0-openjdk-devel jfrog-artifactory-pro
