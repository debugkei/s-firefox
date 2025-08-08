# s-firefox
A docker image to run firefox in a docker container and display it graphically without vnc.
VNC version can be found [here](https://github.com/ivkei/s-firefox-vnc).

## Build
```sh
docker build -t firefox . # Or in directory with Dockerfile
```

## Run
```sh
docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY firefox
```
To change the framerate, tinker with the Dockerfile, good luck!  

## Credits
* [Docker](https://www.docker.com/) for containerization.
* [Firefox](https://github.com/mozilla) for being used as a browser.
