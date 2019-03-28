FROM centos:centos7

LABEL maintainer="Uberspace <hallo@uberspace.de>"
LABEL name="CentOS 7 Compilation Environment"
LABEL vendor="CentOS"

RUN set -ex; \
	yum install -y epel-release && \
	yum upgrade -y && \
	yum groupinstall -y "Development Tools" && \
	yum install -y \
		git \
		ruby-devel \
		python-pip \
		python-devel \
		libffi-devel \
		openssl-devel \
		rpm-build \
		redhat-rpm-config \
		scl-utils \
		scl-utils-build \
		which \
		wget && \
	gem install fpm && \
	pip install --upgrade pip && \
	pip install gsutil
