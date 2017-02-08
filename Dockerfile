# build: docker build -t generalmeow/mongodb:<TAG>
# run: docker run -d -p 27017:27017 --name mongodb -v <>:/data/db generalmeow/mongodb:<TAG>
# as of docker for mac (docker-machine with virtual box) shared volumes with mongodb doesn't work
FROM ubuntu:latest
MAINTAINER Paul Hoang 2016-12-28
EXPOSE 27017
EXPOSE 28017
RUN ["apt-get", "update", "-qy"]
RUN ["apt-get", "install", "mongodb", "-qy"]
COPY ["./etc/mongodb.conf", "/etc/mongodb.conf"]
RUN ["mkdir", "-p", "/data/db"]
VOLUME /data/db
ENTRYPOINT ["mongod", "--config", "/etc/mongodb.conf"]
