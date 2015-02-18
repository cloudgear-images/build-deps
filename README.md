# Ubuntu Image with Common Build Dependencies

A collection of common build dependencies used for installing various modules like Ruby gems or Python PIP packages. It includes a large number of “development header” packages needed to build such modules, e.g. the `build-deps` image lets you execute `bundle install` in an application directory without knowing that `ssl.h` is required to build a dependent module.

It serves as a base image for language specific images like the [Ruby](https://github.com/cloudgear-images/ruby) image.

## Image Size

This image is only **299.3 MB** and contains most common build dependencies. Additionally, the image is based on a normal Ubuntu 14.04 base image and therefore most of your applications should install without problems.

We have looked at more exotic Linux distributions with even smaller base images. But when installing common dependencies required for Ruby or Python packages, these images result in similar sizes, sometimes even larger. And having an Ubuntu based image makes life often easier as documentation and common knowledge is far better.

### Comparison to Similar Images

Similar images are more than double the size of this image. For example the semi-official `buildpack-deps:jessie` is 673.9 MB.

## What's Included in the Image?

The image is designed to be the foundation for language dependent images and it includes most common build dependencies. Please have a look at the `Dockerfile` for the installed packages.

Be aware that ImageMagick and dependent packages are not included. These packages are omitted as they add another 68 MB to the image and are seldom used. If your application requires ImageMagick, just install the dependencies in your Dockerfile:

````
FROM cloudgear/build-deps:14.04

RUN apt-get update -q && apt-get install -yq \
        imagemagick \
        libjpeg-dev \
        libmagickcore-dev \
        libmagickwand-dev
````

## Usage

The image is called `cloudgear/build-deps` and the main tag is `14.04`, derived from the Ubuntu image it is based on. 

Dockerfile example

````
FROM cloudgear/build-deps:14.04
...

````

## Supported Tags

Only one tag is supported:

* `14.04`


## Contributing

We welcome contributions like new features, fixes, version bumps and other optimizations. Please create a pull request or in case of problems or questions file a [Github issue](https://github.com/cloudgear-images/buildpack-deps).

The image is configured as a Docker Automated Build and gets built and pushed to the Docker registry for every push.

## License

MIT License. Copyright 2015 CloudGear

![CloudGear Container Platform](https://www.cloudgear.net/img/logo-white.png)

A product by [CloudGear](https://www.cloudgear.net) and inspired by the [Debian buildpack-deps](https://github.com/docker-library/buildpack-deps) image.
