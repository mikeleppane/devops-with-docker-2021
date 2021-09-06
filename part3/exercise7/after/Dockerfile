FROM node:14.17.6-alpine3.14

WORKDIR /app

COPY --chown=node:node . .

RUN npm install --production

ENV PORT=8000

EXPOSE 8000

USER node

CMD ["node", "server.mjs"]
