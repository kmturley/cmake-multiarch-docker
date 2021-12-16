FROM kmturley/crossbuild

WORKDIR /app
COPY ./src /app/src

RUN crossbuild cmake --version
