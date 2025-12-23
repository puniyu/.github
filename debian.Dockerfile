FROM debian:bullseye-slim

RUN apt-get update && apt install -y \
  build-essential \
  python3 \
  curl \
  git \
  pkg-config

RUN curl -fsSL https://deb.nodesource.com/setup_24.x | bash - \
  && apt-get install -y nodejs

ENV PATH=/usr/local/bin:$PATH

