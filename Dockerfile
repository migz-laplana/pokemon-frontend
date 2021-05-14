FROM node:lts-alpine3.13

WORKDIR /pokemon-frontend

CMD ["yarn", "serve"]