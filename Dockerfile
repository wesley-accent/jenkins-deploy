FROM jenkins/jenkins:latest
USER root
RUN apt-get update 
RUN apt-get install nginx -y
RUN apt-get install -y python3-pip
RUN pip3 install awscli

#RUN wget "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#RUN unzip -o awscli2.zip
#RUN ./aws/install


EXPOSE 80
EXPOSE 8080

USER jenkins
#CMD ["nginx","-g", "daemon off;"]