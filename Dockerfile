# Use official Node.js image as base
FROM node:14-alpine

# Set working directory in the container
WORKDIR /

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application into the container
COPY . .

# Build the React app
CMD npm run build

# Expose port 3000 to the outside world
EXPOSE 3000

# Define command to run the application
CMD ["npm", "start"]
