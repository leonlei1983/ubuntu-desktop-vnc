FROM leonlei1983/ubuntu
MAINTAINER Leon Lei <leonlei1983@gmail.com>

ADD vnc-passwd /root/
ADD vncserver /usr/bin/
ADD noVNC /root/
ADD startup.sh /usr/local/bin/

RUN apt-get update && \
	apt-get install -y --no-install-recommends ubuntu-desktop && \
	apt-get install -y gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal vnc4server && \
	apt-get autoclean && \
	apt-get autoremove && \
	rm -rf /var/lib/apt/lists/* && \
	/usr/bin/vncpasswd < /root/vnc-passwd && \
	rm /root/vnc-passwd

EXPOSE 6080
CMD ['startup.sh']
