# Use the latest Node.js image
FROM node:latest

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first to leverage caching
COPY nodeapp/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY nodeapp/ .

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
