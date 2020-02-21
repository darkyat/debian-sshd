FROM debian:latest

RUN apt update && \
    apt install openssh-server sudoers

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e", "-f", "/etc/ssh/sshd_config"]
