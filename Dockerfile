FROM ubuntu:precise
MAINTAINER Peter Morgan <peter.james.morgan@gmail.com>

RUN apt-get update && apt-get install -y \
    wget

RUN wget https://packagecloud.io/install/repositories/shortishly/lighthouse/script.deb.sh
RUN chmod u+x script.deb.sh
RUN ./script.deb.sh

RUN apt-get update && apt-get install -y \
    lighthouse

ENTRYPOINT /opt/lighthouse/bin/lighthouse start
EXPOSE 8181
