# DOSBOX IN A CONTAINER WITH VNC CLIENT

So much fun!

1. Create a folder.
1. Place a copy of your game in the folder. I am using the shareware version of Commander Keen here.
1. In that folder, create a file called `dockerfile`, paste in the following code.

  ````

FROM ubuntu:22.04
ENV USER=root
ENV PASSWORD=password1
ENV DEBIAN_FRONTEND=noninteractive 
ENV DEBCONF_NONINTERACTIVE_SEEN=true
COPY keen /dos/keen
RUN apt-get update && \
	echo "tzdata tzdata/Areas select America" > ~/tx.txt && \
	echo "tzdata tzdata/Zones/America select New York" >> ~/tx.txt && \
	debconf-set-selections ~/tx.txt && \
	apt-get install -y tightvncserver ratpoison dosbox novnc websockify && \
	mkdir ~/.vnc/ && \
	mkdir ~/.dosbox && \
	echo $PASSWORD | vncpasswd -f > ~/.vnc/passwd && \
	chmod 0600 ~/.vnc/passwd && \
	echo "set border 0" > ~/.ratpoisonrc  && \
	echo "exec dosbox -conf ~/.dosbox/dosbox.conf -fullscreen -c 'MOUNT C: /dos' -c 'C:' -c 'cd keen' -c 'keen1'">> ~/.ratpoisonrc && \
	export DOSCONF=$(dosbox -printconf) && \
	cp $DOSCONF ~/.dosbox/dosbox.conf && \
	sed -i 's/usescancodes=true/usescancodes=false/' ~/.dosbox/dosbox.conf && \
	openssl req -x509 -nodes -newkey rsa:2048 -keyout ~/novnc.pem -out ~/novnc.pem -days 3650 -subj "/C=US/ST=NY/L=NY/O=NY/OU=NY/CN=NY emailAddress=email@example.com"
EXPOSE 80
CMD vncserver && websockify -D --web=/usr/share/novnc/ --cert=~/novnc.pem 80 localhost:5901 && tail -f /dev/null

````

1. Build the image. I’m assuming you already have Docker installed and are familiar with it to some extent. CD to the directory in a console and run the command…
  ````
  docker build -t mydosbox .
  ````
1. Run the image.
  ```` 
   docker run -p 6080:80 mydosbox
   ````
   
1. Open a browser and point it to http://localhost:6080/vnc.html
1. You should see a prompt for the password. Type it in, and you should be able to connect to your container with DosBox running.
1. Once your image is built, you can push it to your image repository with docker push, but you’ll need to tag it appropriately.

