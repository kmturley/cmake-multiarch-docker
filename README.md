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

    file ./build/linux-amd64/Tutorial
    file ./build/linux-arm32v5/Tutorial
    file ./build/linux-arm32v7/Tutorial
    file ./build/linux-arm64v8/Tutorial
    file ./build/linux-i386/Tutorial
    file ./build/linux-mips64le/Tutorial
    file ./build/linux-ppc64le/Tutorial
    file ./build/linux-riscv64/Tutorial
    file ./build/linux-s390x/Tutorial

Run debug commands inside Docker containers:

    docker-compose run linux-amd64 cmake --version
    docker-compose run linux-arm32v5 cmake --version
    docker-compose run linux-arm32v7 cmake --version
    docker-compose run linux-arm64v8 cmake --version
    docker-compose run linux-i386 cmake --version
    docker-compose run linux-mips64le cmake --version
    docker-compose run linux-ppc64le cmake --version
    docker-compose run linux-riscv64 cmake --version
    docker-compose run linux-s390x cmake --version


## Documentation

* [Cmake help](https://cmake.org/cmake/help/latest)
* [Debian Docker architectures](https://hub.docker.com/_/debian)
* [Debian packages](https://packages.debian.org/stable)
* [Docker guides](https://docs.docker.com)


## Contact

For more information please contact kmturley
