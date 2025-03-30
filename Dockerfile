# Use the official Node.js LTS image (e.g., 20 or 22 - check current LTS)
FROM node:22-bookworm-slim

# === ADD THESE LINES ===
# Install git
# Refresh package lists, install git (-y confirms), --no-install-recommends avoids extra packages,
# then clean up apt lists to reduce image size.
RUN apt-get update && apt-get install -y git --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
# === END OF ADDED LINES ===

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) first
COPY package*.json ./

# Install project dependencies (including 'expo' as a dev dependency)
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the default ports used by Expo Metro Bundler and Expo Go
EXPOSE 19000 19001 19002 8081

# Default command to start the Expo development server
CMD ["npx", "expo", "start"]