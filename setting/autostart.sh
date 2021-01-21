# Display Resolution
xrandr --output DisplayPort-0 --auto --rotate left --output DisplayPort-1 --auto --left-of DisplayPort-0 &

# Transparency
picom -f &

# Status Bar
dwmblocks &

# Fcitx5
fcitx5 &

# Auto Lock
exec --no-startup-id xidlehooh --not-when-fullscreen --timer 300 "betterlockscreen -l blur" &
exec --no-startup-id xidlehooh --not-when-fullscreen --timer 1800 "systemctl suspend" &

# Wallpaper
feh --bg-fill --randomize ~/picture/wallpaper ~/picture/wallpaper &
while true; do
	feh --bg-fill --randomize ~/picture/wallpaper ~/picture/wallpaper &
	sleep 6m
done

