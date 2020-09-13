FROM centos:centos7

LABEL maintainer="Uberspace <hallo@uberspace.de>"
LABEL name="CentOS 7 Compilation Environment"

ENV PATH=/root/.local/bin:$PATH

RUN set -ex \
	&& yum install -y \
		centos-release-scl \
		epel-release \
	&& yum-config-manager --add-repo https://repo.corona.uberspace.de/uberspace.repo \
	&& yum-config-manager --disable uberspace \
	&& yum upgrade -y \
	&& yum groupinstall -y "Development Tools" \
	&& yum install -y \
		devtoolset-8 \
		git \
		libffi-devel \
		openssl-devel \
		python-devel \
		python-pip \
		python3 \
		redhat-rpm-config \
		rpm-build \
		ruby-devel \
		scl-utils \
		scl-utils-build \
		wget \
		which \
	&& gem install ffi -v 1.12.0 \
	&& gem install fpm \
	&& pip install --user --upgrade pip 'setuptools<45' \
	&& hash -r \
	&& pip install --user gsutil \
	&& echo "source /opt/rh/devtoolset-8/enable" >> /root/.bashrc

ENV BASH_ENV=/opt/rh/devtoolset-8/enable
