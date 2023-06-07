# Use Node.js v12 as the base image
FROM node:12

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the app on port 3000
EXPOSE 3000

# Start the app
CMD [ "node", "server.js" ]
