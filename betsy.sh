### LMDE 2 Betsy ###
#!/bin/bash
apt update
apt install fonts-noto-cjk fonts-roboto clementine nabi tilda geary -y
apt remove fonts-nanu* fonts-unfont* fonts-wqy-microhei ibus ibus-hangul fcitx-* rhythmbox -y
im-config -n hangul
wget http://packages.linuxmint.com/pool/main/m/mint-y-theme/mint-y-theme_1.1.5_all.deb
wget http://packages.linuxmint.com/pool/main/m/mint-y-icons/mint-y-icons_1.0.4_all.deb
wget https://launchpad.net/~agornostal/+archive/ubuntu/ulauncher/+files/ulauncher_1.0.0_all.deb
wget https://dl.dropboxusercontent.com/u/54450962/tilda.mo
wget https://dl.dropboxusercontent.com/u/54450962/elementary/ko_LC_MESSAGES_pantheon-mail.mo
wget https://github.com/bagjunggyu/alias/archive/master.zip
unzip master.zip && mv ~/alias-master/.bash_aliases . && rm master.zip && rm -r ~/alias-master
sudo mv ko_LC_MESSAGES_pantheon-mail.mo  /usr/share/locale/ko/LC_MESSAGES/geary.mo
sudo mv tilda.mo /usr/share/locale/ko/LC_MESSAGES/
apt deb *.deb;apt install -f
rm *.deb
apt dist-upgrade -y
apt autoremove --purge -y
rm betsy.sh
sudo reboot
