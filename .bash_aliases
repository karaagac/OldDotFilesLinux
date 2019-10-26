# PERSONAL ALIASES
# Bu dosyayi yeri: /home/xalil/.oh-my-zsh/custom/aliases.zsh
# yada eger bash kullanacaksan .bash_aliases olarak kaydet.

#vim as manpager
#alias vless='/usr/share/vim/vim80/macros/less.sh' 

#{{{File Extentions
#s means suffics.
#alias -s pdf=mupdf
#alias -s org=emacs
#alias -s png=feh
#alias -s tiff=feh
#alias -s jpg=feh
#alias -s JPG=feh
#alias -s jpeg=feh
#alias -s flac=mpv
#alias -s mp3=mpv
#alias -s webm=mpv
#alias -s mp4=mpv
#alias -s mkv=mpv
#alias -s avi=mpv
#alias -s mov=mpv
#alias -s md=vim
#}}}

# Global Alias
#alias -g L="| less"


#{{{ Radyo Alias
alias radyo_cnnturk="mpg123 CNN TÜRK RADYO = http://radyo.dogannet.tv/cnnturk"
alias radyo_joyfm="mpg123 JOY FM = http://17733.live.streamtheworld.com/JOY_FM.mp3"
alias radyo_ntv="mpg123 NTV RADYO = http://ntvrdwmp.radyotvonline.com:80"
alias radyo_joyturk="mpg123 JOY TURK = http://17753.live.streamtheworld.com/JOY_TURK.mp3"
alias radyo_bloomberght="chromium-browser "http://www.bloomberghtradyo.com/" & "
#}}}

#{{{ Tv Alias 
alias tv-bloomberg="streamlink 'https://www.bloomberght.com/tv'"
alias tv_foxtv="chromium-browser "https://www.fox.com.tr/canli-yayin" & "
#}}}

#{{{ keyboard layout
alias trklavye="setxkbmap 'tr(intl)'" 
alias engklavye="setxkbmap us"
#}}}

# youtube-viewer Watch Youtube
# https://www.youtube.com/watch?v=FnJ67oAxVQ4 #tutorial
# -2 (240p) -3 (360p) -4 (480p) -7 (720p) -1 (1080p)
# download icin -d 1 (1 numarali videoyu indir)
alias yttoday="youtube-viewer --video-player=mpv  --within=1d -4 -C --order=viewCount --results=30"
alias yt1y="youtube-viewer --video-player=mpv --within=1y -4 -C --order=viewCount --results=30"
alias yt5y="youtube-viewer --video-player=mpv --within=5y -4 -C --order=viewCount --results=30"
alias yt1m="youtube-viewer --video-player=mpv --within=1m -4 -C --order=viewCount --results=30"
alias yt1w="youtube-viewer --video-player=mpv --within=7d -4 -C --order=viewCount --results=30"
alias ytWatchVideo="youtube-viewer --video-player=mpv --within=1y -4 -C --order=viewCount --results=30"
alias ytListenMp3="youtube-viewer --video-player=mpv -n --within=5y -C --order=viewCount --results=30"
alias ytListeCal="youtube-viewer --video-player=mpv -n -A --within=5y -C --order=viewCount --results=30"
alias ytWatch="youtube-viewer --video-player=mpv -4 -C"

# youtube-dl Download Mp3
alias ytdownload-mp3="youtube-dl --extract-audio --audio-format mp3 --prefer-ffmpeg"

# youtube-dl search a user
alias yt-search-user="youtube-viewer -C -uv"


#mpv music dinle
#dosyaya kaydettigin youtube linklerini mpv ile dinlemek icin
alias muziklistesi="mpv --no-video" #play youtube links in m3u files
alias youtube-muzik="mpv --no-video" #dosya adi .m3u olmali

#{{{  Programlar
alias m="mousepad"
alias rss="newsbeuter"
alias rofi="rofi -combi-modi window,drun -show combi -modi combi"
alias mpv="mpv --no-audio-display"
alias rtv="rtv --enable-media"
alias yv="youtube-viewer --video-player=mpv -4 -C --results=30"
alias less="less -i"
alias sdcv="sdcv --color"
alias mpv-audio="mpv --no-video"
alias nvlc="nvlc --no-color"
alias trelby="cd /opt/trelby/bin/"
alias beautifyvim="vim -s ~/scripts/beautify.vim"
alias f="firefox"
#}}}

