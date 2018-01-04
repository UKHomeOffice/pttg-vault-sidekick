# pttg-vault-sidekick
A Docker image that extends vault-sidekick with wget capability

A Pod using this image will maintain certificates (as vault-sidekick does) and be configurable to send a request to the nginx-proxy container in the pod, to inform it when certificates have been renewed.
