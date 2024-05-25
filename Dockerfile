# get nodejs image from docker hub
FROM node:18.16.1-alpine

# create app directory
WORKDIR /app

# copy package.json to app directory
COPY package.json ./

# install dependencies
RUN npm install

# copy all files to app directory
COPY . .

# build app for production
RUN npm run build

# expose port
EXPOSE 5001

# run app
CMD ["npm", "run", "start"]