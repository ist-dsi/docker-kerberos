FROM debian:jessie
MAINTAINER Simão Martins "simao.martins@tecnico.ulisboa.pt"

EXPOSE 749 88

RUN apt-get -qq -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y krb5-kdc krb5-admin-server && \
  apt-get clean

COPY init-script.sh /tmp/
CMD /tmp/init-script.sh
