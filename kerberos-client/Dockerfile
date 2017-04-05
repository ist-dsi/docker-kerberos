FROM debian:jessie
MAINTAINER Simão Martins "simao.martins@tecnico.ulisboa.pt"

RUN apt-get -qq --yes update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes krb5-user locales
RUN apt-get clean

RUN locale-gen "en_US.UTF-8"
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale

ENV REALM ${REALM:-EXAMPLE.COM}
ENV KADMIN_PRINCIPAL ${KADMIN_PRINCIPAL:-kadmin/admin}
ENV KADMIN_PASSWORD ${KADMIN_PASSWORD:-MITiys4K5}

COPY init-script.sh configureKerberosClient.sh /tmp/
CMD /tmp/init-script.sh