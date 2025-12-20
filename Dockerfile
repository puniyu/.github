FROM debian:bullseye-slim

RUN apt-get update && apt install -y \
  build-essential \
  clang \
  lld \
  llvm \
  ninja-build \
  python3 \
  git \
  pkg-config \
  libfreetype6-dev \
  libfontconfig1-dev \
  libexpat1-dev \
  libpng-dev

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

RUN uv python install 3.12


RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
  && apt-get install -y nodejs

ENV PATH=/usr/local/bin:$PATH

