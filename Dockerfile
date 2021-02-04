FROM node:10-alpine

# update packages
RUN apk update
RUN apk add --no-cache git

ENV ROOTPATH="/app"
ENV EBOOK_SERACH_API_VERSTION="0.1.5"


# create root application folder
WORKDIR ${ROOTPATH}
RUN git clone --branch "${EBOOK_SERACH_API_VERSTION}" --single-branch https://github.com/Taiwan-Ebook-Lover/TaiwanEbookSearch-API "${ROOTPATH}"


RUN npm install
RUN npm run tsc

# clean up
RUN apk del git

EXPOSE 7777

CMD [ "node", "./dist/index.js" ]