FROM phusion/baseimage:0.9.15

ADD install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh
RUN /tmp/install.sh
RUN rm /tmp/install.sh

ADD log_date.sh /tmp/log_date.sh
RUN chmod +x /tmp/log_date.sh
RUN /tmp/log_date.sh

ENTRYPOINT ["/usr/local/bin/SpeedTest","--test-server", "ohcn.OST.myvzw.com:8080"]
CMD ["--output", "text"]
