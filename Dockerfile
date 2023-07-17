FROM ubuntu

RUN mkdir -p /var/node

WORKDIR /var/node

RUN npm install #aws cli can go here

CMD ["echo","image created"]
