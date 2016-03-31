FROM debian:jessie
MAINTAINER Simão Martins "simao.martins@tecnico.ulisboa.pt"

RUN apt-get -qq -y update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y krb5-user && \
  apt-get clean

ENV REALM ${REALM:-EXAMPLE.COM}
ENV KADMIN_PRINCIPAL ${KADMIN_PRINCIPAL:-kadmin/admin}
ENV KADMIN_PASSWORD ${KADMIN_PASSWORD:-MITiys4K5}

COPY init-script.sh configureKerberosClient.sh /tmp/
CMD /tmp/init-script.sh