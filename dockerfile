#FROM docker.io/lwieske/java-8 
FROM centos 
ADD docker.sh /
RUN chmod +x /docker.sh
RUN yum update
CMD ["/docker.sh"]
