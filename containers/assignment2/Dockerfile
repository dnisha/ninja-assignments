# Use the latest Ubuntu image as the base image
FROM ubuntu:latest

# Add your name as the maintainer
LABEL maintainer="Deepak Nishad"

# Update local packages
RUN apt-get update

# Install Node.js and npm
RUN apt-get install -y nodejs npm

# Create a symlink for node (required for some Node.js applications)
#RUN ln -s /usr/bin/nodejs /usr/bin/node

# Install http-server globally
RUN npm install -g http-server

# Create a directory for app
RUN mkdir -p /usr/apps/hello-docker

# Copy your test index.html file from the local machine to the container
COPY index.html /usr/apps/hello-docker/

# Set the working directory
WORKDIR /usr/apps/hello-docker

# Expose port 8080
EXPOSE 8080

# Command to start the http-server when the container starts
CMD ["http-server", "-s"]
