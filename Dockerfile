# Use the official Node.js runtime as the base image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the project dependencies
RUN npm install

# Copy the example configuration and update it
RUN cp config.js.example config.js

# Expose port 9110 for the application, as indicated in the original repository
EXPOSE 9110

# Define the command to run the application
CMD ["bin/webfinger-service"]
