ARG ARCH=amd64
ARG OS=debian:11-slim
FROM ${ARCH}/${OS}

WORKDIR /app
COPY ./src /app/src

RUN apt-get update && apt-get install build-essential cmake --no-install-recommends -y
