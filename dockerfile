FROM centos:centos7.9.2009
RUN yum install git -y
RUN yum install httpd -y
RUN yum install wget -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz .
RUN tar -xvf apache-tomcat-9.0.69.tar.gz
RUN mv apache-tomcat-9.0.69/* /opt/tomcat
EXPOSE 8081
CMD ["/opt/tomcat/bin/catalina.sh", "run"]


