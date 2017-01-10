#FROM docker.io/lwieske/java-8 
#FROM centos 
#FROM pre-bj-registry-leengine.lecloud.com/cloud_leengine/centos6:latest
FROM pre-bj-registry-leengine.lecloud.com/ilivepre/opscb-centos6-java:7

ADD /ubench-0.32-1.el6.x86_64.rpm /
RUN chmod +x /ubench-0.32-1.el6.x86_64.rpm


ADD /cpu.sh /
RUN chmod +x /cpu.sh

ADD /net-test.sh /
RUN chmod +x /net-test.sh

RUN yum install tcpdump.x86_64 -y

CMD ["/net-test.sh"]
#ADD /run/docker.sh /
#RUN chmod +x /docker.sh
#CMD ["/docker.sh"]
