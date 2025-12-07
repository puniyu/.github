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