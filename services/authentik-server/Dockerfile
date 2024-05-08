FROM ghcr.io/goauthentik/server:latest

ADD services/authentik-server/prerun.sh /tmp/prerun.sh


RUN /bin/sh /tmp/prerun.sh

CMD [ "server" ]
