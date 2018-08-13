FROM python:3

RUN mkdir /root/crawler
COPY crawler /root/crawler
RUN chmod u+x /root/crawler/gen_json.sh

COPY install.sh /root
COPY execute.sh /root
RUN chmod u+x /root/execute.sh
RUN sh /root/install.sh
WORKDIR /root
CMD ./execute.sh
