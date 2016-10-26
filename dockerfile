FROM docker.io/lwieske/java-8 
ADD docker.sh /
RUN chmod +x /docker.sh
CMD ["/docker.sh"]
