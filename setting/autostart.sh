# Display Resolution
xrandr --output DisplayPort-0 --auto --rotate left --output DisplayPort-1 --auto --left-of DisplayPort-0 &

# Transparency
picom -f &

# Status Bar
dwmblocks &

# Fcitx5
fcitx5 &

# Auto Lock
xidlehook \
  --not-when-fullscreen \
  --timer 360 \
    'xrandr --output DisplayPort-0 --brightness .1; xrandr --output DisplayPort-1 --brightness .1' \
    'xrandr --output DisplayPort-0 --brightness 1; xrandr --output DisplayPort-1 --brightness 1' \
  --timer 366 \
    'xrandr --output DisplayPort-0 --brightness 1; xrandr --output DisplayPort-1 --brightness 1; betterlockscreen -l blur' \
    '' \
  --timer 1800 \
    'systemctl suspend' \
    '' &

# Wallpaper
feh --bg-fill --randomize ~/picture/wallpaper ~/picture/wallpaper &
while true; do
	feh --bg-fill --randomize ~/picture/wallpaper ~/picture/wallpaper &
	sleep 6m
done

