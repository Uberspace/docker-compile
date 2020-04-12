FROM centos:centos8

LABEL maintainer="Uberspace <hallo@uberspace.de>"
LABEL name="CentOS 8 Compilation Environment"

RUN set -ex; \
	yum install -y epel-release \
	&& yum upgrade -y \
	&& yum install -y 'dnf-command(config-manager)' \
	&& yum config-manager --set-enabled PowerTools \
	&& yum groupinstall -y "Development Tools" \
	&& yum install -y \
		git \
		ruby-devel \
		python36 \
		python3-pip \
		python36-devel \
		libffi-devel \
		openssl-devel \
		rpm-build \
		redhat-rpm-config \
		scl-utils \
		scl-utils-build \
		which \
		wget \
	&& gem install fpm \
	&& pip3 install --user gsutil
