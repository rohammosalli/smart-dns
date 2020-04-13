## Smart DNS Proxy 


The nginx config file is base on this [Project](https://github.com/mosajjal/byosh) 

#### What is Smart DNS Proxy 
A Smart DNS is a service you can use to access geo-restricted Internet content. It became extremely popular due to the increased use of geo-blocking technology by content providers like Netflix. The service allows you to hide your geo-location, meaning you can watch geo-blocked content from anywhere in the world

Requirements
- [Docker installd](https://docs.docker.com/engine/install/ubuntu/) 
- [docker-compose installed](https://docs.docker.com/compose/install/)
- [VPS](https://www.digitalocean.com/products/droplets/) 

#### Run it by yourself 
:warning: Make sure ports 80, 443 and 53 are not used in your system

 
if your wnat to add your NAME recourd and ip address you can add ro edit this file ```dnsmasq/proxy.conf``` you have to replace ```127.0.0.1``` with your ```PUBLIC IP‍ ```‍

#### for example: 
  if you want to add docker domain 

```conf
  address=/.docker.com/127.0.0.1 #PUBLIC IP‍
  address=/.docker.io/127.0.0.1 #PUBLIC IP‍
```

you can Build your images:

```bash
docker build -t rohammosalli/dnsmasq:v1 dnsmasq/

docker build -t  rohammosalli/nginx-proxy:v1 .
```

#### Run Smart DNS
You can simply run this project with this command 

```bash
docker-compose up -d
```