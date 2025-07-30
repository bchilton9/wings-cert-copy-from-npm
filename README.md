![License](https://img.shields.io/github/license/bchilton9/wings-cert-copy-from-npm)
![Last Commit](https://img.shields.io/github/last-commit/bchilton9/wings-cert-copy-from-npm)
![Shell Script](https://img.shields.io/badge/made%20with-bash-1f425f.svg)

# update-wings-certs.sh 🔐

A simple script to keep Pterodactyl Wings’ SSL certificates updated from Nginx Proxy Manager.

___

## ❓ Why this is needed:

Nginx Proxy Manager (NPM) creates symlinks in /etc/letsencrypt/live/ that point to versioned files in /etc/letsencrypt/archive/.
Pterodactyl Wings does not properly follow these symlinks, which can cause TLS connection failures after cert renewals.
This script copies the actual .pem files (not symlinks), ensuring Wings always has a valid and direct copy.

___

## ⚙️ How it works:
	📤 Copies fullchain.pem and privkey.pem from NPM’s certificate directory
	📥 Places them into Wings’ cert directory (like /etc/pterodactyl/certs)
	🔄 Restarts Wings so it picks up the new certificates

___

## 🗂️ Script Paths

Make sure to set the paths in the script:

CERT_SRC=“/path/to/your/npm/certs”

CERT_DST=“/etc/pterodactyl/certs/“

___

## 📁 Required Wings config paths

Wings must be configured to use the following paths (or modify them in the script):

SSL Certificate:
/etc/pterodactyl/certs/fullchain.pem

SSL Private Key:
/etc/pterodactyl/certs/privkey.pem

___

## 👩‍💻 Manual usage:

Run this as root:
```
sudo ./update-wings-certs.sh
```

___

## 🕒 Automatic usage with cron (optional)

Edit root’s crontab:
```
sudo crontab -e
```
Add this line to run it every day at 3:15 AM:
```
15 3 * * * /root/update-wings-certs.sh
```

___

## 📜 License

MIT – free to use and modify. Not affiliated with Pterodactyl Panel/Wings.

___

## 🛠 Made By

[ChilSoft.com](https://chilsoft.com) — fueled by caffeine and questionable commits.

___

## ⚠️ Disclaimer

This site and its contents are provided for informational and educational purposes only.

Use any code, tools, or instructions at your own risk.  
We are **not responsible** for any damage to your device, data loss, or unintended consequences.

Always proceed with care — and make backups.

© **2025 ChilSoft**. All rights reserved.
