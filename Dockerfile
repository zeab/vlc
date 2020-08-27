FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    vlc
RUN apt-get -y autoremove --purge
RUN apt-get -y clean
RUN useradd -ms /bin/bash vlc
USER vlc
WORKDIR /home/vlc