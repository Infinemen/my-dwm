# Display Resolution
xrandr --output DisplayPort-1 --auto --rotate left --output DisplayPort-0 --auto --left-of DisplayPort-1 &

# Transparency
picom -f &

# Status Bar
nohup dwmblocks > /dev/null 2>&1 &

# Fcitx5
fcitx5 &

# Wallpaper
feh --bg-fill --randomize ~/picture/wallpaper ~/picture/wallpaper &
while true; do
	feh --bg-fill --randomize ~/picture/wallpaper ~/picture/wallpaper &
	sleep 6m
done

