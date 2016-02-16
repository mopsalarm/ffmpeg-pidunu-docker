#!/bin/sh
set -e

mkdir -p ffmpeg
curl http://johnvansickle.com/ffmpeg/releases/ffmpeg-release-64bit-static.tar.xz \
  | tar Jx --strip-components 1 -C ffmpeg

docker build -t mopsalarm/ffmpeg-pidunu .
docker push mopsalarm/ffmpeg-pidunu
