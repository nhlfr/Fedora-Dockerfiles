dockerfiles-fedora-pypy
=======================

Fedora dockerfile for pypy

Get Docker version

    # docker version

To build:

Copy the sources down and do the build-

    # docker build --rm -t <username>/pypy .

To run (if port 5000 is open on your host):

    # docker run -d -p 5000:5000 <username>/pypy

or to assign a random port that maps to port 80 on the container:

    # docker run -d -p 5000 <username>/pypy

To the port that the container is listening on:

    # docker ps

To test:

    # curl http://localhost:5000
