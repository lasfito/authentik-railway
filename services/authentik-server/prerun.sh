#!/bin/sh

DEF_ACCENT="#FF0090"
DEF_LINK="#B900FF"
ACCENT="${OVERRIDE_ACCENT_COLOUR:-${DEF_ACCENT}}"
LINK="${OVERRIDE_LINK_COLOUR:-${DEF_LINK}}"

mkdir -p /web/dist
chmod 777 /web/dist

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
EOF

chmod 644 /web/dist/custom.css

