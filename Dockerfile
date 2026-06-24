FROM node:22-slim

WORKDIR /app

RUN npm install -g pnpm

COPY . .

RUN pnpm install

RUN pnpm build

EXPOSE 18789

CMD ["node", "openclaw.mjs"]
