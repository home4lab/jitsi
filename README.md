# how to ?
first, you need to set your hostname

hostnamectl set-hostname "your domain FQDN"

then run the script

chmod +x install

bash install


# after installation




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



# how to make authentication
edit this file >> **/etc/prosody/conf.avail/$(hostname -f).cfg.lua**

change **anonymous** with **internal_plain**

echo "org.jitsi.jicofo.auth.URL=XMPP:$(hostname -f)" >> /etc/jitsi/jicofo/sip-communicator.properties

# how to create user login
prosodyctl register "user" $(hostname -f) "password"

or u can use this prosodyctl adduser "user"@$(hostname -f)

then input the passsword


# how to restart service
systemctl restart prosody

systemctl restart jicofo

systemctl restart jitsi-videobridge2


# OPTIONAL

/etc/jitsi/videobridge/sip-communicator.properties

org.ice4j.ice.harvest.NAT_HARVESTER_LOCAL_ADDRESS=<Local.IP.Address>

org.ice4j.ice.harvest.NAT_HARVESTER_PUBLIC_ADDRESS=<Public.IP.Address>


