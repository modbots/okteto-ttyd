FROM alpine:3.17
RUN apk update && apk add --no-cache ttyd nano bash 
COPY entrypoint.sh /entrypoint.sh
RUN mkdir -p /var/lib/zerotier-one
COPY planet /var/lib/zerotier-one/planet
RUN chmod +x /entrypoint.sh 
RUN echo "root:root" | chpasswd
EXPOSE 80
ENTRYPOINT ["ttyd -p 80"]
CMD ["bash"]
