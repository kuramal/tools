FROM centos
RUN add /docker-test/docker.sh /
RUN chmod +x /docker.sh
CMD ["/docker.sh"]
