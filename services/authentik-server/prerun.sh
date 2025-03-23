#!/bin/sh

DEF_ACCENT="#f4810b"
DEF_LINK="#f4810b"
ACCENT="${OVERRIDE_ACCENT_COLOUR:-${DEF_ACCENT}}"
LINK="${OVERRIDE_LINK_COLOUR:-${DEF_LINK}}"

mkdir -p /web/dist
chmod 777 /web/dist

touch  /web/dist/custom.css 
chmod 666 /web/dist/custom.css

