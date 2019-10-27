#!/bin/bash
# files that I install

sudo apt install vim -y

# instal git and fuzzy finder
sudo apt install git -y
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo apt install vim-gtk3 -y
sudo apt install i3status dmenu i3lock xbacklight feh conky -y
sudo apt install xterm -y
sudo apt install pgp -y
sudo apt install tar -y
sudo apt install gzip -y
sudo apt install pgp -y
sudo apt install python3.7 -y
sudo apt install surfraw -y
sudo apt install feh -y
sudo apt install mpv -y
sudo apt install mpg123 -y
sudo apt install chromium -y
sudo apt install youtube-dl -y
sudo apt install rofi -y
sudo apt install vlc -y
sudo apt install ffmpeg -y
sudo apt install mplayer -y
sudo apt install trans -y
sudo apt install translate-shell -y
sudo apt install sdvc -y
sudo apt install opera -y
sudo apt install rtv -y
sudo apt install mocp -y
sudo apt install moc -y
sudo apt install curl -y
sudo apt install perl -y
sudo apt install software-properties-common -y
sudo apt install locate -y
sudo apt install mlocate -y
sudo apt install vifm -y
sudo apt install htop -y
sudo apt install newsboat -y
sudo apt install fzf -y
sudo apt install xclip -y
sudo apt install xinput -y
sudo apt install feh -y
sudo apt install xbacklight -y
sudo apt install zathura -y
sudo apt install mupdf -y
sudo apt install transmission -y
sudo apt install w3m w3m-img -y
sudo apt install moreutils -y
sudo apt install renameutils -y
sudo apt install libmodule-build-perl -y
sudo apt install libjson-perl -y
sudo Build installdeps -y #youtube-viewer kurarken dosyanin icinde bu komutu ver.

# bash case-insensitive completion yapsin diye
# sudo vim /etc/inputrc dosyasina asagidaki satiri ekle
# set completion-ignore-case on
