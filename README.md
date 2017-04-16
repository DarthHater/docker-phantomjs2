# Minimum Viable Docker Image for PhantomJS 2.0

[![](https://badge.imagelayers.io/darthhater/phantomjs2:latest.svg)](https://imagelayers.io/?images=darthhater/phantomjs2:latest 'Get your own badge on imagelayers.io')

A PhantomJS 2.1.1 image you'll (probably not) find on Docker Hub.

:warning: This is an experiment. Some initial testing showed me that some [examples](https://github.com/ariya/phantomjs/tree/master/examples)
provided by the PhantomJS project itself are working fine but it doesn't mean
it will work for all use cases :warning:

## Usage

```sh
docker run -ti --rm darthhater/phantomjs2 --help
```

## Build it locally

```sh
git clone https://github.com/darthhater/docker-phantomjs2 && cd docker-phantomjs2
make build.local
```

## Acknowledgements

* https://github.com/rosenhouse/phantomjs2 for providing a precompiled phantomjs
  2.0 binary
* https://github.com/fgrehm/docker-phantomjs2 for you know, a 2.0.0 version of this
* https://hub.docker.com/r/wernight/phantomjs/ for uh, 2.1.1
* http://blog.oddbit.com/2015/02/05/creating-minimal-docker-images/ for inspiration
  on keeping images as small as possible
* https://github.com/larsks/dockerize for making this so easy
