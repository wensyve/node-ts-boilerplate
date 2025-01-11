# get nodejs image from docker hub
FROM node:22.12.0-alpine

# enable corepack for yarn
RUN corepack enable

# create app directory
WORKDIR /app

# copy package.json to app directory
COPY package.json yarn.lock .yarnrc.yml ./

# install dependencies
RUN yarn install --frozen-lockfile

# copy all files to app directory
COPY . .

# build app for production
RUN yarn build

# expose port
EXPOSE 5001

# run app
CMD ["yarn", "start"]