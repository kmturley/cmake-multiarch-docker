# cmake-multiarch-docker

Example project compiling cmake binaries with different CPU architectures, using:

* Cmake 3.x
* Debian 11.x
* Docker 20.x
* Docker Compose 2.x


## Installation

Ensure you have [Docker](https://www.docker.com) installed:

    docker --version
    docker-compose --version


## Usage

Build all Docker containers using:

    docker-compose build

Then run the compiler using:

    docker-compose up


## Testing

Verify binary architectures using the file command:

    file ./build-amd64/Tutorial
    file ./build-arm32v5/Tutorial
    file ./build-arm32v7/Tutorial
    file ./build-arm64v8/Tutorial
    file ./build-i386/Tutorial
    file ./build-mips64le/Tutorial
    file ./build-ppc64le/Tutorial
    file ./build-riscv64/Tutorial
    file ./build-s390x/Tutorial

Run debug commands inside Docker containers:

    docker-compose run amd64 cmake --version
    docker-compose run arm32v5 cmake --version
    docker-compose run arm32v7 cmake --version
    docker-compose run arm64v8 cmake --version
    docker-compose run i386 cmake --version
    docker-compose run mips64le cmake --version
    docker-compose run ppc64le cmake --version
    docker-compose run riscv64 cmake --version
    docker-compose run s390x cmake --version


## Documentation

* [Cmake help](https://cmake.org/cmake/help/latest)
* [Debian Docker architectures](https://hub.docker.com/_/debian)
* [Debian packages](https://packages.debian.org/stable)
* [Docker guides](https://docs.docker.com)


## Contact

For more information please contact kmturley
