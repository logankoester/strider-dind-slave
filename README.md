# strider-dind-slave

> [Arch Linux](https://www.archlinux.org/) [Strider](http://stridercd.com) slave for running [Docker within Docker](https://github.com/jpetazzo/dind)

[![DockerCI](http://dockeri.co/image/logankoester/strider-dind-slave)](https://registry.hub.docker.com/u/logankoester/strider-dind-slave/)

## Usage

Install and enable the [strider-docker-runner](https://github.com/Strider-CD/strider-docker-runner) runner plugin,
and then specify this image (`logankoester/strider-docker-slave`) in the plugin settings. Privileged mode must
be enabled to use DinD.

You can use this in conjunction with [strider-docker-build](https://github.com/Strider-CD/strider-docker-build) to build
your Docker images from a Docker runner.

Based on https://github.com/Strider-CD/strider-docker-slave

## License

Copyright (c) 2015 Logan Koester. Released under the MIT license. See `LICENSE` file for details.
