FROM alpine:3.17
RUN apk update && apk add --no-cache ttyd nano bash 
EXPOSE 80
ENTRYPOINT ["ttyd -p 80"]
CMD ["bash"]
