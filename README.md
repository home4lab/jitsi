# jitsi

echo 'deb https://download.jitsi.org stable/' >> /etc/apt/sources.list.d/jitsi-stable.list
wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -

apt update
apt install jitsi-meet

/usr/share/jitsi-meet/scripts/install-letsencrypt-cert.sh


/etc/jitsi/videobridge/sip-communicator.properties

org.ice4j.ice.harvest.NAT_HARVESTER_LOCAL_ADDRESS=<Local.IP.Address>
org.ice4j.ice.harvest.NAT_HARVESTER_PUBLIC_ADDRESS=<Public.IP.Address>


SET RESOLUTION
/etc/jitsi/meet/<domain fqdn>-config.js


resolution: 720,
maxFps: 15,

constraints: {
	video: {
		aspecRatio: 16/9,
		frameRate: {
			max: 15
		},

====
need open port tcp 443, and udp 10000
====

/etc/prosody/conf.avail/<domain fqdn>.cfg.lua
/etc/jitsi/jicofo/sip-communicator.properties
add this line
org.jitsi.jicofo.auth.URL=XMPP:<domain fqdn>

systemctl restart prosody
systemctl restart jicofo 
systemctl restart jitsi-videobridge2

prosodyctl register boby <domain fqdn> password

