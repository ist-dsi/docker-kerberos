FROM debian:jessie
MAINTAINER Simão Martins "simao.martins@tecnico.ulisboa.pt"

RUN apt-get -qq -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y krb5-user && \
  apt-get clean

COPY ./init-script.sh /tmp/
COPY ./configureKerberosClient.sh /tmp/
CMD /tmp/init-script.sh