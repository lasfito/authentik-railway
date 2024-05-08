FROM ghcr.io/goauthentik/server:latest

ADD prerun.sh /tmp/prerun.sh


RUN /bin/sh /tmp/prerun.sh

CMD [ "server" ]
