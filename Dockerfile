FROM alpine:latest

RUN apk add --no-cache firefox xorg-server xvfb dbus fontconfig

RUN adduser -D nonroot
USER nonroot

ENV DISPLAY=:99

CMD Xvfb $DISPLAY -screen 0 1280x1024x24 & \
  firefox --display=$DISPLAY --no-remote
