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

    file ./build/x86_64-apple-darwin14/Tutorial
    file ./build/x86_64-linux-gnu/Tutorial
    file ./build/x86_64-w64-mingw32/Tutorial

Run debug commands inside Docker containers:

    docker-compose run x86_64-apple-darwin cmake --version
    docker-compose run x86_64-linux-gnu cmake --version
    docker-compose run x86_64-w64-mingw32 cmake --version


## Documentation

* [Cmake help](https://cmake.org/cmake/help/latest)
* [Debian Docker architectures](https://hub.docker.com/_/debian)
* [Debian packages](https://packages.debian.org/stable)
* [Docker guides](https://docs.docker.com)


## Contact

For more information please contact kmturley
