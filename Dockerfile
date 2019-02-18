FROM node:10-stretch-slim

LABEL version="6.1.1"
LABEL description="Docker file for SCC State Server"

RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY . /usr/src/

RUN rm -rf node_modules package-lock.json yarn.lock || true
RUN yarn install

EXPOSE 7777

USER node
CMD ["yarn", "start"]
