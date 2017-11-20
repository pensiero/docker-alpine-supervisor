# Docker image running Supervisor on Alpine Linux

[Alpine Linux](https://alpinelinux.org/) based [Docker](https://www.docker.com/) image running [Supervisor](http://supervisord.org/) with a basic configuration. This Docker image can be used as a base for Docker projects that want to run services under control of Supervisord.

## Usage

Pull the image from [Dockerhub]():

```
docker pull mjuenema/alpine-supervisor
```

The Supervisor configuration file included in the image does not include any `[program]` sections itself, but loads any configuration files named `/etc/supervisord.d/*conf`. So simply `COPY` your own configuration files into that directory and the program will be controlled by Supervisord.

```
FROM mjuenema/alpine-supervisor

RUN ...

COPY mysupervisor.conf /etc/supervisord.d/
```

## Author

Markus Juenemann <markus@juenemann.net>

## Changelog

### `0.2`

Added `example.conf`.

### `0.1`

Initial release.
