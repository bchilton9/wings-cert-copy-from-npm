#!/bin/bash

CERT_SRC="/srv/dev-disk-by-uuid/AppData/Nginx-Proxy/letsencrypt/live/npm-10"
CERT_DST="/etc/pterodactyl/certs"

mkdir -p "$CERT_DST"

cp "$CERT_SRC/fullchain.pem" "$CERT_DST/fullchain.pem"
cp "$CERT_SRC/privkey.pem" "$CERT_DST/privkey.pem"

chmod 600 "$CERT_DST"/*.pem
chown 0:0 "$CERT_DST"/*.pem

# Optional: restart Wings
systemctl restart wings
