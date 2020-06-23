# docker-dump1090

A container that runs dump1090-mutability with a lighttpd frontend. 

We need --privileged to access the DVB-T card

docker run -d \
  --name=dump1090 \
  --privileged \
  -p 8080:80 \
  --restart unless-stopped \
  maquis196/dump1090:latest

http://[IP_ADDRESS]/dump1090/gmap.html
