docker run -it -e SYSLOG_USERNAME=admin -e SYSLOG_PASSWORD=1234 -p 8080:80 -p 514:514/udp pbertera/syslogserver


Sinon une autre approche :

Envoyer un log depuis debian : 

logger System rebooted for hard disk upgrade
tail -f /var/log/message


Changer ses répertoire de logs :
apt install rsyslog -y
nano /etc/rsyslog.conf
*.*     @@192.36.253.16:1514

Puis le serveur sous docker : 
https://searchitoperations.techtarget.com/tutorial/Centrally-manage-IT-logs-with-this-Graylog-tutorial
