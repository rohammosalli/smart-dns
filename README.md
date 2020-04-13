## Smart DNS Proxy 


The Nginx config file is base on this [Project](https://github.com/mosajjal/byosh) 

#### What is Smart DNS Proxy 
A Smart DNS is a service you can use to access geo-restricted Internet content. It became extremely popular due to the increased use of geo-blocking technology by content providers like Netflix. The service allows you to hide your geo-location, meaning you can watch geo-blocked content from anywhere in the world

Requirements
- [Docker installd](https://docs.docker.com/engine/install/ubuntu/) 
- [docker-compose installed](https://docs.docker.com/compose/install/)
- [VPS](https://www.digitalocean.com/products/droplets/) 

#### Run it by yourself 
:warning: Make sure ports 80, 443 and 53 are not used in your system

 
if you want to add your NAME record and IP address you can add or edit this file ```dnsmasq/proxy.conf``` you have to replace ```127.0.0.1``` with your ```PUBLIC IP‍ ```‍

for each domain, you add you have to build dnsmasq Dockerfile or just mount it this file form your server to the container


Mount proxy.conf 

if you don't like to build your image every time, you can uncomment these lines in ```docker-compose.yml``` 

```Dockerfile
volumes:
  # Host:container
  - dnsmasq/proxy.conf:/etc/dnsmasq.d/proxy.conf
```

#### for example: 
  if you want to add docker domain 

```conf
  address=/.docker.com/127.0.0.1 #PUBLIC IP‍
  address=/.docker.io/127.0.0.1 #PUBLIC IP‍
```

you can Build your images:

```bash
docker build -t rohammosalli/dnsmasq:v1 dnsmasq/

docker build -t  rohammosalli/Nginx-proxy:v1 .
```

#### Run Smart DNS
You can simply run this project with this command 

```bash
docker-compose up -d
```