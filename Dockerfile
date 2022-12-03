# Builder
FROM node:16.17.0 as builder
WORKDIR /src
COPY . /src

# App
RUN cd /src
RUN npm install
RUN echo "SESSION_SECRET=8d581bf0a6d54e63e435768aa2ccaabd94c57b9c4e48bb4113106f35b97b6734" > .env
RUN npm run build

CMD npm start
