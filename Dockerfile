FROM alpine:3.17
WORKDIR /root
COPY npc /usr/sbin/npc
RUN chmod +x /usr/sbin/npc
COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"] 
