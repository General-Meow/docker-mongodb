# docker-mongodb

- build: docker build -t generalmeow/mongodb:<TAG>
- run: docker run -d -p 27017:27017 --name mongodb -v <>:/data/db generalmeow/mongodb:<TAG>
- as of docker for mac (docker-machine with virtual box) shared volumes with mongodb doesn't work
