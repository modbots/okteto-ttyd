FROM alpine:3.17

COPY entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

COPY npc /usr/sbin/npc
RUN chmod +x /usr/sbin/npc

CMD ["/root/entrypoint.sh"] 

