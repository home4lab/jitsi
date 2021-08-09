# how to ?
chmod +x install

bash install


# jitsi meet self host
need open port tcp 443, and udp 10000

echo 'deb https://download.jitsi.org stable/' >> /etc/apt/sources.list.d/jitsi-stable.list
wget -qO - https://download.jitsi.org/jitsi-key.gpg.key | sudo apt-key add -

apt update
apt install jitsi-meet




/etc/jitsi/videobridge/sip-communicator.properties

org.ice4j.ice.harvest.NAT_HARVESTER_LOCAL_ADDRESS=<Local.IP.Address>
org.ice4j.ice.harvest.NAT_HARVESTER_PUBLIC_ADDRESS=<Public.IP.Address>


SET RESOLUTION
/etc/jitsi/meet/$(hostname -f)-config.js


     videoQuality: {
        preferredCodec: 'VP9',
        maxBitratesVideo: {
            low: 200000,
            standard: 500000,
            high: 1500000
        },
        minHeightForQualityLvl: {
            360: 'standard',
            720: 'high'
        },


/etc/prosody/conf.avail/"your domain fqdn".cfg.lua
change "anonymous" with "internal_plain"

/etc/jitsi/jicofo/sip-communicator.properties
add this line
org.jitsi.jicofo.auth.URL=XMPP:"your domain fqdn"

systemctl restart prosody
systemctl restart jicofo 
systemctl restart jitsi-videobridge2

prosodyctl register "user" $(hostname -f) "password"

or u can use this prosodyctl adduser "user"@$(hostname -f)
then input the passsword


