FROM node:18

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN npm install

RUN npm build

COPY  . .

# Expose the port your app runs on
EXPOSE 1003

# Start the application
CMD ["npm", "start"]
