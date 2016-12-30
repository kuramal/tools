#FROM docker.io/lwieske/java-8 
#FROM centos 
FROM pre-bj-registry-leengine.lecloud.com/cloud_leengine/centos6:latest
ADD /docker.sh /
RUN chmod +x /docker.sh
CMD ["/docker.sh"]
#CMD /usr/sbin/sshd -D
