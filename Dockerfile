FROM quay.io/ukhomeofficedigital/vault-sidekick:v0.3.3

LABEL maintainer="Tim.Hammonds@digital.homeoffice.gov.uk"

USER root

COPY ./scripts/ /

RUN apk update && \
    apk add ca-certificates wget