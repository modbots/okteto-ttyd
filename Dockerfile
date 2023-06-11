FROM alpine:3.17
WORKDIR /data
RUN chmod +x /entrypoint.sh

COPY npc /usr/sbin/npc
RUN chmod +x /usr/sbin/npc

ENTRYPOINT ["/entrypoint.sh"] 

