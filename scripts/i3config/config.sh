count=`ps aux | grep -c gedit`
if [ $count -eq 1 ]; then
     gedit ~/.config/i3/config + ~/.Xresources + ~/.bashrc + ~/myi3/keybindings.txt + ~/.config/i3/i3blocks.conf 
fi
