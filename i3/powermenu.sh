
chosen=$(echo -e "Shutdown\nLogout\nReboot\nSuspend" | dmenu -i -p "Power menu :3")

case "$chosen" in
    Logout)
        i3-msg exit
        ;;
    Shutdown)
        systemctl poweroff
        ;;
    Reboot)
        systemctl reboot
        ;;
    Suspend)
        i3lock
        systemctl suspend
        ;;
esac
