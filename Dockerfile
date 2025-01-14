FROM node:10.16.0
# Create app directory
WORKDIR /app

# Install app dependencies
RUN npm install -g nodemon
COPY package.json ./
COPY yarn.lock ./
RUN yarn

# Bundle app source
COPY . /app
CMD [ "yarn", "start" ]
