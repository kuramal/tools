#FROM docker.io/lwieske/java-8 
#FROM centos 
FROM pre-bj-registry-leengine.lecloud.com/cloud_leengine/centos6:latest
ADD /run/docker.sh /
RUN chmod +x /docker.sh
RUN yum install systemtap-testsuite.x86_64 -y
CMD ["/docker.sh"]
#CMD /usr/sbin/sshd -D
