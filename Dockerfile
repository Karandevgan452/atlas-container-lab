FROM node:18-alpine

WORKDIR /app

# Install dependencies first for better layer caching
COPY package.json ./
RUN npm install

# Copy application source
COPY . .

# Document the port the container listens on
EXPOSE 3000

ENV APP_ENV=local
ENV APP_PORT=5000


# Start the app
CMD ["npm", "start"]
