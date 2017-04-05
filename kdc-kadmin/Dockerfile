FROM debian:jessie
MAINTAINER Simão Martins "simao.martins@tecnico.ulisboa.pt"

EXPOSE 749 88

RUN apt-get -qq --yes update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes locales krb5-kdc krb5-admin-server
RUN apt-get clean

RUN locale-gen "en_US.UTF-8"
RUN echo "LC_ALL=\"en_US.UTF-8\"" >> /etc/default/locale

ENV REALM ${REALM:-EXAMPLE.COM}
ENV SUPPORTED_ENCRYPTION_TYPES ${SUPPORTED_ENCRYPTION_TYPES:-aes256-cts-hmac-sha1-96:normal}
ENV KADMIN_PRINCIPAL ${KADMIN_PRINCIPAL:-kadmin/admin}
ENV KADMIN_PASSWORD ${KADMIN_PASSWORD:-MITiys4K5}

COPY init-script.sh /tmp/
CMD /tmp/init-script.sh
