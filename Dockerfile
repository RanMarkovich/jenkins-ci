FROM jenkinsci/blueocean:latest
USER root
COPY docker.conf /etc/init.d/docker