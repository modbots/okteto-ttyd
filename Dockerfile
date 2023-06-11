FROM alpine:3.17

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY npc /usr/sbin/npc
RUN chmod +x /usr/sbin/npc

CMD ["bash","/entrypoint.sh"] 

