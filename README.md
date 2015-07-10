# ubuntu-desktop-vnc

1. install required packages

2. append settings into /usr/bin/vncserver

	"# exec /etc/X11/xinit/xinitrc\n\n".
	"gnome-panel &\n".
	"gnome-settings-daemon &\n".
	"metacity &\n".
	"nautilus &\n".
	"gnome-terminal &\n".

3. set password of vnc

	vncpasswd < /root/vnc-passwd
