# Dockerfile
FROM node:20
WORKDIR /app

# Copy only package files to leverage caching
COPY package*.json ./
RUN npm install

# Copy the rest of the files
COPY . .

EXPOSE 3000
CMD ["npm", "start"]
