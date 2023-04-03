# ================================================
# | NPM BUILDER - FRONTEND
# ================================================
FROM node:18 AS npm_builder

# Set the working directory
WORKDIR /app
COPY package*.json ./
RUN cd /app
RUN yarn install
COPY . .