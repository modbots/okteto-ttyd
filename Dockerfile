FROM alpine:3.17
RUN apk update && apk add --no-cache ttyd nano bash tini
EXPOSE 7681
WORKDIR /root
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["ttyd", "-W", "bash"]
