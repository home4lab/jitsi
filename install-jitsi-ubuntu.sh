

echo ""
echo " === INSTALL DEPEDENCIES === "
echo ""
apt install apt-transport-https curl software-properties-commo

echo ""
echo " === ENABLE PACKAGE REPOSITORY UNIVERSE === "
echo ""
apt-add-repository universe


# hostnamectl set-hostname jitsimeet.freenetwork.co.id


echo ""
echo " === ADDING GPG KEY AND SOURCELIST === "
echo ""
curl https://download.jitsi.org/jitsi-key.gpg.key | sudo sh -c 'gpg --dearmor > /usr/share/keyrings/jitsi-keyring.gpg'
echo 'deb [signed-by=/usr/share/keyrings/jitsi-keyring.gpg] https://download.jitsi.org stable/' | sudo tee /etc/apt/sources.list.d/jitsi-stable.list > /dev/null
apt update

echo ""
echo " === CONFIGURE & ENABLE FIREWALL === "
echo ""
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 10000/udp
sudo ufw allow 22/tcp
sudo ufw allow 3478/udp
sudo ufw allow 5349/tcp
sudo ufw enable -y

echo ""
echo " === CHECKING STATUS FIREWALL === "
echo ""
sudo ufw status verbose

echo ""
echo " === INSTALL JITSI MEET === "
echo ""
apt install jitsi-meet




