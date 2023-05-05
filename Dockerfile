# we are starting with a base immage of node 18
FROM node:18-alpine3.16

# setup our working directory within the container
WORKDIR /src/

# copy our code from the host machine to the container
COPY . .

# install our dependencies
RUN npm install

# expose the port we want to run on
EXPOSE 3000

# run our application
CMD [ "npm", "start" ]
