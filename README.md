# airtest-ide
Docker image for AirtestIDE

## usage
create a container by docker-compose.yml
```
version: '3.7'

services:
  ide:
    image: panwenbin/airtest-ide
    network_mode: host
    environment:
      - DISPLAY=unix$DISPLAY
      - TZ=Asia/Shanghai
    privileged: true
```

run `xhost +` on the host, then run `docker-compose up -d` to start the container

## known issues
- can not display gui on NVIDIA cards
