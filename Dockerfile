FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
  llvm \
  clang \
  gcc \
  g++ \
  curl \
  build-essential \
  libfontconfig1-dev \
  libfreetype6-dev \
  pkg-config \
  fontconfig \
  git \
  openssl \
  libssl-dev \
  ninja-build

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

RUN uv python install 3.12


RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
  && apt-get install -y nodejs

ENV PATH=/usr/local/bin:$PATH

