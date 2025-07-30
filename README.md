# update-wings-certs.sh

A simple script to automatically update the SSL certificate used by the Pterodactyl Wings daemon based on the latest Nginx Proxy Manager (NPM) Let’s Encrypt certificates.

___

## Purpose

This script ensures that the Wings daemon uses the most up-to-date SSL certificates issued by Nginx Proxy Manager for secure panel-to-node communication over HTTPS.

___

## How it works:
	•	Copies fullchain.pem and privkey.pem from NPM’s certificate directory
	•	Places them into Wings’ cert directory (like /etc/pterodactyl/certs)
	•	Restarts Wings so it picks up the new certificates

___

## Script Paths

Make sure to set the paths in the script:

CERT_SRC=“/path/to/your/npm/certs”
CERT_DST=“/path/to/store/your/wings/certs”

___

## Manual usage:

Run this as root:
```
sudo ./update-wings-certs.sh
```

___

## Automatic usage with cron:

Edit root’s crontab:
```
sudo crontab -e
```
Add this line to run it every day at 3:15 AM:
```
15 3 * * * /root/update-wings-certs.sh
```

___

## Wings must be configured to use the following paths or the paths in the script changed:

SSL Certificate:
/etc/pterodactyl/certs/fullchain.pem

SSL Private Key:
/etc/pterodactyl/certs/privkey.pem

___

## 📜 License

MIT – free to use and modify. Not affiliated with Organizr, Theme Park, or any app mentioned.

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
