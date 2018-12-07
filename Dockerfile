FROM quay.io/ukhomeofficedigital/vault-sidekick:v0.3.8

LABEL maintainer="Tim.Hammonds@digital.homeoffice.gov.uk"

ENV USER user-pttg-vault-sidekick
ENV USER_ID 1002
ENV GROUP groupt-pttg-vault-sidekick


USER root

COPY scripts/trigger_nginx_reload.sh /usr/local/scripts/trigger_nginx_reload.sh
RUN chmod +x /usr/local/scripts/trigger_nginx_reload.sh
RUN apk update && \
    apk add ca-certificates wget apache2-utils

RUN addgroup ${GROUP} && \
    adduser -D ${USER} -g ${GROUP} -u ${USER_ID}

RUN chown /mnt/htpasswd/.htpasswd_1 groupt-pttg-vault-sidekick

USER ${USER_ID}
