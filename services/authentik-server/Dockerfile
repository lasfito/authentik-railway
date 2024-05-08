FROM ghcr.io/goauthentik/server:latest

USER root

ADD prerun.sh /prerun.sh
ADD entrypoint.sh /entrypoint.sh

RUN /bin/sh /prerun.sh

USER 1000

ENTRYPOINT [ "dumb-init", "--", "/bin/sh" ]

CMD [ "entrypoint.sh" ]
