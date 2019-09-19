# Specify a base image
FROM node:alpine

# Set a default directory as a Workspace 
WORKDIR /app

# Copy package.json to the Workspace directory inside the docker image. It allow us to cache the libraries in case they´re not changed.
COPY ./package.json .
# Install dependencies 
RUN npm install

# Copy project files from the current drectory to the Workspace directory inside the docker image.
COPY . .

# Default command
CMD ["npm", "start"]