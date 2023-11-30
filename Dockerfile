FROM golang:1.21.4-bookworm

RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    unzip \
    vim \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]