# Use an official Node runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) into the container
COPY package*.json ./

# Install any necessary dependencies
RUN npm install

# Copy the rest of your bot's source code into the container
COPY . .

# Command to run your bot
CMD ["node", "discord.js"]
