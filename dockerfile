#FROM docker.io/lwieske/java-8 
#FROM centos 
FROM pre-bj-registry-leengine.lecloud.com/cloud_leengine/centos6:latest
ADD /run/docker.sh /
RUN chmod +x /docker.sh
RUN yum install systemtap-testsuite.x86_64 -y
ADD /ubench-0.32-1.el6.x86_64.rpm /
RUN chmod +x /ubench-0.32-1.el6.x86_64.rpm
#RUN rpm -i /ubench-0.32-1.el6.x86_64.rpm
CMD ["/docker.sh"]
#CMD /usr/sbin/sshd -D
