FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
  clang \
  gcc \
  g++ \
  curl \
  build-essential \
  libfontconfig1-dev \
  git \
  libssl-dev \
  pkg-config \
  ninja.build

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

ENV PATH="/root/.local/bin:${PATH}"

RUN uv python install 3.12

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --default-toolchain stable --profile minimal

ENV PATH="/root/.cargo/bin:${PATH}"

RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
    && apt-get install -y nodejs \
    && npm i -g pnpm