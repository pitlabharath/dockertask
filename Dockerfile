# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose a port (if your application uses a specific port)
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]
