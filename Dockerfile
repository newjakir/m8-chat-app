FROM node:21.7.1

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . /app

# Expose port (if needed)
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
