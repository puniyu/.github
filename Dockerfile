FROM debian:bullseye-slim

RUN apt-get update && apt install -y \
  build-essential \
  clang \
  lld \
  llvm \
  ninja-build \
  python3 \
  curl \
  git \
  pkg-config \
  libfreetype6-dev \
  libfontconfig1-dev \
  libexpat1-dev \
  libpng-dev

RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
  && apt-get install -y nodejs

ENV PATH=/usr/local/bin:$PATH

