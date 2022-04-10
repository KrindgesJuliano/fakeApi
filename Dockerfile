FROM node:16.14.0 as base


WORKDIR /src
COPY package*.json /
EXPOSE 3032


FROM base as production
ENV NODE_ENV=production
ENV NODE_ENV_PORT=3032
RUN npm install
COPY . /
CMD ["npm", "start"]

FROM base as dev
ENV NODE_ENV=development
RUN npm install -g nodemon && npm install
COPY . /
CMD ["npm", "dev"]