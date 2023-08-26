sudo iptables -F
sudo iptables -X

sudo iptables -A FORWARD -s 10.0.1.2 -d 10.0.6.2 -j ACCEPT
sudo iptables -A FORWARD -s 10.0.6.2 -d 10.0.1.2 -j ACCEPT

sudo iptables -A FORWARD -s 10.0.1.2 -d 10.0.5.2 -j ACCEPT
sudo iptables -A FORWARD -s 10.0.5.2 -d 10.0.1.2 -j ACCEPT

sudo iptables -A FORWARD -s 10.0.3.2 -d 10.0.4.2 -j ACCEPT
sudo iptables -A FORWARD -s 10.0.4.2 -d 10.0.3.2 -j ACCEPT

sudo iptables -A FORWARD -s 10.0.6.1 -d 10.0.1.2 -j ACCEPT
sudo iptables -A FORWARD -s 10.0.1.2 -d 10.0.6.1 -j ACCEPT

sudo iptables -A FORWARD -j DROP

sudo iptables -A FORWARD -m state --state RELATED,ESTABLISHED -j ACCEPT

sudo sysctl -w net.ipv4.ip_forward=1
