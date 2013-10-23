numlockx &
xset -b

# Start a D-Bus session
source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
xscreensaver-command -exit
xscreensaver -no-splash &

conky -c ~/.conky/.conkyrc_sys
conky -c ~/.conky/.conkyrc_oimap
#exec dbus-launch thunar --daemon & openbox-session
exec dbus-launch thunar --daemon & awesome

#dropboxd & 
#xcompmgr &
#exec xcompmgr &
#exec thunar --daemon &
#'eval `gnome-keyring-daemon`
#exec awesome
#exec openbox-session 


# Start a D-Bus session
#source /etc/X11/xinit/xinitrc.d/30-dbus
# Start GNOME Keyring
#eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
# You probably need to do this too:
#export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
