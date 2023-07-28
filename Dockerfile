FROM alpine:3.17
WORKDIR /app
USER root

COPY entrypoint.sh ./
COPY npc /usr/sbin/npc
RUN chmod +x ./entrypoint.sh /usr/sbin/npc

ENTRYPOINT ["./entrypoint.sh"] 
