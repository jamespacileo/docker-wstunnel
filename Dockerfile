FROM node
# node:8.5 <buildpack-deps:jessie<:jessie-scm<:jessie-curl<debian:jessie
# https://github.com/docker-library/buildpack-deps

# Add Tini https://github.com/krallin/tini
# ENV TINI_VERSION v0.16.1
# ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
# RUN chmod +x /tini

WORKDIR /home/node
# USER node

RUN npm install wstunnel
# COPY docker-entrypoint.sh /docker-entrypoint.sh

# Ports
EXPOSE 8022
EXPOSE 8080
EXPOSE 443

# ENTRYPOINT ["/tini", "--"]
# CMD ["/docker-entrypoint.sh"]