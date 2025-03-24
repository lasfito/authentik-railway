#!/bin/sh

DEF_ACCENT="#f4810b"
DEF_LINK="#f4810b"
ACCENT="${OVERRIDE_ACCENT_COLOUR:-${DEF_ACCENT}}"
LINK="${OVERRIDE_LINK_COLOUR:-${DEF_LINK}}"


cat > /web/dist/custom.css <<EOF
:root {
    --ak-accent: ${ACCENT};
    --ak-dark-foreground-link: ${LINK};
    --pf-c-nav__link--m-current--after--BorderColor: var(--ak-accent);
    --pf-c-button--m-primary--BackgroundColor: var(--ak-dark-foreground-link);
}

.ak-login-container .ak-brand img {
    max-width: 100%;
}

* {
    color: black !important;
}

.pf-c-login__footer .pf-c-list.pf-m-inline  {
display:none
}


.pf-c-login__main-header.pf-c-brand.ak-brand img { 
    display: none !important;
}

.pf-c-background-image  {
    display: none;
}


.pf-c-page__drawer {
    background: white;
}

.pf-c-login__main {
    background: white;
}


.pf-c-login__main-header {
    position: relative;
}

.pf-c-login__main-header .pf-c-title {
    visibility: hidden;
    position: relative;
}

.pf-c-login__main-header .pf-c-title:after {
    content:'ログイン'; 
    visibility: visible;
    display: block;
    position: absolute;
    top:0;
    left:0;
}

.pf-c-form-control {
    background: white;
    color: black;
}

img.pf-c-brand {
    content: url("https://play-lh.googleusercontent.com/2i_54HKrZmwFonPZLI5PRb2q6XG0KFh5cGYUnQNEFhWObg3j0ha5rI1eZxszmBIywgE") !important;
}
EOF


ak server
