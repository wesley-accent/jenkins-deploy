FROM ubuntu

RUN apt-get update 

RUN apt-get install –y nginx

RUN wget -O get-docker.sh https://get.docker.com/

RUN sh get-docker.sh

CMD ["echo","image created"]
