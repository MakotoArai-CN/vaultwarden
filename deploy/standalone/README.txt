Vaultwarden standalone (no Docker)
=================================

1. Unzip this folder anywhere.
2. Run:
     Windows:  start.ps1  or  start.bat
     Linux/macOS:  chmod +x start.sh vaultwarden && ./start.sh
3. Open http://127.0.0.1:8000

localhost is a secure context, so HTTP is enough for the Web Vault crypto API.
For public access, put HTTPS (Caddy/nginx) in front and set DOMAIN in .env.

Data (SQLite, attachments, RSA keys) is stored in ./data/

Admin token:
  ./vaultwarden hash
  then set ADMIN_TOKEN in .env and restart.

Bitwarden official clients (point them at this server):
  https://bitwarden.com/download/
