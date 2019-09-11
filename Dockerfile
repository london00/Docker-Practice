# CREATE IMAGE ->               docker build . -t geiser00/node-project
# RUN IMAGE ->                  docker run geiser00/node-project
# REMOVE ALL DOCKER FILES ->    docker system prune
# RUN IMAGE WITH MAPPED PORT -> docker run -p 8080:8080 geiser00/node-project
# RUN SECOND TERMINAL           docker exec -it #DOCKERID# sh
# Specify a base image
FROM node:alpine

# Set a default directory as a Workspace 
WORKDIR /usr/app

# Copy package.json to the Workspace directory inside the docker image. It allow us to cache the libraries in case they´re not changed.
COPY ./package.json ./
# Install dependencies 
RUN npm install

# Copy project files from the current drectory to the Workspace directory inside the docker image.
COPY ./ ./

# Default command
CMD ["npm", "start"]