#{{{ ffmpeg screen record
# Record screen without sound
alias screenrecord-nosound="ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast screenrecord-nosound.mp4"
alias recordscreen-nosound="ffmpeg -video_size 1920x1080 -framerate 30 -f x11grab -i :0.0 -c:v libx264 -qp 0 -preset ultrafast screenrecord-nosound.mp4"

# Record screen with sound
alias recordscreen="ffmpeg -f x11grab -s 1920x1080 -i :0.0 -f alsa -i default screenrecord.mp4"
alias screenrecord="ffmpeg -f x11grab -s 1920x1080 -i :0.0 -f alsa -i default screenrecord.mp4"

# ffmpeg audio record
alias recordaudio="ffmpeg -f alsa -i default audiorecord.mp3"

# ffmpeg web cam kayit
alias recordwebcam="ffmpeg -i /dev/video0 -f alsa -i default webcamrecord.mp4"
alias webcam-record="ffmpeg -i /dev/video0 -f alsa -i default webcamrecord.mp4"
# List webcam
webcam-list() { v4l2-ctl --list-formats-ext && v4l2-ctl --list-devices ;}
# Open webcam
webcam-mplayer-open-SD() { mplayer tv:// -tv driver=v4l2:width=640:height=360:device=/dev/video0 -fps 30 -vf screenshot -ontop -geometry "99%:95%" ;}
webcam-mplayer-open-HD() { mplayer tv:// -tv driver=v4l2:width=1280:height=720:device=/dev/video0 -fps 30 -vf screenshot -ontop -geometry "99%:95%" ;}
#}}}

#{{{ Terminal Commands

alias  ls="ls -hN --color=auto --group-directories-first"
alias  l="ls -al"
alias  grep='grep -i -n --color=auto'
alias  update="sudo apt-get update"
alias  upgrade="sudo apt-get upgrade"
alias  install="sudo apt-get install"
alias  autoremove="sudo apt autoremove"
alias  pdfgrep="pdfgrep -in"
alias  fzf="fzf -e"
alias  vi="vim"
alias  zsh="source ~/.zshrc"
alias  tar="tar -zcvf"
alias  untar="tar -zxf"
alias  filmara="fzf-moviedb"
alias  filmekle="cfg-moviedb"
#}}}

#{{{ file manager and navigation
alias  h="cd ~"
alias  fde="cd ~/Desktop/"
alias  fdo="cd ~/Downloads/"
alias  fvi="cd ~/Videos/"
alias  fmu="cd ~/Music/"
alias  fpi="cd ~/Pictures/"
alias  fpo="cd ~/Podcasts/"
alias  fbk="cd ~/Desktop/Books/"
alias  flv="cd ~/Videos/Linux-Commands-Videos/"
alias  fsc="cd ~/scripts/"
#}}}

alias feh="feh %f -B white -g 1128x864"
alias f-multisnippet="cd ~/.multisnippet"
alias f-snippetEdit="vim ~/.snippetrc"
alias f-i3="vim ~/.config/i3/config"
alias f-bookmarks="vim ~/bookmarks"
alias f-ba="vim ~/.bash_aliases"
alias f-bashrc="vim ~/.bashrc"
alias bashrc="source ~/.bashrc"

#{{{ Markdown Files Shortcuts
alias d-english="vim ~/Desktop/Books/English/English-md/index.md"
alias d-linux="vim ~/Desktop/NOTLAR/Linux-Bilgiler/index.md"
alias d-notlar="vim ~/Desktop/NOTLAR/Genel-Notlar/index.md"
alias d-filmmaking="vim ~/Desktop/NOTLAR/Filmmaking/index.md"
alias d-crypto="vim ~/Desktop/NOTLAR/Crypto/index-crypto.md"
alias d-photo="vim ~/Desktop/NOTLAR/photography-cinematography/index.md"
alias d-design="vim ~/Desktop/NOTLAR/design/index-design.md"
#}}}

#pdf shortcut
alias gram="zathura ~/Desktop/English_Grammar_B_Azar_4th.pdf"

# other files shortcut
alias bm="~/scripts/terminalbookmarks.sh" #search bookmarks w fuzzy finder on terminal
alias searchbookmarks="~/scripts/terminalbookmarks.sh" #search bookmarks w fuzzy finder on terminal

alias ssnippets="~/scripts/searchsnippet.sh" #search snippets and copy the result
alias searchsnippets="~/scripts/searchsnippet.sh" #search snippets and copy the result

# pgpgpg
alias sifre="pgpgpg -c"

#{{{ find command shortcuts
alias ffile="find . -type f -iname" # find files incasesensitive 
alias ffolder="find . -type d -iname" # find folderd incasesensitive
#}}}

#{{{ podcast with vlc player - eger cvlc deki c yi silersen normal vlc arayuzu ile acar.
alias podcast-doublefeature="vlc "https://doublefeature.fm/feed/podcast" &"
alias podcast-recodedecode="vlc "http://feeds.feedburner.com/Recode-Decode" & "
alias podcast-motherboard="vlc "http://radiomotherboard.libsyn.com/rss" &"
alias podcast-radiowest="vlc "http://radiowest.kuer.org/podcasts/220/rss.xml" & "
alias podcast-tedvideo="vlc "http://feeds.feedburner.com/TEDTalks_video" & "
alias podcast-rotten="vlc "http://feeds.feedburner.com/RTPodcast" & "
alias podcast-politico="vlc "http://feeds.soundcloud.com/users/soundcloud:users:284909575/sounds.rss" & "
alias podcast-LifeHacker="vlc "http://feeds.feedburner.com/TheUpgradeByLifehacker" & "
alias podcast-moth="vlc "http://feeds.feedburner.com/themothpodcast" & "
alias podcast-Mint="vlc "https://mintcast.org/category/mp3/feed/" & "
alias podcast-Decrypted="vlc "http://feeds.bloomberg.fm/BLM3923153289" & "
alias podcast-Converge-with-Casey-Newton="vlc "https://feeds.feedburner.com/ConvergeWithCaseyNewton" &"
alias podcast-Tai-Lopez="vlc "http://thetailopezshow.libsyn.com/rss" & "
alias podcast-fresh-air="firefox "https://www.npr.org/programs/fresh-air/" &"
#}}}

# Hardware
alias webcam-open="mplayer tv://device=/dev/video01"

#{{{ File Shortcuts
alias f-zshedit="vim ~/.zshrc"
alias f-vimrc="vim ~/.vimrc"
alias f-newsbeuterUrl="vim ~/.newsbeuter/urls"
alias f-autostartrc="vim ~/.autostartrc"
alias f-xresources="vim ~/.Xresources"
alias f-scripts="vim ~/scripts"
#}}}

#{{{ Surfraw Search Online w3m
alias  sr-acronym="sr acronym"
alias  sr-kisaltma="sr acronym"
#alias sr-amazon="sr amazon"
alias  sr-siir="sr azlyrics"
alias  sr-lyrics="sr azlyrics"
#alias sr-bbcnews="sr bbcnews"
#alias sr-bookfinder="sr bookfinder"
#alias sr-cnn="sr cnn"
#alias sr-eksisozluk="sr eksisozluk"
alias  sr-etym="sr etym"
#alias sr-extratorrent="sr extratorrent"
#alias sr-gimages="sr gimages"
alias  sr-google="sr google"
#alias  sr-imdb="sr imdb"
#alias sr-imgur="sr imgur"
alias  sr-webster="sr webster"
alias  sr-piratebay="sr piratebay"
#alias sr-reddit="sr reddit"
#alias  sr-rotten="sr rotten"
#alias sr-translate="sr translate"
alias  sr-urban="sr urban"
#alias sr-wikipedia="sr wikipedia"
alias  sr-youtube="sr youtube"
alias  sr-idioms="sr idioms"
#}}}

#{{{ Translate Turkce Alias
#English
alias entr="trans en:tr" #English to Turkish
alias tren="trans tr:en" #Turkish to English
#French
alias trfr="trans tr:fr" #Turkish to French
alias frtr="trans fr:tr" #French to Turkish
#Spanich
alias estr="trans es:tr" #Spanish to Turkish
alias tres="trans tr:es" #Turkish to Spanish

#Translate from turkish to english
treng() {
  trans tr:en "$1" | less
 }
#}}}

#{{{===Aspell===============
alias aspell-check-file="aspell check --dont-backup"

# I added  that to simplify string
aspell-fix-word() {
 aspell -a <<< "$1"
  }
# Another one - Same but different name - I added  that to simplify string
spell-check() {
 aspell -a <<< "$1"
  }
#}}}

#{{{fountain convert
fountainconvert () {
node /home/xalil/Downloads/afterwriting-labs-1.10.0/awc.js --source $1 --pdf ~/Desktop/Screenplay.pdf
}
#}}}

#{{{ xclip copy paste
# copy/paste for linux machines (Mac style)
alias pbcopy="xclip -selection clipboard"     # copy to clipboard, ctrl+c, ctrl+shift +c
alias pbpaste="xclip -selection clipboard -o" # paste from clipboard , ctrl+v, ctrl+shift+v
alias pbselect="xclip -selection primary -o"  # paste from highlight, middle click, shift+insert

# Copy Cut Paste Files
alias xcopyfile="xclip-copyfile"
alias xcutfile="xclip-cutfile"
alias xpastfile="xclip-pastefile"
#}}}

# surfraw
# alias sr="sr -browser=w3m" #surfraw cli browser
alias surfraw="surfraw -browser=$BROWSER" # surfraw gui browser

#{{{ sdcv (stardict) kisayolu
sdc() {
    sdcv --color "$1" | less
  }
#=============================
#dict
dic() {
  dict "$1" | less
  }
#}}}

#{{{ w3m aliases
alias hurriyet="w3m www.hurriyet.com.tr"
alias milliyet="w3m www.milliyet.com.tr"
alias shiftdelete="w3m www.shiftdelete.net"
alias t24="w3m www.t24.com.tr"
#}}}

#===xterm color scheme reload===
alias rld-Xresources="xrdb -load ~/.Xresources"

#{{{=====Reddit-channels-for-rtv===
alias rtv-bitcoin="rtv --enable-media -s /bitcoin"
alias rtv-privacy="rtv --enable-media -s /privacy"
alias rtv-linux="rtv --enable-media -s /linux"
alias rtv-opensource="rtv --enable-media -s /opensource"
alias rtv-cryptocurrecy="rtv --enable-media -s /cryptocurrency"
alias rtv-cryptomarkets="rtv --enable-media -s /cryptomarkets"
alias rtv-commandline="rtv --enable-media -s /commandline"
alias rtv-motivational="rtv --enable-media -s /GetMotivated"
alias rtv-Documentaries="rtv --enable-media -s /Documentaries"
alias rtv-Filmmakers="rtv --enable-media -s /Filmmakers"
alias rtv-shortcuts="rtv --enable-media -s /shortcuts"
#}}}

#{{{======Youtube-viewer-channels=
# -C means in color, -4 means 420p, -cv means channel, -uv means user videso 
#
#youtube channels by channel ID
# channel ID icin -cv ekle. username icin -u= yap
#
#youtube channels
alias yt-saklilezzetler="youtube-viewer --video-player=mpv -C -4 -u=saklilezzetler"
alias yt-tai-lopez="youtube-viewer --video-player=mpv -C -4 -u=tailopezofficial"

#linux youtube
alias ytl-INEtraining="youtube-viewer --video-player=mpv -C  -4 -u=INEtraining"
alias ytl-gotbletu="youtube-viewer --video-player=mpv -C -4 -u=gotbletu"
alias ytl-lunduke="youtube-viewer --video-player=mpv -C  -4 -u=Bryanlunduke "
alias ytl-luke-smith="youtube-viewer --video-player=mpv -C  -4 -cv UC2eYFnH61tmytImy1mTYvhA"
alias ytl-conner="youtube-viewer --video-player=mpv -C  -4 -u=connermcd"
alias ytl-corey="youtube-viewer --video-player=mpv -C  -4 -u=schafer5" #corey schafer

#youtube news
alias ytn-tyt="youtube-viewer --video-player=mpv -C -4 -u=TheYoungTurks"
alias ytn-cnn="youtube-viewer --video-player=mpv -C  -4 -u=CNN"
alias ytn-CBSThisMorning="youtube-viewer --video-player=mpv -C  -4 -u=CBSThisMorning"
alias ytn-ABCNews="youtube-viewer --video-player=mpv -C  -4 -u=ABCNews"
alias ytn-bbcnews="youtube-viewer --video-player=mpv -C  -4 -u=bbcnews"
alias ytn-Guardian="youtube-viewer --video-player=mpv -C  -4 -u=TheGuardian"
alias ytn-skynews="youtube-viewer --video-player=mpv -C  -4 -u=skynews"
alias ytn-vox="youtube-viewer --video-player=mpv -C  -4 -u=voxdotcom"
alias ytn-msnbc="youtube-viewer --video-player=mpv -C -4 -u=msnbcleanforward"
alias yte-cnbc="youtube-viewer --video-player=mpv -C  -4 -u=cnbc"

#youtube filmmaking
alias ytf-Kellan-Reck="youtube-viewer --video-player=mpv -C  -4 -u=MrVaritech"
alias ytf-Chris-Stuckmann="youtube-viewer --video-player=mpv -C  -4 -cv UCCqEeDAUf4Mg0GgEN658tkA"

#tech youtube
alias ytt-verge="youtube-viewer --video-player=mpv -C  -4 -u=TheVerge"
alias ytt-wired="youtube-viewer --video-player=mpv -C  -4 -u=wired"
alias ytt-engadget="youtube-viewer --video-player=mpv -C  -4 -u=engadget"
alias ytt-mkbhd="youtube-viewer --video-player=mpv -C  -4 -u=marquesbrownlee"
alias ytt-unbox-theraphy="youtube-viewer --video-player=mpv -C  -4 -u=unboxtherapy"

# youtube English
alias yteng-venessa="youtube-viewer --video-player=mpv -C  -4 -u=theteachervanessa"
#}}}

#{{{ da vinci
alias davinci-cache-files="cd /opt/resolve/Media/CacheClip"
alias davinci-gallery-stills="cd /opt/resolve/Media/.gallery"
#}}}

#{{{ podbeuter - rss  icin download scripti
# Herhangi bir linki, belgeyi, videoyu vs. bu script ile podcast download eder gibi download edebilirsin.
# https://github.com/gotbletu/shownotes/blob/master/podqueue.md
#
podqueue() {
  if [ $# -lt 1 ]; then
    echo -e "Add Links To Podboat, Use Podboat As A TUI Download Manager"
    echo -e "\nUsage: $0 <url>"
    echo -e "\nExample:\n$0 http://abcxyz.com/filename.mp3"
    return 1
  fi

  URL="$1"
  SAVE_PATH=~/Downloads
  GET_FILENAME="$(echo "$1" | rev | cut -d\/ -f1 | rev | sed -e 's@\%20@\_@g' )"

  echo "$URL" "$SAVE_PATH/$GET_FILENAME" >> ~/Downloads/
}
#}}}

#{{{ remove mp3 tags
alias remove-mp3-tags="eyeD3 --remove-all"
alias mp3-tags-remove="eyeD3 --remove-all"

# mp3 lerin taglerini daha sade gosteriyor bu sekilde
mp3tag() {

 ffprobe -i "$1" -hide_banner

 }

#}}}

## ekledigim scriptler

# {{{ file manager - open file with vim
# fuzzy finder - find files on current folder only
#asagidaki de calisiyor
#fm() { fzf | xargs -r $EDITOR ;}
#
fm() {
FILE=$(fzf) && vim "$FILE"
}
#}}}

#{{{  note searcher - Search NOTES folder and open with vim
# xargs -o vim bir program aramadan direk vim ile aciyor. 
ns() { find ~/Desktop/NOTLAR/* -type f | fzf | xargs -o vim ;}
sn() { find ~/Desktop/NOTLAR/* -type f | fzf | xargs -o vim ;}
#}}}

#{{{ script shortcuts

alias mp3ara="~/scripts/mp3ara.sh"
alias pdfara="~/scripts/pdfara.sh"

# }}} 

#{{{ search files on fzf and xdg-open them - home media folders only
alias s="~/scripts/search.sh"
#}}}

#{{{ fzf fuzzy finder - search and jump to folders found
ff() {
DIR=$(find ${1:-.} -type d 2> /dev/null | fzf) && cd "$DIR" 
}
#}}}
