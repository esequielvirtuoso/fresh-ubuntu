# Open the /etc/systemd/logind.conf file in a text editor as root
sudo -H gedit /etc/systemd/logind.conf

# If HandleLidSwitch is not set to ignore then change it, and uncomment it.

HandleLidSwitch=ignore

# Restart the systemd daemon (be aware that this will log you off) with this command:
sudo service systemd-logind restart
