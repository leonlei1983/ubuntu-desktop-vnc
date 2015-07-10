FROM leonlei1983/ubuntu
MAINTAINER Leon Lei <leonlei1983@gmail.com>

ADD vnc-passwd /root/

RUN apt-get update && \
	apt-get install -y --no-install-recommends ubuntu-desktop && \
	apt-get install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal vnc4server && \
	vncpasswd < /root/vnc-passwd

ADD vncserver /usr/bin/

# EXPOSE 5901
# CMD ['/usr/bin/vncserver', ':1']
