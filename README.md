Some experiences with Gtk 4.0
---


## 1. Docker

### Unlock X Server access
```sh
xhost +
```
## Download source code

- Download `gtk4.0` source code
```sh
wget https://ftp.acc.umu.se/pub/GNOME/sources/gtk/4.0/gtk-4.0.0.tar.xz
xzcat gtk-4.0.0.tar.xz | tar xfv -
```

- Download `wayland-protocol 1.20`
```sh
wget https://wayland.freedesktop.org/releases/wayland-protocols-1.20.tar.xz
xzcat wayland-protocols-1.20.tar.xz | tar xfv -
```

### Build and run docker

- Build docker
```sh
docker build -t ubuntu_gtk40_build .
```

- Run docker
```
docker run -it --env DISPLAY=$DISPLAY -v $PWD:/opt/src -v /tmp/.X11-unix:/tmp/.X11-unix ubuntu_gtk40_build /bin/bash
```

### Build, install, run within Container

- Build and install `gtk4.0` within container
```
cd /opt/src/gtk-4.0.0
meson _build .
cd _build
ninja
ninja install
```

- Build and install `wayland-protocol 1.20`
```sh
cd /opt/src/wayland-protocols-1.20
./configure
make install
```

- Update `LDCONFIG` path
```sh
ldconfig
```

- Run `gtk4-demo`
See [gtk4-demo](https://developer.gnome.org/gtk4/stable/gtk4-demo.html)
```
gtk4-demo
```