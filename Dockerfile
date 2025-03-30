# Use the official Node.js LTS image (e.g., 20 or 22 - check current LTS)
FROM node:22-bookworm-slim

# Install git AND the ssh client
RUN apt-get update && apt-get install -y git openssh-client --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) first
COPY package*.json ./

# Set proper ownership - ADD THIS LINE
RUN chown -R node:node /app

# Switch to node user BEFORE npm install - ADD THIS LINE
USER node

# Install project dependencies (including 'expo' as a dev dependency)
RUN npm install

# Copy the rest of the application code into the container
# Note: This might require additional permission handling if run as 'node'
COPY --chown=node:node . .

# Expose the default ports used by Expo Metro Bundler and Expo Go
EXPOSE 19000 19001 19002 8081

# Default command to start the Expo development server
CMD ["npx", "expo", "start"]