FROM debian:latest

RUN apt-get update && \
    apt-get install openssh-server sudo

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config"]
