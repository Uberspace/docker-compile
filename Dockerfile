FROM centos:centos8

LABEL maintainer="Uberspace <hallo@uberspace.de>"
LABEL name="CentOS 8 Compilation Environment"

RUN set -ex \
	&& dnf install -y epel-release \
	&& dnf upgrade -y \
	&& dnf install -y 'dnf-command(config-manager)' \
	&& dnf config-manager --add-repo https://repo.corona.uberspace.de/uberspace.repo \
	&& dnf config-manager --disable uberspace \
	&& dnf config-manager --set-enabled PowerTools \
	&& dnf groupinstall -y "Development Tools" \
	&& dnf install -y \
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
		yum-utils \
	&& gem install fpm \
	&& pip3 install --user gsutil
