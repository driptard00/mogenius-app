FROM node:16.17.0-slim

# Create app directory
WORKDIR /dockertest_app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /dockertest_app

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . /dockertest_app

EXPOSE 5000
CMD [ "npm","run","start" ]