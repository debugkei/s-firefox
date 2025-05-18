# s-firefox
A docker image to run firefox in a docker container and display it graphically without vnc.

## Build
```sh
docker build -t firefox .
```

## Run
```sh
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY firefox
```

## Credits
* [Docker](https://www.docker.com/) for containerization.
* [Firefox](https://github.com/mozilla) for being used as a browser.
