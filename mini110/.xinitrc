#urxvtd -q -o -f
#thunar --daemon &

if [[ -d /usr/share/fonts ]]; then
  for d in /usr/share/fonts/*; do [[ -d $d ]] && xset +fp "$d"; done
fi
xset fp rehash

#xset r rate 250 25 &
#xmodmap ~/.Xmodmap &
#xsetroot -cursor_name left_ptr &
#xrdb -merge ~/.Xresources

if [[ -d /etc/X11/xinit/xinitrc.d ]]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do [[ -x $f ]] && . "$f"; done
  unset f
fi

[ ! -s ~/.mpd/mpd.pid ] && mpd

#xautolock -secure -time 15 -corners 00-0 -cornersize 5 -locker 'i3lock -d -p default -c 1a1a1a' &
#dropboxd &
#conky -c .conky/.conkyrc_sys
#sh conky_start.sh
hsetroot -solid "#00000045"
#conky -c .conky/.conkyrc_sys
exec xcompmgr &
#nm-applet &
#urxvt -T Terminal 
#thunar &
#compton -cGb
session /usr/bin/ssh-agent --awesome
#exec awesome --no-argb &> /tmp/awesome.log
exec ssh-agent awesome

#xcompmgr
#urxvt 
