FROM ghcr.io/goauthentik/server:latest

USER root

ADD services/authentik-server/prerun.sh /tmp/prerun.sh

RUN /bin/sh /tmp/prerun.sh

USER 1000

CMD [ "server" ]
