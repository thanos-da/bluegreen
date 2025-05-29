# Use official Node.js base image
FROM node:18-alpine

ENV NEW_RELIC_NO_CONFIG_FILE=true
# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
