FROM node:15.5.0

RUN mkdir /pokemon-frontend
WORKDIR /pokemon-frontend

CMD ["yarn", "serve"]