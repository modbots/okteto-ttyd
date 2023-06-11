FROM alpine:3.17
WORKDIR /root
COPY npc /usr/sbin/npc
RUN chmod +x /usr/sbin/npc
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"] 
