FROM phusion/baseimage:0.9.15

ADD SpeedTest /usr/local/bin
RUN chmod +x /usr/local/bin/SpeedTest
RUN printf "\nSpeed Test $(date +'%D %T')\n"
