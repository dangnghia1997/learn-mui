FROM node:16.17

ENV PORT 3000

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies
COPY ./app .

RUN yarn install --frozen-lockfile

# Building app
RUN yarn build

EXPOSE 3000

# Running the app
CMD "yarn" "dev"