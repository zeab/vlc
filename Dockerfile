FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    vlc
RUN useradd -ms /bin/bash vlc
USER vlc
WORKDIR /home/vlc