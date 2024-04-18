FROM centos:7
RUN yum update -y
RUN yum install java openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz /opt
WORKDIR /opt
RUN tar -xvzf apache-tomcat-8.5.100.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.100/bin/
ENV Name="Jarvis_Home"
EXPOSE 8080
CMD ["./catalina.sh", "run"]