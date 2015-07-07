[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults

xrandr --dpi 143
exec i3
