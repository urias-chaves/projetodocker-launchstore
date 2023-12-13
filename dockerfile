FROM node:10-alpine
RUN mkdir -p /src/node/launchstore-master/node_modules && chown -R node:node /src/node/launchstore-master
WORKDIR /src/node/launchstore-master
COPY package*.json ./
USER node
RUN npm install
COPY --chown=node:node . .
EXPOSE 3000
CMD [ "node", "seed.js" ]