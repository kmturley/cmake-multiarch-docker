ARG ARCH=amd64
ARG TAG=11-slim
FROM ${ARCH}/debian:${TAG}

WORKDIR /app
COPY ./src /app/src

RUN apt-get update && apt-get install build-essential cmake -y

CMD ["cmake --version"]
