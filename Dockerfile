FROM debian:latest

RUN apt-get update && \
    apt-get install -y openssh-server sudo

EXPOSE 22

COPY entrypoint.sh /
CMD ["/entrypoint.sh"]
