FROM centos
RUN add /docker.sh /
RUN chmod +x /docker.sh
CMD ["/docker.sh"]
