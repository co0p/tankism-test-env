
# we use ubuntu as a BASE
FROM ubuntu:latest

# that's us
MAINTAINER julian.godesa <julian.godesa@googlemail.com>

# make sure we have all the depenencies installed
RUN apt-get update
RUN apt-get install software-properties-common -y

RUN add-apt-repository ppa:longsleep/golang-backports -y
RUN apt-get update
RUN apt-get install libsdl2-dev golang-go -y

CMD ['/bin/bash']
