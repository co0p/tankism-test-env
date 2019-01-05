
# we use ubuntu as a BASE
FROM ubuntu:latest

# that's us
MAINTAINER julian.godesa <julian.godesa@googlemail.com>

# make sure we have all the depenencies installed
RUN apt-get update
RUN apt-get install software-properties-common -y

RUN add-apt-repository ppa:longsleep/golang-backports -y
RUN apt-get update
RUN apt-get install git libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev libsdl2-gfx-dev golang-go -y

# tankism dependencies that are doing more than just downloading the source
RUN go get -v github.com/veandco/go-sdl2/sdl github.com/veandco/go-sdl2/img github.com/veandco/go-sdl2/mix github.com/veandco/go-sdl2/ttf

ENTRYPOINT ["/bin/bash"]
