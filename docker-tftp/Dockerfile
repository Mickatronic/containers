FROM debian:latest

MAINTAINER HONVAULT <mickael.honvault@ac-lille.fr>

# Install tftpd-hpa deamon
RUN apt-get update
RUN apt-get install -y tftpd-hpa
RUN apt-get install -y supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN chown tftp:tftp /srv/tftp
#RUN chmod 777 -R /var/lib/tftpboot
VOLUME /srv/tftp
ADD test.txt /srv/tftp/test.txt

EXPOSE 69/udp

#CMD /usr/sbin/in.tftpd --foreground --user tftp --address 0.0.0.0:69 --secure /var/lib/tftpboot
CMD ["/usr/bin/supervisord"]
