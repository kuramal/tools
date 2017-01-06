#FROM docker.io/lwieske/java-8 
#FROM centos 
FROM pre-bj-registry-leengine.lecloud.com/cloud_leengine/centos6:latest

ADD /ubench-0.32-1.el6.x86_64.rpm /
RUN chmod +x /ubench-0.32-1.el6.x86_64.rpm

ADD /oom-10 /
RUN chmod +x /oom-10


ADD /oom-100 /
RUN chmod +x /oom-100

ADD /oom-500 /
RUN chmod +x /oom-500

ADD /run/docker.sh /
RUN chmod +x /docker.sh
CMD ["/docker.sh"]
