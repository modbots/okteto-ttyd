FROM alpine:3.17
COPY npc /usr/sbin/npc
RUN chmod +x /usr/sbin/npc
CMD ["/usr/sbin/npc", "-server=$NPC_URL", "-vkey=$NPC_KEY", "-type=tcp"]
