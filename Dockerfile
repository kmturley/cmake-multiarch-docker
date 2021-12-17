ARG ARCH=dockcross
ARG OS=windows-shared-x64
FROM ${ARCH}/${OS}

WORKDIR /app
COPY ./src /app/src

RUN cmake --version
