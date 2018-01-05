FROM quay.io/ukhomeofficedigital/vault-sidekick:v0.3.3

LABEL maintainer="Tim.Hammonds@digital.homeoffice.gov.uk"

USER root

COPY scripts/trigger_nginx_reload.sh /usr/local/scripts/trigger_nginx_reload.sh
RUN chmod +x /usr/local/scripts/trigger_nginx_reload.sh

RUN apk update && \
    apk add ca-certificates wget