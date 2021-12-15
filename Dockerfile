ARG ARCH=
FROM ${ARCH}/debian:11-slim

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install build-essential cmake -y

CMD ["cmake --version"]
