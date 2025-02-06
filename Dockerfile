FROM node:22
WORKDIR /app
COPY package.json yarn.lock* package-lock.json* pnpm-lock.yaml* ./
RUN npm install
COPY . ./
RUN chmod -R 777 /app/node_modules/.bin  # Garante permissões de execução
RUN npm run build
CMD ["node", "index.js"]