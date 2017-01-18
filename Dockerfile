# build: docker build -t generalmeow/mongodb:<TAG>
# run: docker run -d -p 27017:27017 --name mongodb -v <>:/data/db generalmeow/mongodb:<TAG>
# as of docker for mac (docker-machine with virtual box) shared volumes with mongodb doesn't work
FROM ubuntu:latest
MAINTAINER Paul Hoang 2016-12-28
EXPOSE 27017
RUN ["apt-get", "update", "-qy"]
RUN ["apt-get", "install", "libssl1.0.0", "libssl-dev", "-qy"]
RUN ["mkdir", "-p", "/data/db"]
RUN ["mkdir", "-p", "/home/files"]
RUN ["mkdir", "-p", "/home/mongodb"]
VOLUME /data/db
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzaa /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzab /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzac /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzad /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzae /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzaf /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzag /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzah /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzai /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzaj /home/files
COPY ./files/mongodb-ubuntu/mongodb-ubuntu-3.4.1.tar.gzak /home/files
ADD  ./files/mongodb-ubuntu/catfiles.sh /home/files
WORKDIR /home/files
#RUN ["cat", "/home/files/mongodb-ubuntu-3.4.1*", ">", "/home/files/mongodb.tar.gz"]
RUN ["/home/files/catfiles.sh"]
RUN ["tar", "-zxvf", "mongodb.tar.gz", "-C", "/home/mongodb"]
RUN ["rm", "-rf", "/home/files"]
ENTRYPOINT ["/home/mongodb/mongodb-linux-x86_64-ubuntu1604-3.4.1/bin/mongod"]
