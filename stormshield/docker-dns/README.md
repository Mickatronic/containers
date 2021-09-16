docker run -d --name bind9 -p 53:53 -p 53:53/udp -v /home/debian/dns/named.conf:/etc/bind/named.conf resystit/bind9:latest


debian : 
apt install dnsutils -y	
nslookup google.fr - 172.17.0.2

windows : 
nslookup google.fr 192.168.32.2

