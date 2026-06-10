#!/usr/bin/env fish

# 获取当前布局
set current_layout (hyprctl getoption general:layout | grep 'str:' | awk '{print $2}')

if test "$current_layout" = "dwindle"
    hyprctl keyword general:layout scrolling
    sleep 0.3
    hyprctl dispatch layoutmsg "fit visible"
    notify-send "Hyprland" "Layout switched to: Scrolling" -t 2000
else
    hyprctl keyword general:layout dwindle
    notify-send "Hyprland" "Layout switched to: Dwindle" -t 2000
end