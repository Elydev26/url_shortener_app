# FROM node:16.20-bullseye-slim

# COPY . .
# WORKDIR /app

# RUN ["yarn", "install"]

# EXPOSE 3000

# CMD ["yarn", "run", "start:dev"]

# Use the official Node.js 14 image.
# FROM node:14

# # Create and change to the app directory.
# WORKDIR /app

# # Copy application dependency manifests to the container image.
# # A wildcard is used to ensure both package.json AND package-lock.json are copied.
# COPY package*.json ./

# # Install dependencies.
# RUN npm install

# # Copy local code to the container image.
# COPY . .

# # Expose the port the app runs on.
# EXPOSE 3000

# # Run the web service on container startup.
# CMD ["yarn", "run", "start:dev"]
# Use the official Node.js 14 image as the base image
FROM node:14

# Create and set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "run", "start:dev"]

