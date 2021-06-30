# Filename: Dockerfile
FROM centos:centos7

LABEL maintainer="github.com/saintdle"

# Versions can be altered for different tooling versions and deployments of OpenShift
ENV YQ_VERSION=v4.9.6
ENV YQ_BINARY=yq_linux_amd64
ENV HELM_VER=3.6.2
ENV OPENSHIFT_VER=4.7.19

RUN   yum install epel-release -yq && \
      yum install -yq jq expect curl wget git openssl less glibc python python-pip mailcap && \
      wget https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/${YQ_BINARY} -O /usr/bin/yq && \
      chmod +x /usr/bin/yq  && \
      wget -q https://get.helm.sh/helm-v${HELM_VER}-linux-amd64.tar.gz && \
      tar -zxvf helm-v${HELM_VER}-linux-amd64.tar.gz && \
      mv -f linux-amd64/helm /usr/local/bin/helm && \
      curl --silent --location "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OPENSHIFT_VER}/openshift-install-linux.tar.gz" | tar xz -C /tmp && \
      mv /tmp/openshift-install /usr/local/bin && \
      curl --silent --location "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/${OPENSHIFT_VER}/openshift-client-linux.tar.gz" | tar xz -C /tmp && \
      mv /tmp/oc /usr/local/bin && \
      mv /tmp/kubectl /usr/local/kubectl && \
      yum clean all
