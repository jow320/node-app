FROM node:22
WORKDIR /app
COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./
RUN npm install
COPY . ./
RUN npm run build
CMD ["node", "index.js"]