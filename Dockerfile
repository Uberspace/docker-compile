MAINTAINER Uberspace <hallo@uberspace.de>
LABEL name="CentOS 7 Compilation Environment"
LABEL vendor="CentOS"

FROM centos:centos7

RUN yum groupinstall -y "Development Tools"
RUN yum install -y git ruby-devel
RUN gem install fpm
