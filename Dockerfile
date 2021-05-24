FROM node:14.17.0-alpine

RUN apk update

ENV ROOTPATH="/app"

# create root application folder
WORKDIR ${ROOTPATH}

EXPOSE 7777

CMD "npm" "start"