FROM quay.io/ukhomeofficedigital/vault-sidekick:latest

LABEL maintainer="Tim.Hammonds@digital.homeoffice.gov.uk"

USER root

RUN apk update && \
    apk add ca-certificates wget