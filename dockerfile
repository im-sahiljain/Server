# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container (root of the project)
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application's source code to the container
COPY . .

# Expose a port if your application listens on a specific port
EXPOSE 3000

# Define the command to run when the container starts
CMD ["node", "app.js"]
