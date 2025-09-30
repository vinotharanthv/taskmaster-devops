# Use official Node.js image as base
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Health check (important for container orchestration)
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD node -e "require('http').get('http://localhost:3000/health', (r) => {process.exit(r.statusCode === 200 ? 0 : 1)})"

# Command to run the app
CMD ["npm", "start"]
