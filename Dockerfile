FROM ubuntu:16.04

RUN apt-get update
RUN apt install xfce4 xfce4-goodies tightvncserver
RUN mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
COPY xstartup ~/.vnc/xstartup
RUN chmod +x ~/.vnc/xstartup
COPY passwd ~/.vnc/passwd

RUN mkdir ~/downloadedfiles
COPY ibgateway-stable-standalone-linux-x64.sh ~/downloadedfiles
RUN chmod +x ~/downloadedfiles/ibgateway-stable-standalone-linux-x64.sh
COPY tws-latest-linux-x64.sh ~/downloadedfiles
RUN chmod +x ~/downloadedfiles/tws-latest-linux-x64.sh
RUN ~/downloadedfiles/ibgateway-stable-standalone-linux-x64.sh
RUN ~/downloadedfiles/tws-latest-linux-x64.sh


