#!/bin/bash
sudo apt-get update && sudo apt-get install vim htop xterm xbindkeys newsboat w3m ranger feh mpv rofi vlc mplayer rtv moc curl git vifm xclip zathura xbacklight mupdf moreutils renameutils npm mpg123 pgpgpg translate-shell ffmpeg task-spooler urlview python-pip chromium-browser sdcv pandoc hwinfo w3m-img tmux xdotool libmodule-build-perl libtinfo-dev libncurses5-dev libreadline-dev libunicode-linebreak-perl frei0r-plugins npm surfraw surfraw-extra


echo "instaling youtube-dl"
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

echo "installing i3wm"
sudo apt-get install i3 suckless-tools i3status

echo "installing fuzzy finder"
sudo git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
