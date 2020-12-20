FROM ubuntu:18.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt update && apt install -y \
    git \
    python3-pip \
    ninja-build \
    fontconfig \
    libelf-dev \
    gcc g++ build-essential
RUN apt install -y \
    gperf libtool autopoint autoconf \
    pkg-config \
    libxkbcommon-x11-dev \
    libgirepository1.0-dev \
    libfreetype6-dev libglib2.0-dev libcairo2-dev libpango1.0-dev\
    libwayland-bin libwayland-dev weston \
    x11-xserver-utils \
    libxrandr-dev libxi-dev libxext-dev
RUN apt install -y \
    libxcursor-dev libxdamage-dev libxcomposite-dev \
    libegl1-mesa-dev xutils-dev \
    freeglut3 freeglut3-dev \
    gir1.2-gdkpixbuf-2.0 \
    gir1.2-graphene-1.0 \
    Graphene-1.0 \
    libgdk-pixbuf2.0-dev \
    linux-libc-dev
RUN apt install -y vim \
            libglib2.0-dev \
            cmake \
            libglib2.0-dev \
            xsltproc \
            json-glib-tools \
            libcairo-script-interpreter2

RUN pip3 install --upgrade pip
RUN pip3 install meson \
                pygments
WORKDIR /opt/src