FROM tomcat:9.0.38
MAINTAINER claudiaborrachero@gmail.com

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y maven
RUN mkdir /home/gitRepositorio
WORKDIR /home/gitRepositorio  
RUN git clone https://github.com/jleetutorial/maven-project.git
WORKDIR /home/gitRepositorio/maven-project
RUN mvn package

COPY index.jsp /webapp/src/main/webapp/
EXPOSE 8080