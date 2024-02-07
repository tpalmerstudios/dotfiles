[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults
feh --bg-max --randomize ~/Pictures/Wallpaper
#. /etc/X11/Xsession
exec i3
