FROM centos7.9.2009
RUN yum install git -y
RUN yum install httpd -y
RUN yum install wget -y
RUN mkdir cd /opt/Tomcat
WORKDIR cd /opt/Tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz
tar -xvf apache-tomcat-9.0.69.tar.gz


