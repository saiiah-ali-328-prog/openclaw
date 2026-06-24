FROM ubuntu:24.04
FROM node:20-slim
WORKDIR /app
RUN npm install -g pnpm
COPY . .
RUN pnpm install
RUN pnpm build
EXPOSE 18789
CMD ["pnpm", "gateway:start"]
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    bash \
    ca-certificates \
    curl \
    ffmpeg \
    git \
    openssh-client \
    unzip \
    xz-utils \
    zstd \
  && rm -rf /var/lib/apt/lists/*
