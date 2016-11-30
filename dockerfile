#FROM docker.io/lwieske/java-8 
#FROM centos 
FROM pre-bj-registry-leengine.lecloud.com/cloud_leengine/centos6:latest
ADD docker.sh /
RUN yum install -y which openssh-clients openssh-server
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN echo 'root:123456' | chpasswd
RUN sed -i '/pam_loginuid.so/c session    optional     pam_loginuid.so'  /etc/pam.d/sshd
EXPOSE 22
RUN chmod +x /docker.sh
#CMD ["/docker.sh"]
CMD /usr/sbin/sshd -D
