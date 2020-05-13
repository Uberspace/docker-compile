FROM centos:centos7

LABEL maintainer="Uberspace <hallo@uberspace.de>"
LABEL name="CentOS 7 Compilation Environment"

ENV PATH=/root/.local/bin:$PATH

RUN set -ex \
	&& yum install -y \
		centos-release-scl \
		epel-release \
	&& echo -e '[uberspace]\nbaseurl=https://repo.corona.uberspace.de/uberspace/$releasever/$basearch/\nenabled=0\ngpgcheck=0' > /etc/yum.repos.d/uberspace.repo \
	&& yum upgrade -y \
	&& yum groupinstall -y "Development Tools" \
	&& yum install -y \
		devtoolset-8 \
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
	&& gem install fpm \
	&& pip install --user --upgrade pip \
	&& hash -r \
	&& pip install --user gsutil \
	&& echo "source /opt/rh/devtoolset-8/enable" >> /root/.bashrc

ENV BASH_ENV=/opt/rh/devtoolset-8/enable
