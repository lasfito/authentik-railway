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

.pf-c-list pf-m-inline  {
display:none
}


.pf-c-login__main-header pf-c-brand ak-brand { 
    display: none;
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


.pf-c-title {
    visibility: hidden;
}

.pf-c-title:after {
    content:'goodbye'; 
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
EOF


ak server
