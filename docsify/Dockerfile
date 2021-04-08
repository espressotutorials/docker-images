FROM node:latest

LABEL maintainer="Jonas Regner"

WORKDIR /docs

RUN npm install -g docsify-cli@latest

EXPOSE 3000/tcp

ENTRYPOINT docsify serve .
