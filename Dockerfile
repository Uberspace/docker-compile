FROM centos:centos7

LABEL maintainer="Uberspace <hallo@uberspace.de>"
LABEL name="CentOS 7 Compilation Environment"

RUN set -ex \
	&& yum install -y \
		centos-release-scl \
		epel-release \
	&& yum upgrade -y \
	&& yum groupinstall -y "Development Tools" \
	&& yum install -y \
		git \
		libffi-devel \
		openssl-devel \
		python-devel \
		python-pip \
		redhat-rpm-config \
		rpm-build \
		ruby-devel \
		scl-utils \
		scl-utils-build \
		wget \
		which \
	&& yum install -y \
		devtoolset-7 \
		devtoolset-8 \
	&& gem install fpm \
	&& pip install --upgrade pip \
	&& pip install gsutil
